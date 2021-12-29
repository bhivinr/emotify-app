import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'moods_record.g.dart';

abstract class MoodsRecord implements Built<MoodsRecord, MoodsRecordBuilder> {
  static Serializer<MoodsRecord> get serializer => _$moodsRecordSerializer;

  @nullable
  String get label;

  @nullable
  String get name;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MoodsRecordBuilder builder) => builder
    ..label = ''
    ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('moods');

  static Stream<MoodsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MoodsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MoodsRecord._();
  factory MoodsRecord([void Function(MoodsRecordBuilder) updates]) =
      _$MoodsRecord;

  static MoodsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMoodsRecordData({
  String label,
  String name,
}) =>
    serializers.toFirestore(
        MoodsRecord.serializer,
        MoodsRecord((m) => m
          ..label = label
          ..name = name));
