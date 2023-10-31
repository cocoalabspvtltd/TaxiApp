import 'dart:io';

import 'package:new_app/utils/exports.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_app/widgets/ww_imagePopUp.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';

import '../../../services/image_picker.dart';
import '../../../core/injection/injectable.dart';

enum RoomDetailsEnum { Add, Edit }

class AddOrEditRoomDetails extends StatelessWidget {
  final RoomDetailsEnum type;
  final _roomFormKey = GlobalKey<FormState>();
  AddOrEditRoomDetails({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: type == RoomDetailsEnum.Add ? 'Add Room' : 'Update Room',
        centertitle: true,
      ),
      body: GetBuilder<HotelController>(
          id: "add_room_detail",
          builder: (controller) {
            return SingleChildScrollView(
              child: Form(
                key: _roomFormKey,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      profileTexts(
                        'Type',
                        'Enter Type here',
                        controller: controller.roomTypeCtr,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Type';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      profileTexts(
                        'Bed_type',
                        'Enter Bed-type here',
                        controller: controller.roomBedTypeCtr,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Bed-type';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      profileTexts(
                        'Price',
                        'Enter Price here',
                        controller: controller.roomPriceCtr,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Price';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Add an image', style: TextStyle(fontSize: 16)),
                          if (controller.addRoomImage == null) ...[
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: violetcolor,
                              child: IconButton(
                                  onPressed: () => imagePopup(
                                        context,
                                        onCamera: () async {
                                          controller.addRoomImage =
                                              await getIt<CustomImagePicker>()
                                                  .imagePicker(
                                            context,
                                            source: ImageSource.camera,
                                          );
                                          controller
                                              .update(["add_room_detail"]);
                                        },
                                        onGallery: () async {
                                          controller.addRoomImage =
                                              await getIt<CustomImagePicker>()
                                                  .imagePicker(context);
                                          controller
                                              .update(["add_room_detail"]);
                                        },
                                      ),
                                  icon: Icon(Icons.add,
                                      color: whiteColor, size: 14)),
                            ),
                          ] else ...[
                            SizedBox()
                          ],
                        ],
                      ),
                      SizedBox(height: 20),
                      if (controller.addRoomImage != null) ...[
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.file(
                                File(controller.addRoomImage!.imagePath!),
                                height: 80,
                                width: MediaQuery.of(context).size.width / 2.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: -8,
                              right: -10,
                              child: CircleAvatar(
                                radius: 15.0,
                                backgroundColor: violetcolor.withOpacity(0.7),
                                child: InkWell(
                                  onTap: () {
                                    controller.addRoomImage = null;
                                    controller.update(["add_room_detail"]);
                                  },
                                  child: Icon(Icons.close),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                      SizedBox(height: 40),
                      customButton(
                        txt: type == RoomDetailsEnum.Add ? 'Save' : 'Update',
                        context: context,
                        height: true,
                        loading: controller.addOrEditRoomLoading,
                        color: violetcolor,
                        onpressed: () {
                          if (_roomFormKey.currentState!.validate()) {
                            controller.addRoom();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
