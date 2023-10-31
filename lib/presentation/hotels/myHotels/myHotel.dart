import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/presentation/hotels/myHotels/room_list.dart';
import 'package:new_app/presentation/hotels/myHotels/myHotelEdit.dart';
import 'package:new_app/presentation/hotels/myHotels/my_hotel_reviews.dart';
import 'package:new_app/presentation/hotels/myHotels/my_hotel_bookings.dart';

import '../../../widgets/ww_errorFailureHandler.dart';

class MyHotelScreen extends StatelessWidget {
  const MyHotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final uCtr = Get.find<AuthController>();

    return Scaffold(
      appBar: appBars(
        text: 'My Hotel',
        centertitle: true,
      ),
      body: GetBuilder<HotelController>(
        id: "my_hotel",
        builder: (ctr) {
          return ctr.getMyHotelLoader
              ? Center(child: CircularProgressIndicator())
              : uCtr.loginUserData?.user?.isHotel == false
                  ? customButton(
                      txt: 'Add Hotel',
                      height: true,
                      color: violetcolor,
                      onpressed: () => Get.to(
                        () => MyHotelEditDetails(type: AddOrEditHotel.add),
                      ),
                    )
                  : ctr.myHotelExceptions != null
                      ? WWFailureHandler(
                          failure: ctr.myHotelExceptions!,
                          onTap: () => ctr.fetchMyHotel(),
                        )
                      : MyHotelStateless(ctr: ctr);
        },
      ),
    );
  }
}

class MyHotelStateless extends StatelessWidget {
  final HotelController ctr;
  const MyHotelStateless({
    super.key,
    required this.ctr,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: e7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Stack(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      ctr.myHotel?.image ?? "",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text('${ctr.myHotel?.hotelName ?? ""}'),
            SizedBox(height: 10),
            Text('${ctr.myHotel?.address ?? ""}'),
            SizedBox(height: 10),
            Text('${ctr.myHotel?.hotelPhone ?? ""}'),
            SizedBox(height: 30),
            customButton(
              color: violetcolor,
              height: false,
              context: context,
              txt: 'Edit Details',
              onpressed: () {
                ctr.updateDatas();
                Get.to(() => MyHotelEditDetails());
              },
            ),
            SizedBox(height: 20),
            customButton(
              color: violetcolor,
              height: false,
              context: context,
              txt: 'Rooms',
              onpressed: () {
                ctr.getMyHotelRoomsList();
                Get.to(() => RoomList());
              },
            ),
            SizedBox(height: 20),
            customButton(
              color: violetcolor,
              height: false,
              context: context,
              txt: 'Bookings',
              onpressed: () {
                ctr.apiOwnerBookingList();
                Get.to(() => MyHotelBookings());
              },
            ),
            // SizedBox(height: 20),
            // customButton(
            //   color: violetcolor,
            //   height: false,
            //   context: context,
            //   txt: 'List of Rooms',
            //   // onpressed: () => Get.to(() => RoomDetails())),

            //   onpressed: () => null,
            // ),
            SizedBox(height: 20),
            customButton(
              color: violetcolor,
              height: false,
              context: context,
              txt: 'Reviews',
              onpressed: () {
                ctr.getMyHotelReviewsList();
                Get.to(() => MyHotelReviews());
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
