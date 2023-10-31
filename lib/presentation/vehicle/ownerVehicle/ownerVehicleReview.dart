import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/model/review/review_base_model/review_model.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class OwnerVehicleReview extends StatelessWidget {
  const OwnerVehicleReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBars(text: 'Vehicle Reviews'),
        body: GetBuilder<VehicleController>(
          id: 'vehicleReviewLoader',
          builder: (_) {
            return _.vehicleReviewLoader
                ? Center(child: CircularProgressIndicator())
                : _.vehicleReviewFailure != null
                    ? WWFailureHandler(
                        failure: _.vehicleReviewFailure!,
                        onTap: () => _.apiDriverReviewList())
                    : _.vehicleReviewList?.reviews.isEmpty ?? true
                        ? Center(child: Text('data empty'))
                        : OwnerVehicleReviewStateless(
                            data: _.vehicleReviewList?.reviews);
          },
        ));
  }
}

class OwnerVehicleReviewStateless extends StatelessWidget {
  final List<ReviewModel>? data;
  const OwnerVehicleReviewStateless({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView.builder(
        itemCount: data?.length ?? 0,
        physics: AlwaysScrollableScrollPhysics(),
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data![index].name ?? ''),
                Text(
                  data![index].time ?? '',
                  style: s3,
                ),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data![index].comment ?? ''),
                    Row(
                      children: [
                        Text(data![index].rating?.toString() ?? ''),
                        Icon(Icons.star_rate, color: Colors.amber)
                      ],
                    )
                  ],
                ),
                InkWell(
                    onTap: () {
                      Get.defaultDialog(
                          title: "Are you sure?",
                          titlePadding: EdgeInsets.only(top: 10),
                          content: Column(
                            children: [
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: GetBuilder<VehicleController>(
                                    id: 'update_btn_review_delete_vehicle',
                                    builder: (ctr) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          buttons("Cancel", () => Get.back()),
                                          buttons(
                                              "Delete",
                                              () =>
                                                  ctr.apiDeleteMyVehicleReview(
                                                      data?[index].id ?? 0),
                                              isBusy: ctr
                                                  .deleteMyVehicleReviewLoader)
                                        ],
                                      );
                                    }),
                              ),
                              SizedBox(height: 20),
                            ],
                          ));
                    },
                    child: Icon(Icons.delete))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
