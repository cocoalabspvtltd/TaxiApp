import 'package:new_app/utils/exports.dart';

class Or extends StatelessWidget {
  const Or({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 50, height: 1, color: greyColor.withOpacity(0.3)),
            ),
          ),
          Text("or", style: s5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 50, height: 1, color: greyColor.withOpacity(0.3)),
            ),
          ),
        ],
      ),
    );
  }
}
