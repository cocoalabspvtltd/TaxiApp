import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/widgets/ww_location_search_field.dart';

import '../../../services/image_picker.dart';

enum AddOrEditHotel { add, edit }

class MyHotelEditDetails extends GetView<HotelController> {
  final AddOrEditHotel type;
  MyHotelEditDetails({this.type = AddOrEditHotel.edit, super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = Get.find<HotelController>();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBars(
        text: 'Edit Details',
        centertitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              MyHotelEditDetailsWidget(type: type, controller: controller),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttons('Save', () {
                    if (ctr.editHotelFormKey.currentState!.validate())
                      controller.editMyHotelDetails(type: type);
                  }),
                  SizedBox(width: 20),
                  buttons('Delete', () => controller.updateDatas()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHotelEditDetailsWidget extends StatelessWidget {
  const MyHotelEditDetailsWidget({
    super.key,
    required this.controller,
    required this.type,
  });

  final HotelController controller;

  final AddOrEditHotel type;

  @override
  Widget build(BuildContext context) {
    final hCtr = Get.find<HomeController>();

    return Form(
      key: controller.editHotelFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GetBuilder<HotelController>(
              id: "edit_hotel_image",
              builder: (ctr) {
                return Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () async {
                      controller.hotelUpdateImage =
                          await getIt<CustomImagePicker>().imagePicker(context);
                      ctr.update(["edit_hotel_image"]);
                    },
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: controller.hotelUpdateImage == null
                              ? CircleAvatar(
                                  radius: 45,
                                  backgroundColor: violetcolor,
                                  foregroundImage: NetworkImage(
                                    controller.myHotel?.image ?? "",
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 45,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(45),
                                    child: Image.memory(
                                      controller
                                          .hotelUpdateImage!.imageUint8List!,
                                      height: 100.0,
                                      width: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 10.0,
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                              color: violetcolor.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Icon(
                              Icons.edit,
                              size: 20.0,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
          SizedBox(height: 20),
          profileTexts(
            'Name',
            'Name',
            controller: controller.hotelEditNameCtr,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Name';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          profileTexts(
            'Phone',
            'Phone',
            controller: controller.hotelEditPhoneCtr,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Phone';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          profileTexts(
            'Address',
            'Address',
            controller: controller.hotelEditAddressCtr,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Address';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          profileTexts('Type', 'veg',
              search: WWLocationSearchField(
                st: 'Select Type',
                controller: controller.hotelEditTypeCtr,
                minStringLength: 0,
                initialList: ['veg', 'non-veg', 'veg/non-veg'],
                showDataWhenFocus: true,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(''))
                ],
              )),
          SizedBox(height: 20),
          profileTexts(
            'Location',
            'location search',
            search: WWLocationSearchField(
              st: 'Search Location',
              controller: controller.hotelEditLocation,
              futureFunction: () =>
                  hCtr.apiLocationSearch(controller.hotelEditLocation.text),
              getSelectedValue: (a) async => controller.hotelEditLatLang =
                  await hCtr.apiLocationFetchLatLong(a.label),
            ),
          ),
          SizedBox(height: 20),
          profileTexts(
            'City',
            'City',
            controller: controller.hotelEditCityCtr,
          ),
          SizedBox(height: 20),
          profileTexts(
            'District',
            'District',
            controller: controller.hotelEditDistrictCtr,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter District';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          profileTexts(
            'State',
            'State',
            controller: controller.hotelEditStateCtr,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please Enter State';
              }
              return null;
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
