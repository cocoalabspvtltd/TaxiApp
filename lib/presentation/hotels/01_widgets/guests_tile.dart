import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';

import '../../../constants/colors.dart';
import '../../../constants/styles.dart';

class GuestsTile extends StatelessWidget {
  const GuestsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HotelController>(
      id: "add_guest",
      builder: (ctr) {
        return ctr.guestList.isEmpty
            ? const SizedBox()
            : ExpansionTile(
                title: const Text('Guests'),
                leading: Icon(Icons.people_alt_outlined, color: violetcolor),
                trailing: Icon(
                  ctr.tileExpanded
                      ? Icons.arrow_drop_up
                      : Icons.arrow_drop_down,
                  color: violetcolor,
                ),
                onExpansionChanged: (value) {
                  ctr.tileExpanded = value;
                  ctr.update(["add_guest"]);
                },
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: ctr.guestList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          "${ctr.guestList[index].name}",
                          style: s2.copyWith(color: blackColor),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            /// Remove guest
                            ctr.guestList.remove(ctr.guestList[index]);
                            ctr.update(["add_guest"]);
                          },
                          icon: Icon(Icons.delete_outline),
                        ),
                      );
                    },
                  )
                ],
              );
      },
    );
  }
}
