import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'drain_entry_struct.g.dart';

abstract class DrainEntryStruct
    implements Built<DrainEntryStruct, DrainEntryStructBuilder> {
  static Serializer<DrainEntryStruct> get serializer =>
      _$drainEntryStructSerializer;

  int? get output;

  String? get date;

  int? get id;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(DrainEntryStructBuilder builder) => builder
    ..output = 0
    ..date = ''
    ..id = 0
    ..firestoreUtilData = FirestoreUtilData();

  DrainEntryStruct._();
  factory DrainEntryStruct([void Function(DrainEntryStructBuilder) updates]) =
      _$DrainEntryStruct;
}

DrainEntryStruct createDrainEntryStruct({
  int? output,
  String? date,
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DrainEntryStruct(
      (d) => d
        ..output = output
        ..date = date
        ..id = id
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

DrainEntryStruct? updateDrainEntryStruct(
  DrainEntryStruct? drainEntry, {
  bool clearUnsetFields = true,
}) =>
    drainEntry != null
        ? (drainEntry.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addDrainEntryStructData(
  Map<String, dynamic> firestoreData,
  DrainEntryStruct? drainEntry,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (drainEntry == null) {
    return;
  }
  if (drainEntry.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && drainEntry.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final drainEntryData = getDrainEntryFirestoreData(drainEntry, forFieldValue);
  final nestedData = drainEntryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = drainEntry.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getDrainEntryFirestoreData(
  DrainEntryStruct? drainEntry, [
  bool forFieldValue = false,
]) {
  if (drainEntry == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(DrainEntryStruct.serializer, drainEntry);

  // Add any Firestore field values
  drainEntry.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDrainEntryListFirestoreData(
  List<DrainEntryStruct>? drainEntrys,
) =>
    drainEntrys?.map((d) => getDrainEntryFirestoreData(d, true)).toList() ?? [];
