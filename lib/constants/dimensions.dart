import 'package:new_app/utils/exports.dart';

EdgeInsetsGeometry e1 = const EdgeInsets.fromLTRB(15, 0, 15, 0);
EdgeInsetsGeometry e2 = const EdgeInsets.symmetric(horizontal: 20, vertical: 5);
EdgeInsetsGeometry e3 =
    const EdgeInsets.symmetric(horizontal: 10, vertical: 15);
EdgeInsetsGeometry e4 =
    const EdgeInsets.symmetric(horizontal: 20, vertical: 20);
EdgeInsetsGeometry e5 = const EdgeInsets.symmetric(horizontal: 8, vertical: 15);
EdgeInsetsGeometry e6 = const EdgeInsets.symmetric(vertical: 8);
EdgeInsetsGeometry e7 = const EdgeInsets.all(15.0);
EdgeInsetsGeometry e8 = const EdgeInsets.all(8.0);

double height(BuildContext context, double i) {
  double height = MediaQuery.of(context).size.height * i;
  return height;
}

double width(BuildContext context, double i) {
  double width = MediaQuery.of(context).size.width * i;
  return width;
}
