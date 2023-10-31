// import 'package:new_app/presentation/restaurant/myRestaurant/myRestaurantDetailScreen.dart';
// import 'package:new_app/utils/exports.dart';

// class MyRestuarantScreen extends StatelessWidget {
//   const MyRestuarantScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = context.watch<RestuarantController>();
//     return Scaffold(
//         appBar: appBars(text: 'My Restuarant', centertitle: true),
//         body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
//             child: Text('List of Booked Restuarants', style: s11),
//           ),
//           ListView.builder(
//               physics: const NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemCount: controller.data.length,
//               itemBuilder: (context, index) {
//                 final data = controller.data[index];
//                 return listcards(
//                     ontap: () => Get.to(() => const MyRestuarantDetailScreen()),
//                     context: context,
//                     image: data.image,
//                     label: data.name,
//                     label1: data.distance,
//                     label2: data.address,
//                     label3: data.offer);
//               })
//         ]));
//   }
// }

import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_initialState.dart';
import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_model.dart';
import 'package:new_app/presentation/restaurant/myRestaurant/myBookingsListScreen.dart';
import 'package:new_app/presentation/restaurant/myRestaurant/myFoodListScreen.dart';
import 'package:new_app/presentation/restaurant/myRestaurant/myRestaurantEdit.dart';
import 'package:new_app/presentation/review/reviewScreen.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class MyRestuarantScreen extends StatelessWidget {
  const MyRestuarantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: 'My Restuarant',
        centertitle: true,
      ),
      body: GetBuilder<RestaurantController>(
          id: 'owner_myRestaurant_detail',
          builder: (ctr) {
            final RestaurantModel? restaurantData = ctr.ownerMyRestaurantModel;
            print("Respponse${restaurantData}");
            return ctr.ownerMyRestaurantLoader == true
                ? Center(child: CircularProgressIndicator(color: violetcolor))
                : Get.find<AuthController>()
                            .loginUserData
                            ?.user
                            ?.isRestaurant ==
                        false
                    ? customButton(
                        txt: 'Add Restaurant',
                        height: true,
                        color: violetcolor,
                        onpressed: () {
                          ctr.restaurantAddOrEdit = RestaurantAddOrEdit.add;
                          ctr.clearEditableOwnerMyRestaurantDetails();
                          Get.to(() => MyRestaurantEdit());
                        })
                    : ctr.errorOwnerMyRestaurant != null
                        ? WWFailureHandler(
                            failure: ctr.errorOwnerMyRestaurant!,
                            onTap: () => ctr.apiGetOwnerMyRestaurantDetails(),
                          )
                        : RestaurantStateless(
                            restaurantData: restaurantData,
                            ctr: ctr,
                          );
          }),
    );
  }
}

class RestaurantStateless extends StatelessWidget {
  final RestaurantController ctr;
  const RestaurantStateless({
    super.key,
    required this.restaurantData,
    required this.ctr,
  });

  final RestaurantModel? restaurantData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: e7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Stack(
              children: [
                Center(
                    child: CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            NetworkImage(restaurantData?.image ?? ""))),
              ],
            ),
            SizedBox(height: 40),
            Text(restaurantData?.name ?? ""),
            SizedBox(height: 10),
            Text(restaurantData?.address ?? ""),
            SizedBox(height: 10),
            Text(restaurantData?.phone ?? ""),
            SizedBox(height: 30),
            customButton(
                color: violetcolor,
                height: false,
                context: context,
                txt: 'Edit Details',
                onpressed: () {
                  ctr.restaurantAddOrEdit = RestaurantAddOrEdit.edit;
                  ctr.getEditableOwnerMyRestaurantDetails();
                  Get.to(() => MyRestaurantEdit());
                }),
            SizedBox(height: 20),
            customButton(
                color: violetcolor,
                height: false,
                context: context,
                txt: 'Foods',
                onpressed: () {
                  ctr.ownerMyFoodListModel = null;
                  ctr.apiGetOwnerMyFoodList(restaurantData?.id ?? 0);
                  ctr.selectedRestaurantId = restaurantData?.id;
                  Get.to(() => MyRestaurantFoodListScreen());
                }),
            SizedBox(height: 20),
            customButton(
                color: violetcolor,
                height: false,
                context: context,
                txt: 'Bookings',
                onpressed: () {
                  // Get.to(() => MyBookingRestaurant());
                  ctr.apiGetBookingListOwnerMyRestaurantList();
                  Get.to(() => MyBookingsListScreen());
                }),
            SizedBox(height: 20),
            customButton(
                color: violetcolor,
                height: false,
                context: context,
                txt: 'Reviews',
                onpressed: () {
                  ctr.apiGetReviewListOwnerMyRestaurantList();
                  Get.to(() => ReviewScreen());
                }),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
