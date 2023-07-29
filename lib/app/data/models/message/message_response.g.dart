// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MessageResponseAdapter extends TypeAdapter<MessageResponse> {
  @override
  final int typeId = 1;

  @override
  MessageResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MessageResponse(
      status: fields[1] as int,
      message: fields[3] as String,
      data: (fields[5] as List).cast<Message>(),
    );
  }

  @override
  void write(BinaryWriter writer, MessageResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.message)
      ..writeByte(5)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MessageAdapter extends TypeAdapter<Message> {
  @override
  final int typeId = 2;

  @override
  Message read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Message(
      id: fields[1] as String,
      fromUserId: fields[3] as String,
      toUserId: fields[5] as String,
      message: fields[7] as String,
      adId: fields[9] as String,
      seen: fields[11] as String,
      createdAt: fields[13] as String,
      title: fields[15] as String,
      nameSurname: fields[17] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Message obj) {
    writer
      ..writeByte(9)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.fromUserId)
      ..writeByte(5)
      ..write(obj.toUserId)
      ..writeByte(7)
      ..write(obj.message)
      ..writeByte(9)
      ..write(obj.adId)
      ..writeByte(11)
      ..write(obj.seen)
      ..writeByte(13)
      ..write(obj.createdAt)
      ..writeByte(15)
      ..write(obj.title)
      ..writeByte(17)
      ..write(obj.nameSurname);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) =>
    MessageResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessageResponseToJson(MessageResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as String,
      fromUserId: json['from_user_id'] as String,
      toUserId: json['to_user_id'] as String,
      message: json['message'] as String,
      adId: json['ad_id'] as String,
      seen: json['seen'] as String,
      createdAt: json['created_at'] as String,
      title: json['title'] as String,
      nameSurname: json['name_surname'] as String,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'from_user_id': instance.fromUserId,
      'to_user_id': instance.toUserId,
      'message': instance.message,
      'ad_id': instance.adId,
      'seen': instance.seen,
      'created_at': instance.createdAt,
      'title': instance.title,
      'name_surname': instance.nameSurname,
    };
