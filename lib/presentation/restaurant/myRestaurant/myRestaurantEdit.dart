import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/services/image_picker.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_location_search_field.dart';

class MyRestaurantEdit extends StatelessWidget {
  const MyRestaurantEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: Scaffold(
        appBar: appBars(
            text: 'Edit Details',
            centertitle: true,
            onpressed: () => Get.back()),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyRestaurantEditWidget(),
              GetBuilder<RestaurantController>(
                  id: 'edit_my_restaurant_loader',
                  builder: (ctr) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buttons('Save', () {
                          if (ctr.editMyRestaurantKey.currentState!
                              .validate()) {
                            ctr.apiEditMyRestaurant();
                          }
                        }, isBusy: ctr.editMyRestaurantLoader),
                        SizedBox(width: 20),
                        buttons('Back', () => Get.back()),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class MyRestaurantEditWidget extends StatelessWidget {
  const MyRestaurantEditWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hCtr = Get.find<HomeController>();

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GetBuilder<RestaurantController>(builder: (ctr) {
        return Form(
          key: ctr.editMyRestaurantKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GetBuilder<RestaurantController>(
                  id: "edit_my_restaurant_image",
                  builder: (controller) {
                    return Align(
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () async {
                          controller.restaurantUpdateImage =
                              await getIt<CustomImagePicker>()
                                  .imagePicker(context);
                          controller.update(["edit_my_restaurant_image"]);
                        },
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: controller.restaurantUpdateImage == null
                                  ? CircleAvatar(
                                      radius: 45,
                                      backgroundColor: violetcolor,
                                      foregroundImage: NetworkImage(
                                        controller.ownerMyRestaurantModel
                                                ?.image ??
                                            "",
                                      ),
                                    )
                                  : CircleAvatar(
                                      radius: 45,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(45),
                                        child: Image.memory(
                                          controller.restaurantUpdateImage!
                                              .imageUint8List!,
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
              profileTexts('Name', 'Name',
                  controller: ctr.ownerMyRestaurantNameCtr, validator: (val) {
                if (val!.isEmpty) {
                  return "please enter the name";
                }
                return null;
              }),
              SizedBox(height: 20),
              profileTexts('Phone', 'Phone',
                  controller: ctr.ownerMyRestaurantPhoneCtr, validator: (val) {
                if (val!.isEmpty) {
                  return "please enter the phone number";
                }
                return null;
              }),
              SizedBox(height: 20),
              profileTexts('Address', 'Address',
                  controller: ctr.ownerMyRestaurantAddressCtr,
                  validator: (val) {
                if (val!.isEmpty) {
                  return "please enter the address";
                }
                return null;
              }),
              SizedBox(height: 20),
              profileTexts('Type', 'veg/non-veg',
                  search: WWLocationSearchField(
                    st: 'Select Type',
                    controller: ctr.ownerMyRestaurantTypeCtr,
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
                  controller: ctr.ownerMyRestaurantLocationCtr,
                  futureFunction: () => hCtr
                      .apiLocationSearch(ctr.ownerMyRestaurantLocationCtr.text),
                  getSelectedValue: (a) async => ctr.ownerMyRestaurantLatLang =
                      await hCtr.apiLocationFetchLatLong(a.label),
                ),
              ),

              // profileTexts('Type', 'Veg/Non Veg',
              //     controller: ctr.ownerMyRestaurantTypeCtr,
              //     validator: (val) {
              //   if (val!.isEmpty) {
              //     return "please enter the type";
              //   }
              //   return null;
              // }),
              // SizedBox(height: 20),
              // profileTexts('Location', 'Location',
              //     controller: ctr.ownerMyRestaurantLocationCtr),
              SizedBox(height: 20),
              profileTexts('City', 'City',
                  controller: ctr.ownerMyRestaurantCityCtr, validator: (val) {
                if (val!.isEmpty) {
                  return "please enter the city";
                }
                return null;
              }),
              SizedBox(height: 20),
              profileTexts('State', 'State',
                  controller: ctr.ownerMyRestaurantStateCtr, validator: (val) {
                if (val!.isEmpty) {
                  return "please enter the state";
                }
                return null;
              }),
              SizedBox(height: 20),
              profileTexts('District', 'District',
                  controller: ctr.ownerMyRestaurantDistrictCtr,
                  validator: (val) {
                if (val!.isEmpty) {
                  return "please enter the district";
                }
                return null;
              }),
              SizedBox(height: 30),
            ],
          ),
        );
      }),
    );
  }
}
