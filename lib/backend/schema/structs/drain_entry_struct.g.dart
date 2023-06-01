// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drain_entry_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DrainEntryStruct> _$drainEntryStructSerializer =
    new _$DrainEntryStructSerializer();

class _$DrainEntryStructSerializer
    implements StructuredSerializer<DrainEntryStruct> {
  @override
  final Iterable<Type> types = const [DrainEntryStruct, _$DrainEntryStruct];
  @override
  final String wireName = 'DrainEntryStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, DrainEntryStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.output;
    if (value != null) {
      result
        ..add('output')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  DrainEntryStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DrainEntryStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'output':
          result.output = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$DrainEntryStruct extends DrainEntryStruct {
  @override
  final int? output;
  @override
  final String? date;
  @override
  final int? id;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$DrainEntryStruct(
          [void Function(DrainEntryStructBuilder)? updates]) =>
      (new DrainEntryStructBuilder()..update(updates))._build();

  _$DrainEntryStruct._(
      {this.output, this.date, this.id, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'DrainEntryStruct', 'firestoreUtilData');
  }

  @override
  DrainEntryStruct rebuild(void Function(DrainEntryStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DrainEntryStructBuilder toBuilder() =>
      new DrainEntryStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DrainEntryStruct &&
        output == other.output &&
        date == other.date &&
        id == other.id &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DrainEntryStruct')
          ..add('output', output)
          ..add('date', date)
          ..add('id', id)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class DrainEntryStructBuilder
    implements Builder<DrainEntryStruct, DrainEntryStructBuilder> {
  _$DrainEntryStruct? _$v;

  int? _output;
  int? get output => _$this._output;
  set output(int? output) => _$this._output = output;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  DrainEntryStructBuilder() {
    DrainEntryStruct._initializeBuilder(this);
  }

  DrainEntryStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _output = $v.output;
      _date = $v.date;
      _id = $v.id;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DrainEntryStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DrainEntryStruct;
  }

  @override
  void update(void Function(DrainEntryStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DrainEntryStruct build() => _build();

  _$DrainEntryStruct _build() {
    final _$result = _$v ??
        new _$DrainEntryStruct._(
            output: output,
            date: date,
            id: id,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'DrainEntryStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
