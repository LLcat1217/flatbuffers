// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library namespace_a;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;

import './namespace_test2_namespace_c_generated.dart' as namespace_c;

class TableInFirstNS {
  TableInFirstNS._(this._bc, this._bcOffset);
  factory TableInFirstNS(List<int> bytes) {
    fb.BufferContext rootRef = new fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<TableInFirstNS> reader = const _TableInFirstNSReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  namespace_a_namespace_b.TableInNestedNS? get fooTable => namespace_a_namespace_b.TableInNestedNS.reader.vTableGetNullable(_bc, _bcOffset, 4);
  EnumInNestedNS get fooEnum => EnumInNestedNS.fromValue(const fb.Int8Reader().vTableGet(_bc, _bcOffset, 6, 0));
  UnionInNestedNSTypeId? get fooUnionType => UnionInNestedNSTypeId._createOrNull(const fb.Uint8Reader().vTableGetNullable(_bc, _bcOffset, 8));
  dynamic? get fooUnion {
    switch (fooUnionType?.value) {
      case 1: return TableInNestedNS.reader.vTableGetNullable(_bc, _bcOffset, 10);
      default: return null;
    }
  }
  namespace_a_namespace_b.StructInNestedNS? get fooStruct => namespace_a_namespace_b.StructInNestedNS.reader.vTableGetNullable(_bc, _bcOffset, 12);

  @override
  String toString() {
    return 'TableInFirstNS{fooTable: $fooTable, fooEnum: $fooEnum, fooUnionType: $fooUnionType, fooUnion: $fooUnion, fooStruct: $fooStruct}';
  }

  TableInFirstNST unpack() => TableInFirstNST(
      fooTable: fooTable?.unpack(),
      fooEnum: fooEnum,
      fooUnionType: fooUnionType,
      fooUnion: fooUnion,
      fooStruct: fooStruct?.unpack());

  static int pack(fb.Builder fbBuilder, TableInFirstNST? object) {
    if (object == null) return 0;
    return object.pack(fbBuilder);
  }
}

class TableInFirstNST {
  namespace_a_namespace_b.TableInNestedNST? fooTable;
  EnumInNestedNS fooEnum;
  UnionInNestedNSTypeId? fooUnionType;
  dynamic? fooUnion;
  namespace_a_namespace_b.StructInNestedNST? fooStruct;

  TableInFirstNST({
      this.fooTable,
      this.fooEnum = EnumInNestedNS.A,
      this.fooUnionType,
      this.fooUnion,
      this.fooStruct});

  int pack(fb.Builder fbBuilder) {
    final int? fooTableOffset = fooTable?.pack(fbBuilder);
    final int? fooUnionOffset = fooUnion?.pack(fbBuilder);
    fbBuilder.startTable();
    fbBuilder.addOffset(0, fooTableOffset);
    fbBuilder.addInt8(1, fooEnum.value);
    fbBuilder.addUint8(2, fooUnionType?.value);
    fbBuilder.addOffset(3, fooUnionOffset);
    if (fooStruct != null) {
      fbBuilder.addStruct(4, fooStruct!.pack(fbBuilder));
    }
    return fbBuilder.endTable();
  }

  @override
  String toString() {
    return 'TableInFirstNST{fooTable: $fooTable, fooEnum: $fooEnum, fooUnionType: $fooUnionType, fooUnion: $fooUnion, fooStruct: $fooStruct}';
  }
}

class _TableInFirstNSReader extends fb.TableReader<TableInFirstNS> {
  const _TableInFirstNSReader();

  @override
  TableInFirstNS createObject(fb.BufferContext bc, int offset) => 
    new TableInFirstNS._(bc, offset);
}

class TableInFirstNSBuilder {
  TableInFirstNSBuilder(this.fbBuilder) {}

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable();
  }

  int addFooTableOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addFooEnum(EnumInNestedNS? fooEnum) {
    fbBuilder.addInt8(1, fooEnum?.value);
    return fbBuilder.offset;
  }
  int addFooUnionType(UnionInNestedNSTypeId? fooUnionType) {
    fbBuilder.addUint8(2, fooUnionType?.value);
    return fbBuilder.offset;
  }
  int addFooUnionOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }
  int addFooStruct(int offset) {
    fbBuilder.addStruct(4, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class TableInFirstNSObjectBuilder extends fb.ObjectBuilder {
  final namespace_a_namespace_b.TableInNestedNSObjectBuilder? _fooTable;
  final EnumInNestedNS? _fooEnum;
  final UnionInNestedNSTypeId? _fooUnionType;
  final dynamic? _fooUnion;
  final namespace_a_namespace_b.StructInNestedNSObjectBuilder? _fooStruct;

  TableInFirstNSObjectBuilder({
    namespace_a_namespace_b.TableInNestedNSObjectBuilder? fooTable,
    EnumInNestedNS? fooEnum,
    UnionInNestedNSTypeId? fooUnionType,
    dynamic? fooUnion,
    namespace_a_namespace_b.StructInNestedNSObjectBuilder? fooStruct,
  })
      : _fooTable = fooTable,
        _fooEnum = fooEnum,
        _fooUnionType = fooUnionType,
        _fooUnion = fooUnion,
        _fooStruct = fooStruct;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? fooTableOffset = _fooTable?.getOrCreateOffset(fbBuilder);
    final int? fooUnionOffset = _fooUnion?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable();
    fbBuilder.addOffset(0, fooTableOffset);
    fbBuilder.addInt8(1, _fooEnum?.value);
    fbBuilder.addUint8(2, _fooUnionType?.value);
    fbBuilder.addOffset(3, fooUnionOffset);
    if (_fooStruct != null) {
      fbBuilder.addStruct(4, _fooStruct!.finish(fbBuilder));
    }
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    fb.Builder fbBuilder = new fb.Builder();
    int offset = finish(fbBuilder);
    fbBuilder.finish(offset, fileIdentifier);
    return fbBuilder.buffer;
  }
}
class SecondTableInA {
  SecondTableInA._(this._bc, this._bcOffset);
  factory SecondTableInA(List<int> bytes) {
    fb.BufferContext rootRef = new fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<SecondTableInA> reader = const _SecondTableInAReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  namespace_c.TableInC? get referToC => namespace_c.TableInC.reader.vTableGetNullable(_bc, _bcOffset, 4);

  @override
  String toString() {
    return 'SecondTableInA{referToC: $referToC}';
  }

  SecondTableInAT unpack() => SecondTableInAT(
      referToC: referToC?.unpack());

  static int pack(fb.Builder fbBuilder, SecondTableInAT? object) {
    if (object == null) return 0;
    return object.pack(fbBuilder);
  }
}

class SecondTableInAT {
  namespace_c.TableInCT? referToC;

  SecondTableInAT({
      this.referToC});

  int pack(fb.Builder fbBuilder) {
    final int? referToCOffset = referToC?.pack(fbBuilder);
    fbBuilder.startTable();
    fbBuilder.addOffset(0, referToCOffset);
    return fbBuilder.endTable();
  }

  @override
  String toString() {
    return 'SecondTableInAT{referToC: $referToC}';
  }
}

class _SecondTableInAReader extends fb.TableReader<SecondTableInA> {
  const _SecondTableInAReader();

  @override
  SecondTableInA createObject(fb.BufferContext bc, int offset) => 
    new SecondTableInA._(bc, offset);
}

class SecondTableInABuilder {
  SecondTableInABuilder(this.fbBuilder) {}

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable();
  }

  int addReferToCOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class SecondTableInAObjectBuilder extends fb.ObjectBuilder {
  final namespace_c.TableInCObjectBuilder? _referToC;

  SecondTableInAObjectBuilder({
    namespace_c.TableInCObjectBuilder? referToC,
  })
      : _referToC = referToC;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? referToCOffset = _referToC?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable();
    fbBuilder.addOffset(0, referToCOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    fb.Builder fbBuilder = new fb.Builder();
    int offset = finish(fbBuilder);
    fbBuilder.finish(offset, fileIdentifier);
    return fbBuilder.buffer;
  }
}
