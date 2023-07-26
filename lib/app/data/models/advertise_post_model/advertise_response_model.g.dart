// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertise_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvertiseResponseModel _$AdvertiseResponseModelFromJson(
        Map<String, dynamic> json) =>
    AdvertiseResponseModel(
      status: json['status'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$AdvertiseResponseModelToJson(
        AdvertiseResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
