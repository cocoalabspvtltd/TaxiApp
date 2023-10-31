import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/presentation/hotels/myHotels/rooms_detail.dart';
import 'package:new_app/presentation/hotels/myHotels/add_or_edit_room_details.dart';

import '../../../widgets/ww_errorFailureHandler.dart';

class RoomList extends StatelessWidget {
  const RoomList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: 'List of Rooms',
        centertitle: true,
        onpressed: () => Get.back(),
      ),
      body: GetBuilder<HotelController>(
        id: "rooms_list",
        builder: (ctr) {
          return ctr.roomsListLoader
              ? Center(child: CircularProgressIndicator())
              : ctr.roomsListExceptions != null
                  ? WWFailureHandler(
                      failure: ctr.roomsListExceptions!,
                      onTap: () => ctr.getMyHotelRoomsList(),
                    )
                  : (ctr.roomBaseModel?.rooms?.isEmpty ?? true)
                      ? Center(child: Text("Data Empty"))
                      : ListView.builder(
                          padding: e7,
                          itemCount: ctr.roomBaseModel?.rooms?.length,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              // ctr.setRoomValues(
                              //   room: ctr.roomBaseModel?.rooms?[index],
                              // );
                              // Get.to(() =>
                              //     AddOrEditRoomDetails(type: RoomDetailsEnum.Edit));
                              Get.to(
                                () => RoomDetails(
                                    room: ctr.roomBaseModel?.rooms?[index]),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      ctr.roomBaseModel?.rooms?[index].images
                                              ?.first ??
                                          "",
                                      fit: BoxFit.cover,
                                      height: 150,
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: Text(
                                      "${ctr.roomBaseModel?.rooms?[index].type ?? ""}",
                                      style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<HotelController>().setRoomValues();
          Get.to(() => AddOrEditRoomDetails(type: RoomDetailsEnum.Add));
        },
        child: Icon(Icons.add),
        backgroundColor: violetcolor,
      ),
    );
  }
}
