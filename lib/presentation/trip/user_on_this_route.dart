import 'package:new_app/presentation/trip/invites.dart';
import 'package:new_app/presentation/trip/my_pool_list_screen.dart';
import 'package:new_app/presentation/trip/widgets/users_route_trip.dart';
import 'package:new_app/presentation/trip/widgets/drivers_route_trip.dart';
import 'package:new_app/widgets/ww_showToast.dart';

import '../../utils/exports.dart';
import '../../controller/home/home_controller.dart';

class UserOnThisRouteScreen extends StatelessWidget {
  const UserOnThisRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = Get.find<HomeController>();
    return Scaffold(
        appBar: appBars(
          text: 'Ride Sharing',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buttons(
                    'Invites',
                    () {
                      Get.find<HomeController>().getTripPoolInvitesList();
                      Get.to(() => InviteScreen());
                    },
                  ),
                  const SizedBox(width: 10),
                  buttons(
                    'My Pool',
                    () {
                      if (ctr.currentPoolId != null) {
                        ctr.apiGetMyPoolMembers(tripId: ctr.currentPoolId!);
                        Get.to(() => const MyPoolListScreen());
                      } else {
                        wwShowToast('Please create pool',
                            status: Status.failure);
                      }
                    },
                  ),
                  const SizedBox(width: 15),
                ],
              ),
              const SizedBox(height: 20),
              GetBuilder<HomeController>(
                id: 'userOnThisRouteTab',
                builder: (_) {
                  return ColoredBox(
                      color: whiteColor,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            tabs("Users on this route", ctr.onThisRouteTab, () {
                              ctr.onThisRouteTab = true;
                              ctr.update(['userOnThisRouteTab']);
                            }),
                            tabs("Drivers on this route", !ctr.onThisRouteTab,
                                () {
                              ctr.onThisRouteTab = false;
                              ctr.update(['userOnThisRouteTab']);
                            }),
                          ]));
                },
              ),
              const SizedBox(height: 20),
              GetBuilder<HomeController>(
                id: 'userOnThisRouteTab',
                builder: (_) {
                  return SizedBox(
                      child: ctr.onThisRouteTab
                          ? const UserRouteTripScreen()
                          : const DriversRouteScreen());
                },
              )
            ],
          ),
        ));
  }
}

Widget tabs(String label, bool selected, Function ontap) => InkWell(
    onTap: () => ontap(),
    child: Column(children: [
      Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          color: selected ? yellowColor : greyColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(label, style: s2),
          )),
      const SizedBox(height: 10),
    ]));
