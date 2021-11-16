import 'dart:typed_data';

import 'NativeList.dart';

class RosFloat64List extends NativeList<Float64List> {
  RosFloat64List({required int fixedLength}) : super(fixedLength: fixedLength) {
    list = Float64List(fixedLength);
  }

  @override
  RosFloat64List.fromList(Float64List list, {bool isFixedLength = true})
      : super.fromList(list, isFixedLength: isFixedLength);

  @override
  Float64List convertFromBuffer(ByteBuffer buffer) {
    return buffer.asFloat64List();
  }
}
