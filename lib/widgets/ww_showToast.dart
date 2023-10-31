import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_app/utils/exports.dart';

enum Status { success, failure }

void wwShowToast(String msg, {Status? status}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 3,
      fontSize: 16.0,
      backgroundColor: status == null
          ? null
          : status == Status.success
              ? Colors.green
              : Colors.red);
}
