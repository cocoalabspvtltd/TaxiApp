import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/model/trip/trip_base_model/trip_model.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class UserRouteTripScreen extends StatelessWidget {
  const UserRouteTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'userOnThisRouteListLoader',
        builder: (_) {
          return _.userOnThisRouteListLoader
              ? Center(child: CircularProgressIndicator())
              : _.userOnThisRouteListFailure != null
                  ? Center(
                      child: WWFailureHandler(
                          failure: _.userOnThisRouteListFailure!,
                          onTap: () => null), //_.apiUserOnThisRoute( ) ),
                    )
                  : _.userOnThisRouteList?.users?.isEmpty ?? true
                      ? Center(
                          child: Text('data empty'),
                        )
                      : UserRouteTripStateless(
                          data: _.userOnThisRouteList?.users ?? []);
        });
  }
}

class UserRouteTripStateless extends StatelessWidget {
  final List<TripModel> data;

  const UserRouteTripStateless({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  children: [
                    profileTexts('Name', data[index].name ?? ''),
                    profileTexts('From', data[index].from ?? ''),
                    profileTexts('To', data[index].to ?? ''),
                    icons('Distance', data[index].distance ?? '',
                        data[index].phone ?? ''),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: yellowColor),
                            onPressed: () => Get.find<HomeController>()
                                .apiAddToPool(
                                    data[index].userID!,
                                    data[index]
                                        .id!), //Get.to(() => RideSharingScreen()),
                            child: Text('Add to pool'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
