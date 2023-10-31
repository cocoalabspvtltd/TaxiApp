import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/model/trip/driver_routes_base_model/driver.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class DriversRouteScreen extends StatelessWidget {
  final bool onTab;
  const DriversRouteScreen({super.key, this.onTab = false});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'driverOnThisRouteListLoader',
        builder: (_) {
          return _.driverOnThisRouteListLoader
              ? Center(child: CircularProgressIndicator())
              : _.driverOnThisRouteListFailure != null
                  ? Center(
                      child: WWFailureHandler(
                          failure: _.driverOnThisRouteListFailure!,
                          onTap: () => null), //_.apiUserOnThisRoute( ) ),
                    )
                  : _.driverOnThisRouteList?.drivers?.isEmpty ?? true
                      ? Center(
                          child: Text('data empty'),
                        )
                      : !onTab
                          ? DriverRouteScreenStateless(
                              data: _.driverOnThisRouteList?.drivers ?? [])
                          : Column(
                              children: [
                                Flexible(
                                  child: DriverRouteScreenStateless(
                                      data: _.driverOnThisRouteList?.drivers ??
                                          []),
                                ),
                                customButton(
                                  txt: 'Confirm',
                                  height: false,
                                  color: violetcolor,
                                  onpressed: () {},
                                ),
                                const SizedBox(height: 10)
                              ],
                            );
        });
  }
}

class DriverRouteScreenStateless extends StatelessWidget {
  final List<Driver> data;
  const DriverRouteScreenStateless({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Column(
                  children: [
                    IgnorePointer(
                        child: profileTexts('Name', data[index].name ?? '')),
                    IgnorePointer(
                        child: profileTexts(
                            'Rating', data[index].avgRating ?? '')),
                    IgnorePointer(
                        child: profileTexts(
                            'Vehicle', data[index].car?.carModel ?? '')),
                    IgnorePointer(
                        child: icons('Distance', data[index].distance ?? '',
                            data[index].phone ?? '')),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: yellowColor),
                            onPressed: () => Get.find<HomeController>()
                                .apiAddDriverToPool(data[index].id),
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
