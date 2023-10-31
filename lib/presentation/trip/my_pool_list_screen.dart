import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/presentation/trip/drivver.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_showToast.dart';

import '../../widgets/ww_errorFailureHandler.dart';

class MyPoolListScreen extends StatelessWidget {
  const MyPoolListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: "My Pool", centertitle: true),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            buttons('Add Driver', () => Get.to(() => DriverScreen())),
          ],
        ),
      ),
      body: SafeArea(
        child: GetBuilder<HomeController>(
          id: "my_pool",
          builder: (ctr) {
            return ctr.myPoolLoader
                ? Center(child: CircularProgressIndicator())
                : ctr.myPoolException != null
                    ? WWFailureHandler(
                        failure: ctr.myPoolException!,
                        onTap: () {
                          if (ctr.currentTripId != null)
                            ctr.apiGetMyPoolMembers(tripId: ctr.currentTripId!);
                        },
                      )
                    : MyPoolListScreenStateless();
          },
        ),
      ),
    );
  }
}

class MyPoolListScreenStateless extends StatelessWidget {
  const MyPoolListScreenStateless({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ctr = Get.find<HomeController>();
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text('Driver', style: s6),
                const SizedBox(height: 10),
                ctr.myPool?.driver == null
                    ? Text('Please add driver')
                    : MyPoolDriverDetails(),
                const SizedBox(height: 10),
                Text('Members', style: s6),
                const SizedBox(height: 10),
                (ctr.myPool?.members?.isEmpty ?? true)
                    ? Center(child: Text("No members"))
                    : MyPoolMembersList(),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        customButton(
          txt: 'Confirm',
          height: true,
          color: violetcolor,
          onpressed: () {
            if (ctr.myPool?.driver == null ||
                (ctr.myPool?.members?.isEmpty ?? true)) {
              wwShowToast('Not Confirmed', status: Status.failure);
            } else {
              wwShowToast('Confirmed', status: Status.success);
            }
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class MyPoolMembersList extends StatelessWidget {
  const MyPoolMembersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ctr = Get.find<HomeController>();

    return ListView.builder(
      shrinkWrap: true,
      itemCount: ctr.myPool?.members?.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Remove from my pool
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.close),
                    ),
                  ),
                  IgnorePointer(
                    ignoring: true,
                    child: profileTexts(
                      'Name',
                      ctr.myPool?.members?[index].name ?? "",
                    ),
                  ),
                  IgnorePointer(
                    ignoring: true,
                    child: profileTexts(
                      'From',
                      ctr.myPool?.members?[index].from ?? "",
                    ),
                  ),
                  IgnorePointer(
                    ignoring: true,
                    child: profileTexts(
                      'To',
                      ctr.myPool?.members?[index].to ?? "",
                    ),
                  ),
                  IgnorePointer(
                    ignoring: true,
                    child: icons('Distance', '', null),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyPoolDriverDetails extends StatelessWidget {
  const MyPoolDriverDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ctr = Get.find<HomeController>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  // Remove from my pool
                },
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.close),
                ),
              ),
              IgnorePointer(
                ignoring: true,
                child: profileTexts(
                  'Name',
                  ctr.myPool?.driver?.driverName ?? "",
                ),
              ),
              IgnorePointer(
                ignoring: true,
                child: profileTexts(
                  'LicenseNumber',
                  ctr.myPool?.driver?.licenseNumber ?? "",
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
