import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/model/review/review_base_model/review_model.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: Scaffold(
        appBar: appBars(
            text: 'Reviews', centertitle: true, onpressed: () => Get.back()),
        body: GetBuilder<RestaurantController>(
            id: 'my_restaurant_reviews_list',
            builder: (ctr) {
              final List<ReviewModel>? reviewList =
                  ctr.myRestaurantReviewsListModel?.reviews;
              return ctr.myRestaurantReviewListLoader == true
                  ? Center(
                      child: CircularProgressIndicator(
                      color: violetcolor,
                    ))
                  : ctr.errorMyRestaurantReviewsList != null
                      ? WWFailureHandler(
                          failure: ctr.errorMyRestaurantReviewsList!,
                          onTap: () {
                            ctr.apiGetReviewListOwnerMyRestaurantList();
                          })
                      : reviewList == [] || reviewList!.isEmpty
                          ? Center(
                              child: Text("List is Empty"),
                            )
                          : ctr.myRestaurantReviewsListModel == null
                              ? Center(
                                  child: Text("There is no data"),
                                )
                              : ListView.builder(
                                  itemCount: reviewList.length,
                                  itemBuilder: (context, index) {
                                    ReviewModel data = reviewList[index];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      child: Card(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 5),
                                          child: Column(
                                            // crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(data.name ?? '',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      16)),
                                                          SizedBox(height: 3),
                                                          Text(
                                                              data.comment ??
                                                                  "",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  color: Colors
                                                                      .grey)),
                                                          SizedBox(height: 3),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Text(
                                                                  "${data.rating}",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500)),
                                                              SizedBox(
                                                                  width: 5),
                                                              Icon(Icons.star,
                                                                  color:
                                                                      yellowColor,
                                                                  size: 15),
                                                            ],
                                                          ),
                                                        ]),
                                                    // SizedBox(width: 15),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          '${data.time}',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                        SizedBox(height: 15),
                                                        InkWell(
                                                            onTap: () {
                                                              Get.defaultDialog(
                                                                  title:
                                                                      "Are you sure?",
                                                                  titlePadding:
                                                                      EdgeInsets.only(
                                                                          top:
                                                                              10),
                                                                  content:
                                                                      Column(
                                                                    children: [
                                                                      SizedBox(
                                                                          height:
                                                                              20),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.symmetric(horizontal: 5),
                                                                        child: GetBuilder<
                                                                                RestaurantController>(
                                                                            id:
                                                                                'update_btn_review_delete',
                                                                            builder:
                                                                                (ctr) {
                                                                              return Row(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  buttons("Cancel", () => Get.back()),
                                                                                  buttons("Delete", () => ctr.apiDeleteMyRestaurantReview(data.id ?? 0), isBusy: ctr.deleteMyRestaurantReviewLoader)
                                                                                ],
                                                                              );
                                                                            }),
                                                                      ),
                                                                      SizedBox(
                                                                          height:
                                                                              20),
                                                                    ],
                                                                  ));
                                                            },
                                                            child: Icon(
                                                                Icons.delete))
                                                      ],
                                                    ),

                                                    // Text("${data?.time}")
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
            }),
      ),
    );
  }
}
