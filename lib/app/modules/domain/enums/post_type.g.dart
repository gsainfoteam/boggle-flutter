// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostTypeAdapter extends TypeAdapter<PostType> {
  @override
  final int typeId = 1;

  @override
  PostType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PostType.general;
      case 1:
        return PostType.written;
      case 2:
        return PostType.deadline;
      case 3:
        return PostType.study;
      case 4:
        return PostType.hobby;
      case 5:
        return PostType.project;
      case 6:
        return PostType.delivery;
      case 7:
        return PostType.roommate;
      case 8:
        return PostType.group;
      case 9:
        return PostType.dummy;
      default:
        return PostType.general;
    }
  }

  @override
  void write(BinaryWriter writer, PostType obj) {
    switch (obj) {
      case PostType.general:
        writer.writeByte(0);
        break;
      case PostType.written:
        writer.writeByte(1);
        break;
      case PostType.deadline:
        writer.writeByte(2);
        break;
      case PostType.study:
        writer.writeByte(3);
        break;
      case PostType.hobby:
        writer.writeByte(4);
        break;
      case PostType.project:
        writer.writeByte(5);
        break;
      case PostType.delivery:
        writer.writeByte(6);
        break;
      case PostType.roommate:
        writer.writeByte(7);
        break;
      case PostType.group:
        writer.writeByte(8);
        break;
      case PostType.dummy:
        writer.writeByte(9);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
