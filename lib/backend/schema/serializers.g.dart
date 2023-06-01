// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(DrainEntryStruct.serializer)
      ..add(DrainStruct.serializer)
      ..add(UsersRecord.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DrainStruct)]),
          () => new ListBuilder<DrainStruct>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DrainEntryStruct)]),
          () => new ListBuilder<DrainEntryStruct>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
