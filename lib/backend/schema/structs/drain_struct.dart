import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'drain_struct.g.dart';

abstract class DrainStruct implements Built<DrainStruct, DrainStructBuilder> {
  static Serializer<DrainStruct> get serializer => _$drainStructSerializer;

  String? get id;

  BuiltList<DrainEntryStruct> get entries;

  bool? get active;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(DrainStructBuilder builder) => builder
    ..id = ''
    ..entries = ListBuilder()
    ..active = false
    ..firestoreUtilData = FirestoreUtilData();

  DrainStruct._();
  factory DrainStruct([void Function(DrainStructBuilder) updates]) =
      _$DrainStruct;
}

DrainStruct createDrainStruct({
  String? id,
  bool? active,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DrainStruct(
      (d) => d
        ..id = id
        ..entries = null
        ..active = active
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

DrainStruct? updateDrainStruct(
  DrainStruct? drain, {
  bool clearUnsetFields = true,
}) =>
    drain != null
        ? (drain.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addDrainStructData(
  Map<String, dynamic> firestoreData,
  DrainStruct? drain,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (drain == null) {
    return;
  }
  if (drain.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && drain.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final drainData = getDrainFirestoreData(drain, forFieldValue);
  final nestedData = drainData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = drain.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getDrainFirestoreData(
  DrainStruct? drain, [
  bool forFieldValue = false,
]) {
  if (drain == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(DrainStruct.serializer, drain);

  // Add any Firestore field values
  drain.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDrainListFirestoreData(
  List<DrainStruct>? drains,
) =>
    drains?.map((d) => getDrainFirestoreData(d, true)).toList() ?? [];
