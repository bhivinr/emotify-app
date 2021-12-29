import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feedback_record.g.dart';

abstract class FeedbackRecord
    implements Built<FeedbackRecord, FeedbackRecordBuilder> {
  static Serializer<FeedbackRecord> get serializer =>
      _$feedbackRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'content_type')
  String get contentType;

  @nullable
  @BuiltValueField(wireName: 'mood_after')
  String get moodAfter;

  @nullable
  @BuiltValueField(wireName: 'mood_before')
  String get moodBefore;

  @nullable
  @BuiltValueField(wireName: 'rating_after')
  int get ratingAfter;

  @nullable
  @BuiltValueField(wireName: 'rating_before')
  int get ratingBefore;

  @nullable
  DateTime get timestamp;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FeedbackRecordBuilder builder) => builder
    ..contentType = ''
    ..moodAfter = ''
    ..moodBefore = ''
    ..ratingAfter = 0
    ..ratingBefore = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FeedbackRecord._();
  factory FeedbackRecord([void Function(FeedbackRecordBuilder) updates]) =
      _$FeedbackRecord;

  static FeedbackRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFeedbackRecordData({
  String contentType,
  String moodAfter,
  String moodBefore,
  int ratingAfter,
  int ratingBefore,
  DateTime timestamp,
}) =>
    serializers.toFirestore(
        FeedbackRecord.serializer,
        FeedbackRecord((f) => f
          ..contentType = contentType
          ..moodAfter = moodAfter
          ..moodBefore = moodBefore
          ..ratingAfter = ratingAfter
          ..ratingBefore = ratingBefore
          ..timestamp = timestamp));
