import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mood_content_record.g.dart';

abstract class MoodContentRecord
    implements Built<MoodContentRecord, MoodContentRecordBuilder> {
  static Serializer<MoodContentRecord> get serializer =>
      _$moodContentRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'content_type')
  String get contentType;

  @nullable
  @BuiltValueField(wireName: 'media_type')
  String get mediaType;

  @nullable
  String get mood;

  @nullable
  String get name;

  @nullable
  String get url;

  @nullable
  int get rank;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MoodContentRecordBuilder builder) => builder
    ..contentType = ''
    ..mediaType = ''
    ..mood = ''
    ..name = ''
    ..url = ''
    ..rank = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mood_content');

  static Stream<MoodContentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MoodContentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MoodContentRecord._();
  factory MoodContentRecord([void Function(MoodContentRecordBuilder) updates]) =
      _$MoodContentRecord;

  static MoodContentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMoodContentRecordData({
  String contentType,
  String mediaType,
  String mood,
  String name,
  String url,
  int rank,
}) =>
    serializers.toFirestore(
        MoodContentRecord.serializer,
        MoodContentRecord((m) => m
          ..contentType = contentType
          ..mediaType = mediaType
          ..mood = mood
          ..name = name
          ..url = url
          ..rank = rank));
