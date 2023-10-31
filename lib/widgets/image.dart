import 'package:new_app/utils/exports.dart';

Widget maps(BuildContext context) {
  return Stack(
    children: [
      Image.asset(
          fit: BoxFit.fill,
          map,
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width),
      Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: SizedBox(
              width: 150,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: whiteColor),
                  onPressed: (() {}),
                  child: Text('View on map', style: s6)),
            ),
          )),
    ],
  );
}
