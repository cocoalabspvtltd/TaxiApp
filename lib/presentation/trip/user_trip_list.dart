import 'dart:developer';

import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/model/trip/trip_base_model/trip_model.dart';
import 'package:new_app/presentation/trip/user_on_this_route.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class UserTripListScreen extends StatelessWidget {
  const UserTripListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: 'Rides',
        centertitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GetBuilder<HomeController>(
            id: 'tripUserRideListLoader',
            builder: (_) {
              return _.tripUserRideListLoader
                  ? Center(child: CircularProgressIndicator())
                  : _.tripUserRideListFailure != null
                      ? WWFailureHandler(
                          failure: _.tripUserRideListFailure!,
                          onTap: () => _.apiTripUserList())
                      : _.tripUserRideList?.trips?.isEmpty ?? true
                          ? Center(
                              child: Text('data empty'),
                            )
                          : UserTripListStateless(
                              data: _.tripUserRideList?.trips ?? []);
            }),
      ),
    );
  }
}

class UserTripListStateless extends StatelessWidget {
  final List<TripModel> data;
  const UserTripListStateless({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    apicalls(index);
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Column(
                        children: [
                          IgnorePointer(
                              child:
                                  profileTexts('From', data[index].from ?? '')),
                          IgnorePointer(
                              child: profileTexts('To', data[index].to ?? '')),
                          IgnorePointer(child: profileTexts('Distance', '200')),
                          SizedBox(height: 20),
                          if (data[index].poolId == null)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: yellowColor),
                                    onPressed: () async {
                                      await Get.find<HomeController>()
                                          .apiCreatePool(id: data[index].id!);

                                      log('api called');
                                      // apicalls(index);
                                    },
                                    child: Text('Create a pool'))
                              ],
                            )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  void apicalls(int index) {
    if (data[index].id != null) {
      Get.to(() => UserOnThisRouteScreen());

      Get.find<HomeController>().currentTripId = data[index].id!;
      Get.find<HomeController>().currentPoolId = data[index].poolId;

      Get.find<HomeController>()
        ..apiUserOnThisRoute(id: data[index].id!)
        ..apiDriverOnThisRoute(data[index]);
    }
  }
}
