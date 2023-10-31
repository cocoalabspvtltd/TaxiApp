import 'package:new_app/utils/exports.dart';

Future<dynamic> popup(BuildContext context, String label) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(label, style: s19)]),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: violetcolor),
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Done')),
          ],
        ),
      ],
    ),
  );
}
