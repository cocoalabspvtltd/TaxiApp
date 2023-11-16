import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/model/driver/driver_request_model/driver_request_model.dart';
import 'package:new_app/presentation/trip/drivers_request_details_screen.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class DriversRequestsScreen extends StatelessWidget {
  const DriversRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBars(text: 'Driver Requests'),
        body:

        GetBuilder<VehicleController>(
          id: 'driverRequestListLoader',
          builder: (_) {
            return  _.driverRequestListLoader
                ? Center(child: CircularProgressIndicator())
                :
            _.vehicleReviewFailure != null
                    ? WWFailureHandler(
                        failure: _.driverRequestListFailure!,
                        onTap: () => _.driverRequestList())
                    : _.driverRequestListing?.requests?.isEmpty ?? true
                        ? Center(child: Text('Data empty'))
                        : DriverRequestListStateless(
                            data: _.driverRequestListing?.requests);
          },
        )

    );
  }
}

class DriverRequestListStateless extends StatelessWidget {
  final List<DriverRequestModel>? data;
  const DriverRequestListStateless({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: data?.length ?? 0,
          itemBuilder: (context, index) {
            bool hasPool = data![index].pool != null;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  elevation: 2,
                  child: ListTile(
                    onTap: () {
                      final requestDetails = data![index];
                      Get.to(() => DriversRequestsDetailsScreen(),arguments: requestDetails);
                    },
                    isThreeLine: true,
                    title: Text(
                      data![index].name ?? '',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          'Source : ${data![index].from ?? ''}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Destination : ${data![index].to ?? ''}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Distance : ${data![index].distance ?? ''}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                        SizedBox(height: 2),
                        if (hasPool)
                          Text(
                            'Pool User',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.green),
                          ),
                      ],
                    ),
                  )),
            );
          },
        )
    );
  }
}
