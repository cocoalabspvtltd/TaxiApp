import 'package:flutter/material.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/constants/styles.dart';

Widget tab(String label, bool selected, Function ontap) => InkWell(
    onTap: () => ontap(),
    child: Column(children: [
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: selected ? yellowColor : greyColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Text(label, style: s2),
          )),
      const SizedBox(height: 10),
    ]));
