import 'package:flutter/cupertino.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/model/restuarant/food/food_model.dart';
import 'package:new_app/presentation/restaurant/myRestaurant/myFood.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class MyRestaurantFoodListScreen extends StatelessWidget {
  const MyRestaurantFoodListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: "My Foods"),
      body: GetBuilder<RestaurantController>(
          id: "owner_my_food_list",
          builder: (ctr) {
            final List<FoodModel> foodList =
                ctr.ownerMyFoodListModel?.food_items ?? [];

            return ctr.ownerMyFoodListLoader == true &&
                    ctr.ownerMyFoodListModel == null
                ? Center(
                    child: CircularProgressIndicator(color: violetcolor),
                  )
                : ctr.ErrorOwnerMyFoodList != null
                    ? WWFailureHandler(
                        failure: ctr.ErrorOwnerMyFoodList!,
                        onTap: () => () {
                              ctr.ownerMyFoodListModel = null;
                              ctr.apiGetOwnerMyFoodList(
                                  ctr.selectedRestaurantId ?? 0);
                            })
                    : ctr.ownerMyFoodListModel == null
                        ? Center(
                            child: Text("There is no data"),
                          )
                        : foodList.isEmpty
                            ? Center(
                                child: Text("List is empty"),
                              )
                            : ListView.builder(
                                controller: ctr.myRestaurantFoodListController,
                                itemCount: foodList.length,
                                itemBuilder: (context, index) {
                                  final data = foodList[index];
                                  return index == foodList.length - 1 &&
                                          (int.parse(ctr.ownerMyFoodListModel!
                                                  .page!) <
                                              ctr.ownerMyFoodListModel!
                                                  .lastPage!)
                                      ? CupertinoActivityIndicator()
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          child: GestureDetector(
                                            onTap: () {
                                              ctr.addOrEditFood =
                                                  AddOrEditFood.editFood;
                                              ctr.clearAddFoodFields();
                                              ctr.getSelectedFoodDetails(data!);
                                              Get.to(() => MyFoodScreen());
                                            },
                                            child: Card(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Column(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10)),
                                                    child: Image.network(
                                                        data?.image ?? "",
                                                        fit: BoxFit.fill,
                                                        height: 150,
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                "${data?.name}",
                                                                style: s6.copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600)),
                                                            Text(
                                                                "\₹${data?.price}",
                                                                style: s6),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              "${data?.description}",
                                                              style: s5,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              maxLines: 1,
                                                            ),
                                                            Text(
                                                                "${data?.type}",
                                                                style: s6),
                                                          ],
                                                        ),

                                                        // Row(
                                                        //   mainAxisAlignment: label2 != null
                                                        //       ? MainAxisAlignment.spaceBetween
                                                        //       : MainAxisAlignment.end,
                                                        //   children: [
                                                        //     if (label2 != null) ...[
                                                        //       Row(
                                                        //         children: [
                                                        //           Text(label2, style: s10),
                                                        //           Row(
                                                        //             children: const [
                                                        //               Icon(Icons.star, color: yellowColor, size: 15),
                                                        //               Icon(Icons.star, color: yellowColor, size: 15),
                                                        //               Icon(Icons.star, color: yellowColor, size: 15),
                                                        //               Icon(Icons.star, color: yellowColor, size: 15),
                                                        //             ],
                                                        //           ),
                                                        //         ],
                                                        //       ),
                                                        //     ],
                                                        //     Text(label3, style: s14),
                                                        //   ],
                                                        // )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                },
                              );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<RestaurantController>().addOrEditFood =
              AddOrEditFood.addFood;

          Get.find<RestaurantController>().clearAddFoodFields();
          Get.to(() => MyFoodScreen());
        },
        backgroundColor: violetcolor,
        child: Icon(Icons.add),
      ),
    );
  }
}
