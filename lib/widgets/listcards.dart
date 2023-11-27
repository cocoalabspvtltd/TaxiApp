import 'package:flutter/material.dart';
import 'package:new_app/utils/exports.dart';

Widget listcards({
  String? label2,
  required BuildContext context,
  required String image,
  required String label,
  required String label1,
  required String label3,
  required Function ontap,
}) {
  int? rating = label2 != null ? int.tryParse(label2) : null;

  return GestureDetector(
    onTap: () => ontap(),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              image,
              fit: BoxFit.cover,
              height: 180,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(label, style: s6),
                    Text(label1, style: s6),
                  ],
                ),
                Row(
                  mainAxisAlignment: label2 != null
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.end,
                  children: [
                    if (label2 != null) ...[
                      Row(
                        children: [
                          Text(label2, style: s10),
                          Row(
                            children: List.generate(
                              rating ?? 0,
                                  (index) => Icon(
                                Icons.star,
                                color: yellowColor,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                    Text(label3, style: s14),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
