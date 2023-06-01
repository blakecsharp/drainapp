// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drain_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DrainStruct> _$drainStructSerializer = new _$DrainStructSerializer();

class _$DrainStructSerializer implements StructuredSerializer<DrainStruct> {
  @override
  final Iterable<Type> types = const [DrainStruct, _$DrainStruct];
  @override
  final String wireName = 'DrainStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, DrainStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DrainStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DrainStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$DrainStruct extends DrainStruct {
  @override
  final bool? active;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$DrainStruct([void Function(DrainStructBuilder)? updates]) =>
      (new DrainStructBuilder()..update(updates))._build();

  _$DrainStruct._(
      {this.active, this.id, this.name, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'DrainStruct', 'firestoreUtilData');
  }

  @override
  DrainStruct rebuild(void Function(DrainStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DrainStructBuilder toBuilder() => new DrainStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DrainStruct &&
        active == other.active &&
        id == other.id &&
        name == other.name &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DrainStruct')
          ..add('active', active)
          ..add('id', id)
          ..add('name', name)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class DrainStructBuilder implements Builder<DrainStruct, DrainStructBuilder> {
  _$DrainStruct? _$v;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  DrainStructBuilder() {
    DrainStruct._initializeBuilder(this);
  }

  DrainStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active;
      _id = $v.id;
      _name = $v.name;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DrainStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DrainStruct;
  }

  @override
  void update(void Function(DrainStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DrainStruct build() => _build();

  _$DrainStruct _build() {
    final _$result = _$v ??
        new _$DrainStruct._(
            active: active,
            id: id,
            name: name,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'DrainStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
