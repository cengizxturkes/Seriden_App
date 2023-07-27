// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginResponseAdapter extends TypeAdapter<LoginResponse> {
  @override
  final int typeId = 1;

  @override
  LoginResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginResponse(
      status: fields[1] as int,
      message: fields[3] as String,
      data: fields[5] as Login,
    );
  }

  @override
  void write(BinaryWriter writer, LoginResponse obj) {
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
      other is LoginResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class LoginAdapter extends TypeAdapter<Login> {
  @override
  final int typeId = 2;

  @override
  Login read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Login(
      id: fields[1] as String,
      name: fields[3] as String,
      surname: fields[5] as String,
      email: fields[7] as String,
      phone: fields[9] as String,
      password: fields[11] as String,
      token: fields[13] as String,
      createdAt: fields[15] as String,
      status: fields[17] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Login obj) {
    writer
      ..writeByte(9)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(5)
      ..write(obj.surname)
      ..writeByte(7)
      ..write(obj.email)
      ..writeByte(9)
      ..write(obj.phone)
      ..writeByte(11)
      ..write(obj.password)
      ..writeByte(13)
      ..write(obj.token)
      ..writeByte(15)
      ..write(obj.createdAt)
      ..writeByte(17)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: Login.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      id: json['id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      token: json['token'] as String,
      createdAt: json['created_at'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'token': instance.token,
      'created_at': instance.createdAt,
      'status': instance.status,
    };
