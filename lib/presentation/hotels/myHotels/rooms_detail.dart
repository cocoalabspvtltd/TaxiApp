import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/utils/exports.dart';

import '../01_widgets/horizontal_data_view.dart';
import '../../../model/hotel/hotel_model/room.dart';

class RoomDetails extends StatelessWidget {
  final Room? room;
  const RoomDetails({super.key, this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: 'Details', centertitle: true, actions: [
        IconButton(
          onPressed: () {
            if (room?.id != null) deleteRoom(id: room!.id!);
          },
          icon: Icon(Icons.delete_outline),
        )
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: e7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    room?.images?.first ?? "",
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  )),
              SizedBox(height: 40),
              HorizontalDataView(label: 'Type', text: room?.type ?? ""),
              SizedBox(height: 20),
              HorizontalDataView(label: 'Bed -Type', text: room?.bedType ?? ""),
              SizedBox(height: 20),
              HorizontalDataView(label: 'Price', text: room?.price ?? ""),
              SizedBox(height: 40),
              // customButton(
              //   txt: 'Save',
              //   context: context,
              //   height: true,
              //   color: violetcolor,
              //   onpressed: () {},
              // )
            ],
          ),
        ),
      ),
    );
  }
}

Future deleteRoom({required int id}) async {
  return Get.defaultDialog(
    title: 'Delete Room',
    content: Text('Are you sure want to Delete the room?'),
    cancel: customButton(
      txt: "Cancel",
      height: false,
      color: violetcolor,
      onpressed: () => Get.back(),
    ),
    confirm: GetBuilder<HotelController>(
      id: "delete_detail",
      builder: (ctr) {
        return customButton(
          txt: "Delete",
          height: false,
          color: Colors.red,
          loading: ctr.deleteRoomLoader,
          onpressed: () => ctr.apiDeleteRoom(roomId: id),
        );
      },
    ),
  );
}
