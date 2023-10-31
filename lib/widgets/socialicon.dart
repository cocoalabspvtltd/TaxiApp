import 'package:new_app/utils/exports.dart';

class SocialIconsLoginComponents extends StatelessWidget {
  const SocialIconsLoginComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: [
        container(FontAwesomeIcons.facebook),
        container(FontAwesomeIcons.google),
        container(FontAwesomeIcons.twitter),
      ],
    );
  }

  Widget container(IconData icon) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: greyColor)),
      child: FaIcon(
        icon,
        color: violetcolor,
        size: iconSize,
      ),
    );
  }
}
