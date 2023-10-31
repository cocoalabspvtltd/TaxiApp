import 'package:dotted_border/dotted_border.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/utils/exports.dart';

class MyFoodScreen extends StatelessWidget {
  const MyFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: 'Foods',
        centertitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GetBuilder<RestaurantController>(
              id: 'add_food_myRestaurant',
              builder: (ctr) {
                return Form(
                  key: ctr.addFoodFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      profileTexts(
                        'Name*',
                        'Name',
                        controller: ctr.ownerFoodNameCtr,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Food Name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      profileTexts(
                        'Description*',
                        'Description',
                        controller: ctr.ownerFoodDescriptionCtr,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Food Description';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      profileTexts(
                        'Price*',
                        'Price',
                        controller: ctr.ownerFoodPriceCtr,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Food Price';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      profileTexts(
                        'Type*',
                        'Veg/ Non Veg',
                        controller: ctr.ownerFoodTypeCtr,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Food Type';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30),
                      Text(
                          ctr.selcectedImageFromList != null
                              ? 'Update image'
                              : 'Add image*',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      GetBuilder<RestaurantController>(
                          id: 'add_food_image',
                          builder: (ctr) {
                            return InkWell(
                              onTap: () async {
                                ctr.pickAddFoodImage(context);
                              },
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: ctr.addFoodImage != null
                                      ? ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image.memory(
                                            ctr.addFoodImage!.imageUint8List!,
                                            height: 150,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            fit: BoxFit.cover,
                                          ))
                                      : ctr.selcectedImageFromList != null
                                          ? ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image.network(
                                                ctr.selcectedImageFromList ??
                                                    "",
                                                height: 150,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                fit: BoxFit.cover,
                                              ))
                                          : Container(
                                              height: 150,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: DottedBorder(
                                                color: Colors.black12,
                                                child: Center(
                                                  child: Text(
                                                      "Click Here to Add Image"),
                                                ),
                                              ),
                                            )),
                            );
                          }),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buttons(
                              ctr.addOrEditFood == AddOrEditFood.addFood
                                  ? 'Create'
                                  : 'Save', () {
                            if (ctr.addFoodFormKey.currentState!.validate()) {
                              ctr.addOrEditFood == AddOrEditFood.addFood
                                  ? ctr.apiOwnerMyRestaurantAddFood()
                                  : ctr.apiOwnerMyRestaurantEditFood();
                            }
                          }, isBusy: ctr.createFoddOwnerLoader),
                          SizedBox(width: 20),
                          if (ctr.addOrEditFood == AddOrEditFood.editFood) ...[
                            buttons('Delete', () {
                              Get.defaultDialog(
                                  title: "Are You Sure?",
                                  titlePadding: EdgeInsets.only(top: 10),
                                  content: Text(
                                    "Food Item Will be Deleted.",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  confirm: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: violetcolor),
                                      onPressed: () {
                                        ctr.apiDeleteOwnerMyRestaurantFood();
                                      },
                                      child: Text("Delete")),
                                  cancel: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              violetcolor.withOpacity(.4)),
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text("cancel")));
                            }),
                          ],
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
