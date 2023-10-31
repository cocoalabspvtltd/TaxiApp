import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';

import '../../../constants/styles.dart';
import '../../../widgets/appbar.dart';
import '../../../constants/colors.dart';
import '../../../widgets/ww_errorFailureHandler.dart';

class MyHotelReviews extends StatelessWidget {
  const MyHotelReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: Scaffold(
        appBar: appBars(
          text: 'Reviews',
          centertitle: true,
          onpressed: () => Get.back(),
        ),
        body: GetBuilder<HotelController>(
            id: "my_hotel_reviews",
            builder: (ctr) {
              return ctr.myHotelReviewsLoader
                  ? Center(child: CircularProgressIndicator())
                  : ctr.myHotelReviewsFailure != null
                      ? WWFailureHandler(
                          failure: ctr.myHotelReviewsFailure!,
                          onTap: () => ctr.getMyHotelReviewsList(),
                        )
                      : (ctr.myHotelReviewBaseModel?.reviews.isEmpty ?? true)
                          ? Center(child: Text("Data Empty"))
                          : Stack(
                              children: [
                                ListView.builder(
                                  itemCount: ctr
                                      .myHotelReviewBaseModel?.reviews.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: Card(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        '${ctr.myHotelReviewBaseModel?.reviews[index].name ?? ""}',
                                                        style: s2.copyWith(
                                                            color: blackColor),
                                                      ),
                                                      Text(
                                                        '${ctr.myHotelReviewBaseModel?.reviews[index].time ?? ""}',
                                                        style: s3,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                      '${ctr.myHotelReviewBaseModel?.reviews[index].comment ?? ""}',
                                                      style: s3),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        '${ctr.myHotelReviewBaseModel?.reviews[index].rating ?? ""}',
                                                        style: s3,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Icon(
                                                        Icons.star_rate_sharp,
                                                        size: 18,
                                                        color: yellowColor,
                                                      ),
                                                      Spacer(),
                                                      IconButton(
                                                        onPressed: () {
                                                          if (ctr
                                                                  .myHotelReviewBaseModel
                                                                  ?.reviews[
                                                                      index]
                                                                  .id !=
                                                              null) {
                                                            ctr.deleteMyHotelReview(
                                                                id: ctr
                                                                    .myHotelReviewBaseModel!
                                                                    .reviews[
                                                                        index]
                                                                    .id!);
                                                          }
                                                        },
                                                        icon: Icon(Icons
                                                            .delete_outline),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (ctr.deleteReviewLoader) ...[
                                  const Align(
                                    alignment: Alignment.center,
                                    child: CircularProgressIndicator(),
                                  )
                                ]
                              ],
                            );
            }),
      ),
    );
  }
}
