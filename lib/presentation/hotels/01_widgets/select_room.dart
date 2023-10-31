import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';

import '../../../constants/colors.dart';

class SelectRoom extends StatelessWidget {
  const SelectRoom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HotelController>(
      id: "select_room",
      builder: (ctr) {
        return SizedBox(
          height: 100.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: ctr.hotelDetail?.rooms?.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  ctr.selectHotelRoom(ctr.hotelDetail?.rooms?[index]);
                },
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: ctr.selectedRoom == ctr.hotelDetail?.rooms?[index]
                          ? violetcolor
                          : Colors.white,
                    ),
                  ),
                  alignment: Alignment.center,
                  clipBehavior: Clip.hardEdge,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                      // ctr.hotelDetail?.rooms?[index].images
                      //         ?.first ??
                      //     '',
                      width: 100.0,
                      height: 80.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
