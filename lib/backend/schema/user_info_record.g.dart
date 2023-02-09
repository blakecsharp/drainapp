// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserInfoRecord> _$userInfoRecordSerializer =
    new _$UserInfoRecordSerializer();

class _$UserInfoRecordSerializer
    implements StructuredSerializer<UserInfoRecord> {
  @override
  final Iterable<Type> types = const [UserInfoRecord, _$UserInfoRecord];
  @override
  final String wireName = 'UserInfoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserInfoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.surgeon;
    if (value != null) {
      result
        ..add('surgeon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.drainnumber;
    if (value != null) {
      result
        ..add('drainnumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.surgerydate;
    if (value != null) {
      result
        ..add('surgerydate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.draintoutput1;
    if (value != null) {
      result
        ..add('draintoutput1')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.drainoutput2;
    if (value != null) {
      result
        ..add('drainoutput2')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.drainoutput3;
    if (value != null) {
      result
        ..add('drainoutput3')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.drainoutput4;
    if (value != null) {
      result
        ..add('drainoutput4')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.drainoutput5;
    if (value != null) {
      result
        ..add('drainoutput5')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.drainoutput6;
    if (value != null) {
      result
        ..add('drainoutput6')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
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
  UserInfoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserInfoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'surgeon':
          result.surgeon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'drainnumber':
          result.drainnumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'surgerydate':
          result.surgerydate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'draintoutput1':
          result.draintoutput1.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'drainoutput2':
          result.drainoutput2.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'drainoutput3':
          result.drainoutput3.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'drainoutput4':
          result.drainoutput4.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'drainoutput5':
          result.drainoutput5.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'drainoutput6':
          result.drainoutput6.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
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

class _$UserInfoRecord extends UserInfoRecord {
  @override
  final String? userid;
  @override
  final String? surgeon;
  @override
  final int? drainnumber;
  @override
  final DateTime? surgerydate;
  @override
  final BuiltList<double>? draintoutput1;
  @override
  final BuiltList<double>? drainoutput2;
  @override
  final BuiltList<double>? drainoutput3;
  @override
  final BuiltList<double>? drainoutput4;
  @override
  final BuiltList<double>? drainoutput5;
  @override
  final BuiltList<double>? drainoutput6;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserInfoRecord([void Function(UserInfoRecordBuilder)? updates]) =>
      (new UserInfoRecordBuilder()..update(updates))._build();

  _$UserInfoRecord._(
      {this.userid,
      this.surgeon,
      this.drainnumber,
      this.surgerydate,
      this.draintoutput1,
      this.drainoutput2,
      this.drainoutput3,
      this.drainoutput4,
      this.drainoutput5,
      this.drainoutput6,
      this.ffRef})
      : super._();

  @override
  UserInfoRecord rebuild(void Function(UserInfoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoRecordBuilder toBuilder() =>
      new UserInfoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoRecord &&
        userid == other.userid &&
        surgeon == other.surgeon &&
        drainnumber == other.drainnumber &&
        surgerydate == other.surgerydate &&
        draintoutput1 == other.draintoutput1 &&
        drainoutput2 == other.drainoutput2 &&
        drainoutput3 == other.drainoutput3 &&
        drainoutput4 == other.drainoutput4 &&
        drainoutput5 == other.drainoutput5 &&
        drainoutput6 == other.drainoutput6 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, userid.hashCode),
                                            surgeon.hashCode),
                                        drainnumber.hashCode),
                                    surgerydate.hashCode),
                                draintoutput1.hashCode),
                            drainoutput2.hashCode),
                        drainoutput3.hashCode),
                    drainoutput4.hashCode),
                drainoutput5.hashCode),
            drainoutput6.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserInfoRecord')
          ..add('userid', userid)
          ..add('surgeon', surgeon)
          ..add('drainnumber', drainnumber)
          ..add('surgerydate', surgerydate)
          ..add('draintoutput1', draintoutput1)
          ..add('drainoutput2', drainoutput2)
          ..add('drainoutput3', drainoutput3)
          ..add('drainoutput4', drainoutput4)
          ..add('drainoutput5', drainoutput5)
          ..add('drainoutput6', drainoutput6)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserInfoRecordBuilder
    implements Builder<UserInfoRecord, UserInfoRecordBuilder> {
  _$UserInfoRecord? _$v;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  String? _surgeon;
  String? get surgeon => _$this._surgeon;
  set surgeon(String? surgeon) => _$this._surgeon = surgeon;

  int? _drainnumber;
  int? get drainnumber => _$this._drainnumber;
  set drainnumber(int? drainnumber) => _$this._drainnumber = drainnumber;

  DateTime? _surgerydate;
  DateTime? get surgerydate => _$this._surgerydate;
  set surgerydate(DateTime? surgerydate) => _$this._surgerydate = surgerydate;

  ListBuilder<double>? _draintoutput1;
  ListBuilder<double> get draintoutput1 =>
      _$this._draintoutput1 ??= new ListBuilder<double>();
  set draintoutput1(ListBuilder<double>? draintoutput1) =>
      _$this._draintoutput1 = draintoutput1;

  ListBuilder<double>? _drainoutput2;
  ListBuilder<double> get drainoutput2 =>
      _$this._drainoutput2 ??= new ListBuilder<double>();
  set drainoutput2(ListBuilder<double>? drainoutput2) =>
      _$this._drainoutput2 = drainoutput2;

  ListBuilder<double>? _drainoutput3;
  ListBuilder<double> get drainoutput3 =>
      _$this._drainoutput3 ??= new ListBuilder<double>();
  set drainoutput3(ListBuilder<double>? drainoutput3) =>
      _$this._drainoutput3 = drainoutput3;

  ListBuilder<double>? _drainoutput4;
  ListBuilder<double> get drainoutput4 =>
      _$this._drainoutput4 ??= new ListBuilder<double>();
  set drainoutput4(ListBuilder<double>? drainoutput4) =>
      _$this._drainoutput4 = drainoutput4;

  ListBuilder<double>? _drainoutput5;
  ListBuilder<double> get drainoutput5 =>
      _$this._drainoutput5 ??= new ListBuilder<double>();
  set drainoutput5(ListBuilder<double>? drainoutput5) =>
      _$this._drainoutput5 = drainoutput5;

  ListBuilder<double>? _drainoutput6;
  ListBuilder<double> get drainoutput6 =>
      _$this._drainoutput6 ??= new ListBuilder<double>();
  set drainoutput6(ListBuilder<double>? drainoutput6) =>
      _$this._drainoutput6 = drainoutput6;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserInfoRecordBuilder() {
    UserInfoRecord._initializeBuilder(this);
  }

  UserInfoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userid = $v.userid;
      _surgeon = $v.surgeon;
      _drainnumber = $v.drainnumber;
      _surgerydate = $v.surgerydate;
      _draintoutput1 = $v.draintoutput1?.toBuilder();
      _drainoutput2 = $v.drainoutput2?.toBuilder();
      _drainoutput3 = $v.drainoutput3?.toBuilder();
      _drainoutput4 = $v.drainoutput4?.toBuilder();
      _drainoutput5 = $v.drainoutput5?.toBuilder();
      _drainoutput6 = $v.drainoutput6?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInfoRecord;
  }

  @override
  void update(void Function(UserInfoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfoRecord build() => _build();

  _$UserInfoRecord _build() {
    _$UserInfoRecord _$result;
    try {
      _$result = _$v ??
          new _$UserInfoRecord._(
              userid: userid,
              surgeon: surgeon,
              drainnumber: drainnumber,
              surgerydate: surgerydate,
              draintoutput1: _draintoutput1?.build(),
              drainoutput2: _drainoutput2?.build(),
              drainoutput3: _drainoutput3?.build(),
              drainoutput4: _drainoutput4?.build(),
              drainoutput5: _drainoutput5?.build(),
              drainoutput6: _drainoutput6?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'draintoutput1';
        _draintoutput1?.build();
        _$failedField = 'drainoutput2';
        _drainoutput2?.build();
        _$failedField = 'drainoutput3';
        _drainoutput3?.build();
        _$failedField = 'drainoutput4';
        _drainoutput4?.build();
        _$failedField = 'drainoutput5';
        _drainoutput5?.build();
        _$failedField = 'drainoutput6';
        _drainoutput6?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserInfoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
