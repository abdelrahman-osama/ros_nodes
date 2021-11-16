import 'package:ros_nodes/messages/String.dart';
import 'package:ros_nodes/messages/UInt32.dart';
import 'package:ros_nodes/src/ros_message.dart';
import 'package:ros_nodes/messages/Time.dart';

class StdMsgsHeader extends RosMessage {
  final RosUint32 _seq = RosUint32();
  final RosTime stamp = RosTime();
  final RosString _frame_id = RosString();

  int? get seq => _seq.val;
  set seq(int? value) {
    _seq.val = value;
  }

  String? get frame_id => _frame_id.val;
  set frame_id(String? value) {
    _frame_id.val = value;
  }

  StdMsgsHeader()
      : super('header data', 'std_msgs/Header',
            '2176decaecbce78abc3b96ef049fabed') {
    params.add(_seq);
    params.add(stamp);
    params.add(_frame_id);
  }
}
