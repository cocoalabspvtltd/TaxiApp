import 'package:new_app/core/packages/text_field_search.dart';
import 'package:new_app/utils/exports.dart';

class SearchText {
  final String label;

  SearchText(this.label);
}

Future<List> fetchData(TextEditingController ctr) async {
  await Future.delayed(Duration(milliseconds: 2000));
  List<SearchText> _list = [];
  String _inputText = ctr.text;
  // create a list from the text input of three items
  // to mock a list of items from an http call

  for (var i = 1; i < 10; i++) {
    _list.add(SearchText(_inputText + ' Item $i'));
  }

  return _list;
}

class WWLocationSearchField extends StatelessWidget {
  final String st;
  final IconData? icon;
  final TextEditingController controller;
  final Function? futureFunction;
  final Function(SearchText a)? getSelectedValue;
  final List<dynamic>? initialList;
  final int itemInView;
  final int minStringLength;
  final List<TextInputFormatter>? inputFormatters;

  final bool showDataWhenFocus;
  const WWLocationSearchField(
      {super.key,
      required this.st,
      this.icon,
      required this.controller,
      this.futureFunction,
      this.getSelectedValue,
      this.initialList,
      this.itemInView = 5,
      this.minStringLength = 3,
      this.inputFormatters,
      this.showDataWhenFocus = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: double.infinity,
      child: TextFieldSearch(
        label: 'Search Location',
        initialList: initialList,
        itemsInView: itemInView,
        minStringLength: minStringLength,
        inputFormatters: inputFormatters,
        showDataWhenFocus: showDataWhenFocus,
        future: futureFunction == null ? null : () => futureFunction!(),
        controller: controller,
        getSelectedValue:
            getSelectedValue == null ? null : (a) => getSelectedValue!(a),
        decoration: textFieldDecoration(st: st, icon: icon),
        textStyle: s3,
      ),
    );
  }
}
