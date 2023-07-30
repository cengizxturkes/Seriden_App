// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adv_prop_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvPropData _$AdvPropDataFromJson(Map<String, dynamic> json) => AdvPropData(
      id: json['id'] as String,
      catId: json['cat_id'] as String,
      description: json['value'] as String,
    );

Map<String, dynamic> _$AdvPropDataToJson(AdvPropData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cat_id': instance.catId,
      'value': instance.description,
    };
