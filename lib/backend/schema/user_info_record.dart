import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_info_record.g.dart';

abstract class UserInfoRecord
    implements Built<UserInfoRecord, UserInfoRecordBuilder> {
  static Serializer<UserInfoRecord> get serializer =>
      _$userInfoRecordSerializer;

  String? get userid;

  String? get surgeon;

  int? get drainnumber;

  DateTime? get surgerydate;

  BuiltList<double>? get draintoutput1;

  BuiltList<double>? get drainoutput2;

  BuiltList<double>? get drainoutput3;

  BuiltList<double>? get drainoutput4;

  BuiltList<double>? get drainoutput5;

  BuiltList<double>? get drainoutput6;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserInfoRecordBuilder builder) => builder
    ..userid = ''
    ..surgeon = ''
    ..drainnumber = 0
    ..draintoutput1 = ListBuilder()
    ..drainoutput2 = ListBuilder()
    ..drainoutput3 = ListBuilder()
    ..drainoutput4 = ListBuilder()
    ..drainoutput5 = ListBuilder()
    ..drainoutput6 = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_info');

  static Stream<UserInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserInfoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserInfoRecord._();
  factory UserInfoRecord([void Function(UserInfoRecordBuilder) updates]) =
      _$UserInfoRecord;

  static UserInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserInfoRecordData({
  String? userid,
  String? surgeon,
  int? drainnumber,
  DateTime? surgerydate,
}) {
  final firestoreData = serializers.toFirestore(
    UserInfoRecord.serializer,
    UserInfoRecord(
      (u) => u
        ..userid = userid
        ..surgeon = surgeon
        ..drainnumber = drainnumber
        ..surgerydate = surgerydate
        ..draintoutput1 = null
        ..drainoutput2 = null
        ..drainoutput3 = null
        ..drainoutput4 = null
        ..drainoutput5 = null
        ..drainoutput6 = null,
    ),
  );

  return firestoreData;
}
