import 'package:flutter/cupertino.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_model.dart';
import 'package:new_app/presentation/restaurant/bookRestaurant/restaurantDetailScreen.dart';
import 'package:new_app/utils/exports.dart';

import '../../../widgets/ww_errorFailureHandler.dart';

class RestuarantListScreen extends StatelessWidget {
  const RestuarantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var controller = context.watch<RestuarantController>();
    return GetBuilder<RestaurantController>(
        id: "restaurant_list",
        builder: (ctr) {
          final resModel = ctr.restaurantModel;
          final List<RestaurantModel> respList =
              ctr.restaurantModel?.restaurants?.toList() ?? [];
          return ctr.restaurantListLoader == true && ctr.restaurantModel == null
              ? Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .17,
                    ),
                    Center(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: violetcolor,
                        ),
                      ),
                    ),
                  ],
                )
              : ctr.errorGetRestaurantList != null
                  ? WWFailureHandler(
                      failure: ctr.errorGetRestaurantList!,
                      onTap: () {
                        ctr.restaurantModel = null;
                        ctr.apiGetRestaurants();
                      },
                    )
                  : resModel == null
                      ? Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * .17,
                            ),
                            Center(
                              child: Text("There is no data!!"),
                            ),
                          ],
                        )
                      : respList == [] || respList.isEmpty
                          ? Center(
                              child: Text("List is Empty"),
                            )
                          : ListView.builder(
                              // controller: ctr.restaurantListController,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: respList.length,
                              itemBuilder: (context, index) {
                                final data = respList[index];
                                return index == respList.length - 1 &&
                                        (int.parse(ctr.restaurantModel!.page!) <
                                            ctr.restaurantModel!.lastPage!)
                                    ? CupertinoActivityIndicator()
                                    : listcards(
                                        ontap: () {
                                          Get.find<RestaurantController>()
                                              .apiGetRestaurantDetails(
                                                  data.id ?? 0);
                                          Get.to(
                                              () => RestuarantDetailScreen());
                                        },
                                        context: context,
                                        image: data.image ?? "",
                                        label: data.name ?? "",
                                        label1: data.distance ?? "",
                                        label2: data.address ?? "",
                                        label3: "");
                              });
        });
  }
}
