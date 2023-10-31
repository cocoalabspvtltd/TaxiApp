import 'package:new_app/constants/decorations.dart';
import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_initialState.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/presentation/auth/login_screen.dart';
import 'package:new_app/presentation/auth/widgets/auth_widgets.dart';
import 'package:new_app/presentation/home/home_screen.dart';
import 'package:new_app/presentation/hotels/myHotels/myHotelEdit.dart';
import 'package:new_app/presentation/restaurant/myRestaurant/myRestaurantEdit.dart';
import 'package:new_app/presentation/vehicle/ownerVehicle/ownerDriverDetails.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_showToast.dart';

class UsersDetailScreen extends StatelessWidget {
  const UsersDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: GetBuilder<AuthController>(
          id: 'LoginPageSwitch',
          builder: (ctr) {
            return Column(
              children: [
                SizedBox(height: height(context, 0.1)),
                Image.asset(logo, height: 120, width: 120),
                const SizedBox(height: 10),
                Text(ctr.isLoginPage ? 'Welcome back,' : 'Register Now',
                    style: s1),
                const SizedBox(height: 20),
                ColoredBox(
                    color: whiteColor,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          tab("LogIn", ctr.isLoginPage,
                              () => ctr.isLoginPageFun()),
                          tab("Register", !ctr.isLoginPage,
                              () => ctr.isLoginPageFun()),
                        ])),
                const SizedBox(height: 30),
                SizedBox(
                    child: ctr.isLoginPage
                        ? const LoginScreen()
                        : UserTypeWidgets())
              ],
            );
          }),
    ));
  }
}

class UserTypeWidgets extends StatelessWidget {
  const UserTypeWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ctr = Get.find<AuthController>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text('User Type', style: s11),
              const SizedBox(height: 10),
              Row(
                children: [
                  GetBuilder<AuthController>(
                    id: 'signUpvehicleError',
                    builder: (_) {
                      return Expanded(
                        child: Card(
                          shape: shapeDecoration(_.signUpvehicleError),
                          child: ExpansionTile(
                              title: const Text('Vehicle Owner'),
                              onExpansionChanged: (v) {
                                _.vehicleShowCheckBox = !v;
                                _.update(['vehicleShowCheckBox']);
                              },
                              leading: const Icon(Icons.person_outline,
                                  color: violetcolor),
                              trailing: const Icon(Icons.arrow_drop_down,
                                  color: violetcolor),
                              children: [
                                OwnerDriverDetail(
                                    ctr: Get.find<VehicleController>(),
                                    type: 'add')
                              ]),
                        ),
                      );
                    },
                  ),
                  GetBuilder<AuthController>(
                    id: 'vehicleShowCheckBox',
                    builder: (_) {
                      return _.vehicleShowCheckBox
                          ? Checkbox(
                              value: _.vehicleApiCall,
                              onChanged: (s) {
                                _.vehicleApiCall = s!;
                                _.signUpvehicleError = null;
                                _.update([
                                  'vehicleShowCheckBox',
                                  'signUpvehicleError'
                                ]);
                              })
                          : const SizedBox();
                    },
                  )
                ],
              ),
              GetBuilder<AuthController>(
                id: 'signUpHotelError',
                builder: (_) {
                  return Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: shapeDecoration(_.signUpHotelError),
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              onExpansionChanged: (v) {
                                _.hotelShowCheckBox = !v;
                                _.update(['hotelShowCheckBox']);
                              },
                              title: const Text('Hotel Owner'),
                              leading: const Icon(Icons.person_outline,
                                  color: violetcolor),
                              trailing: const Icon(Icons.arrow_drop_down,
                                  color: violetcolor),
                              children: [
                                MyHotelEditDetailsWidget(
                                    type: AddOrEditHotel.add,
                                    controller: Get.find<HotelController>()),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GetBuilder<AuthController>(
                        id: 'hotelShowCheckBox',
                        builder: (_) {
                          return _.hotelShowCheckBox
                              ? Checkbox(
                                  value: _.hotelApiCall,
                                  onChanged: (s) {
                                    _.hotelApiCall = s!;
                                    _.signUpHotelError = null;
                                    _.update([
                                      'hotelShowCheckBox',
                                      'signUpHotelError'
                                    ]);
                                  })
                              : const SizedBox();
                        },
                      )
                    ],
                  );
                },
              ),
              Row(
                children: [
                  GetBuilder<AuthController>(
                    id: 'signUpRestaurantError',
                    builder: (_) {
                      return Expanded(
                        child: Card(
                          shape: shapeDecoration(_.signUpRestaurantError),
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                                onExpansionChanged: (v) {
                                  _.restaurantShowCheckBox = !v;
                                  _.update(['restaurantShowCheckBox']);
                                },
                                title: const Text('Restuarant  Owner'),
                                leading: const Icon(Icons.person_outline,
                                    color: violetcolor),
                                trailing: const Icon(Icons.arrow_drop_down,
                                    color: violetcolor),
                                children: [MyRestaurantEditWidget()]),
                          ),
                        ),
                      );
                    },
                  ),
                  GetBuilder<AuthController>(
                    id: 'restaurantShowCheckBox',
                    builder: (_) {
                      return _.restaurantShowCheckBox
                          ? Checkbox(
                              value: _.restaurantApiCall,
                              onChanged: (s) {
                                _.restaurantApiCall = s!;
                                _.signUpRestaurantError = null;
                                _.update([
                                  'restaurantShowCheckBox',
                                  'signUpRestaurantError'
                                ]);
                              })
                          : const SizedBox();
                    },
                  )
                ],
              ),
              GetBuilder<AuthController>(
                id: 'signUpTravellerError',
                builder: (_) {
                  return Card(
                      shape: r1.copyWith(
                          side: BorderSide(
                              color: _.signUpTravellerError
                                  ? Colors.green
                                  : Colors.transparent,
                              width: 2)),
                      child: ListTile(
                          onTap: () {
                            _.signUpTravellerError = !_.signUpTravellerError;
                            _.update(['signUpTravellerError']);
                          },
                          title: const Text('Traveller'),
                          leading: const Icon(Icons.person_outline,
                              color: violetcolor)));
                },
              ),
            ],
          ),
        ),
        GetBuilder<AuthController>(
            id: 'userTypeLoader',
            builder: (_) {
              return customButton(
                height: true,
                context: context,
                txt: 'continue',
                loading: _.userTypeLoader,
                color: violetcolor,
                onpressed: () async {
                  ctr.userTypeLoader = true;
                  ctr.update(['userTypeLoader']);

                  if (_.hotelApiCall) {
                    await Get.find<HotelController>()
                        .editMyHotelDetails(type: AddOrEditHotel.add);
                  } else {
                    _.signUpHotelError = null;
                    _.update(['signUpHotelError']);
                  }

                  if (_.restaurantApiCall) {
                    Get.find<RestaurantController>().restaurantAddOrEdit =
                        RestaurantAddOrEdit.add;
                    await Get.find<RestaurantController>()
                        .apiEditMyRestaurant();
                  } else {
                    _.signUpRestaurantError = null;
                    _.update(['signUpRestaurantError']);
                  }

                  if (_.vehicleApiCall) {
                    await Get.find<VehicleController>().apiVehicleEdit('add');
                  } else {
                    _.signUpvehicleError = null;
                    _.update(['signUpvehicleError']);
                  }

                  ctr.userTypeLoader = false;
                  ctr.update(['userTypeLoader']);

                  if (ctr.signUpRestaurantError == true ||
                      ctr.signUpvehicleError == true ||
                      ctr.signUpHotelError == true) {
                  } else {
                    if ((ctr.signUpRestaurantError == null) &&
                        (ctr.signUpvehicleError == null) &&
                        (ctr.signUpHotelError == null) &&
                        !ctr.signUpTravellerError) {
                      wwShowToast('Please a option', status: Status.failure);
                    } else {
                      ctr.isLoginPage = true;
                      ctr.update(['LoginPageSwitch']);
                      Get.to(() => HomeScreen());
                    }
                  }
                },
              );
            }),
        const SizedBox(height: 20),
      ],
    );
  }

  RoundedRectangleBorder shapeDecoration(bool? error) {
    return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: error == null
              ? Colors.transparent
              : error
                  ? Colors.red
                  : Colors.green,
          width: 2,
        ));
  }
}

Widget baggage(
    String st, String label, BuildContext context, String st1, String label1) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Text('Baggage', style: s6),
    const SizedBox(height: 15),
    Row(
      children: [
        SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: whiteColor),
                child: Text('Yes', style: s3),
                onPressed: () {})),
        const SizedBox(width: 10),
        SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: whiteColor),
                child: Text('No', style: s3),
                onPressed: () {})),
      ],
    ),
  ]);
}
