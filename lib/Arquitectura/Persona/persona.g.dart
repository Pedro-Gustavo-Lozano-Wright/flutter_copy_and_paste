// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonaAdapter extends TypeAdapter<Persona> {
  @override
  final int typeId = 5;

  @override
  Persona read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Persona(
      id: fields[0] as int,
      name: fields[1] as String,
      age: fields[2] as double,
      things: (fields[3] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Persona obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.things);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Persona _$PersonaFromJson(Map json) {
  return Persona(
    id: json['id'] as int,
    name: json['name'] as String,
    age: (json['age'] as num)?.toDouble(),
    things: (json['things'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$PersonaToJson(Persona instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'things': instance.things,
    };
