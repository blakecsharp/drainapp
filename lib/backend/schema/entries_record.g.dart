// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entries_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntriesRecord> _$entriesRecordSerializer =
    new _$EntriesRecordSerializer();

class _$EntriesRecordSerializer implements StructuredSerializer<EntriesRecord> {
  @override
  final Iterable<Type> types = const [EntriesRecord, _$EntriesRecord];
  @override
  final String wireName = 'EntriesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EntriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.drainoutput;
    if (value != null) {
      result
        ..add('drainoutput')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.entryid;
    if (value != null) {
      result
        ..add('entryid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EntriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'drainoutput':
          result.drainoutput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'entryid':
          result.entryid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$EntriesRecord extends EntriesRecord {
  @override
  final DateTime? time;
  @override
  final BuiltList<double>? drainoutput;
  @override
  final String? entryid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EntriesRecord([void Function(EntriesRecordBuilder)? updates]) =>
      (new EntriesRecordBuilder()..update(updates))._build();

  _$EntriesRecord._({this.time, this.drainoutput, this.entryid, this.ffRef})
      : super._();

  @override
  EntriesRecord rebuild(void Function(EntriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntriesRecordBuilder toBuilder() => new EntriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntriesRecord &&
        time == other.time &&
        drainoutput == other.drainoutput &&
        entryid == other.entryid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, time.hashCode), drainoutput.hashCode), entryid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntriesRecord')
          ..add('time', time)
          ..add('drainoutput', drainoutput)
          ..add('entryid', entryid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EntriesRecordBuilder
    implements Builder<EntriesRecord, EntriesRecordBuilder> {
  _$EntriesRecord? _$v;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  ListBuilder<double>? _drainoutput;
  ListBuilder<double> get drainoutput =>
      _$this._drainoutput ??= new ListBuilder<double>();
  set drainoutput(ListBuilder<double>? drainoutput) =>
      _$this._drainoutput = drainoutput;

  String? _entryid;
  String? get entryid => _$this._entryid;
  set entryid(String? entryid) => _$this._entryid = entryid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EntriesRecordBuilder() {
    EntriesRecord._initializeBuilder(this);
  }

  EntriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _drainoutput = $v.drainoutput?.toBuilder();
      _entryid = $v.entryid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntriesRecord;
  }

  @override
  void update(void Function(EntriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntriesRecord build() => _build();

  _$EntriesRecord _build() {
    _$EntriesRecord _$result;
    try {
      _$result = _$v ??
          new _$EntriesRecord._(
              time: time,
              drainoutput: _drainoutput?.build(),
              entryid: entryid,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'drainoutput';
        _drainoutput?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EntriesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
