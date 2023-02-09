import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'entries_record.g.dart';

abstract class EntriesRecord
    implements Built<EntriesRecord, EntriesRecordBuilder> {
  static Serializer<EntriesRecord> get serializer => _$entriesRecordSerializer;

  DateTime? get time;

  BuiltList<double>? get drainoutput;

  String? get entryid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EntriesRecordBuilder builder) => builder
    ..drainoutput = ListBuilder()
    ..entryid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('entries');

  static Stream<EntriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EntriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EntriesRecord._();
  factory EntriesRecord([void Function(EntriesRecordBuilder) updates]) =
      _$EntriesRecord;

  static EntriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEntriesRecordData({
  DateTime? time,
  String? entryid,
}) {
  final firestoreData = serializers.toFirestore(
    EntriesRecord.serializer,
    EntriesRecord(
      (e) => e
        ..time = time
        ..drainoutput = null
        ..entryid = entryid,
    ),
  );

  return firestoreData;
}
