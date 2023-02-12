// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userDrainNumber;
    if (value != null) {
      result
        ..add('user_drain_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.surgeon;
    if (value != null) {
      result
        ..add('surgeon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.surgeryDate;
    if (value != null) {
      result
        ..add('surgery_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.agreedToTerms;
    if (value != null) {
      result
        ..add('agreed_to_terms')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.stanfordAffiliated;
    if (value != null) {
      result
        ..add('stanford_affiliated')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.drainOutput;
    if (value != null) {
      result
        ..add('drain_output')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DrainOutputStruct)])));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_drain_number':
          result.userDrainNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'surgeon':
          result.surgeon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'surgery_date':
          result.surgeryDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'agreed_to_terms':
          result.agreedToTerms = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'stanford_affiliated':
          result.stanfordAffiliated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'drain_output':
          result.drainOutput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DrainOutputStruct)]))!
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final int? userDrainNumber;
  @override
  final String? surgeon;
  @override
  final DateTime? surgeryDate;
  @override
  final bool? agreedToTerms;
  @override
  final bool? stanfordAffiliated;
  @override
  final BuiltList<DrainOutputStruct>? drainOutput;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.userDrainNumber,
      this.surgeon,
      this.surgeryDate,
      this.agreedToTerms,
      this.stanfordAffiliated,
      this.drainOutput,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        userDrainNumber == other.userDrainNumber &&
        surgeon == other.surgeon &&
        surgeryDate == other.surgeryDate &&
        agreedToTerms == other.agreedToTerms &&
        stanfordAffiliated == other.stanfordAffiliated &&
        drainOutput == other.drainOutput &&
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
                                        $jc(
                                            $jc(
                                                $jc($jc(0, email.hashCode),
                                                    displayName.hashCode),
                                                photoUrl.hashCode),
                                            uid.hashCode),
                                        createdTime.hashCode),
                                    phoneNumber.hashCode),
                                userDrainNumber.hashCode),
                            surgeon.hashCode),
                        surgeryDate.hashCode),
                    agreedToTerms.hashCode),
                stanfordAffiliated.hashCode),
            drainOutput.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('userDrainNumber', userDrainNumber)
          ..add('surgeon', surgeon)
          ..add('surgeryDate', surgeryDate)
          ..add('agreedToTerms', agreedToTerms)
          ..add('stanfordAffiliated', stanfordAffiliated)
          ..add('drainOutput', drainOutput)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  int? _userDrainNumber;
  int? get userDrainNumber => _$this._userDrainNumber;
  set userDrainNumber(int? userDrainNumber) =>
      _$this._userDrainNumber = userDrainNumber;

  String? _surgeon;
  String? get surgeon => _$this._surgeon;
  set surgeon(String? surgeon) => _$this._surgeon = surgeon;

  DateTime? _surgeryDate;
  DateTime? get surgeryDate => _$this._surgeryDate;
  set surgeryDate(DateTime? surgeryDate) => _$this._surgeryDate = surgeryDate;

  bool? _agreedToTerms;
  bool? get agreedToTerms => _$this._agreedToTerms;
  set agreedToTerms(bool? agreedToTerms) =>
      _$this._agreedToTerms = agreedToTerms;

  bool? _stanfordAffiliated;
  bool? get stanfordAffiliated => _$this._stanfordAffiliated;
  set stanfordAffiliated(bool? stanfordAffiliated) =>
      _$this._stanfordAffiliated = stanfordAffiliated;

  ListBuilder<DrainOutputStruct>? _drainOutput;
  ListBuilder<DrainOutputStruct> get drainOutput =>
      _$this._drainOutput ??= new ListBuilder<DrainOutputStruct>();
  set drainOutput(ListBuilder<DrainOutputStruct>? drainOutput) =>
      _$this._drainOutput = drainOutput;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _userDrainNumber = $v.userDrainNumber;
      _surgeon = $v.surgeon;
      _surgeryDate = $v.surgeryDate;
      _agreedToTerms = $v.agreedToTerms;
      _stanfordAffiliated = $v.stanfordAffiliated;
      _drainOutput = $v.drainOutput?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              userDrainNumber: userDrainNumber,
              surgeon: surgeon,
              surgeryDate: surgeryDate,
              agreedToTerms: agreedToTerms,
              stanfordAffiliated: stanfordAffiliated,
              drainOutput: _drainOutput?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'drainOutput';
        _drainOutput?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
