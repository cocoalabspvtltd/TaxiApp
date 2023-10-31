import 'package:new_app/utils/exports.dart';
import 'package:url_launcher/url_launcher.dart';

Widget customButton(
    {required String txt,
    BuildContext? context,
    required bool height,
    required Color color,
    bool? loading,
    double? width,
    required Function onpressed}) {
  return Center(
    child: IgnorePointer(
      ignoring: loading ?? false,
      child: Padding(
        padding: e1,
        child: SizedBox(
          width: width ?? double.infinity,
          height: height ? buttonHeight : 40,
          child: ElevatedButton(
            onPressed: () => onpressed(),
            style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: loading ?? false
                ? CircularProgressIndicator()
                : Text(txt, style: s2),
          ),
        ),
      ),
    ),
  );
}

// Widget cards(String label, String label1, String label2, String label3) => Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//         child: Column(
//           children: [
//             profileTexts('Name', label),
//             profileTexts('From', label1),
//             profileTexts('To', label2),
//             icons('Distance', label3)
//           ],
//         ),
//       ),
//     );

Widget profileTexts(String label, String text,
        {TextEditingController? controller,
        String? Function(String?)? validator,
        Widget? search}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 05),
      child: Row(children: [
        SizedBox(width: 100, child: Text(label, style: s6)),
        Expanded(
            flex: 2,
            child: SizedBox(
              height: 35,
              child: search != null
                  ? search
                  : TextFormField(
                      validator: validator,
                      controller: controller,
                      decoration: textFieldDecoration(st: text)

                      // InputDecoration(
                      //     hintText: text,
                      //     hintStyle: const TextStyle(color: greyColor, fontSize: 15)),
                      ),
            )),
      ]),
    );

Widget buttons(String label, Function ontap, {bool? isBusy}) {
  return InkWell(
    onTap: () => ontap(),
    child: DecoratedBox(
      decoration: BoxDecoration(
          color: violetcolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: greyColor)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: isBusy == true
            ? CircularProgressIndicator()
            : Text(label, style: s7.copyWith(color: whiteColor)),
      ),
    ),
  );
}

Widget icons(
  String label,
  String text,
  String? phone,
) {
  return Row(children: [
    SizedBox(width: 100, child: Text(label, style: s6)),
    Expanded(
        child: SizedBox(
      height: 35,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(color: greyColor, fontSize: 15)),
      ),
    )),
    const SizedBox(width: 5),
    if (phone != null) kicons(phone),
  ]);
}

Widget kicons(String phone) {
  return Row(
    children: [
      InkWell(
        onTap: () async {
          Uri phoneno = Uri.parse('tel:+91$phone');
          if (await launchUrl(phoneno)) {
            //dialer opened
          } else {
            //dailer is not opened
          }
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: yellowColor),
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.call, size: 15),
          ),
        ),
      ),
      const SizedBox(width: 5),
      DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: yellowColor),
          child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(Icons.message, size: 15))),
    ],
  );
}
