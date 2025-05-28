// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoticeTypeAdapter extends TypeAdapter<NoticeType> {
  @override
  final int typeId = 1;

  @override
  NoticeType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return NoticeType.general;
      case 1:
        return NoticeType.written;
      case 2:
        return NoticeType.deadline;
      case 3:
        return NoticeType.study;
      case 4:
        return NoticeType.hobby;
      case 5:
        return NoticeType.project;
      case 6:
        return NoticeType.delivery;
      case 7:
        return NoticeType.roommate;
      default:
        return NoticeType.general;
    }
  }

  @override
  void write(BinaryWriter writer, NoticeType obj) {
    switch (obj) {
      case NoticeType.general:
        writer.writeByte(0);
        break;
      case NoticeType.written:
        writer.writeByte(1);
        break;
      case NoticeType.deadline:
        writer.writeByte(2);
        break;
      case NoticeType.study:
        writer.writeByte(3);
        break;
      case NoticeType.hobby:
        writer.writeByte(4);
        break;
      case NoticeType.project:
        writer.writeByte(5);
        break;
      case NoticeType.delivery:
        writer.writeByte(6);
        break;
      case NoticeType.roommate:
        writer.writeByte(7);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoticeTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
