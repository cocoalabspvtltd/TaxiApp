import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_model.dart';
import 'package:new_app/presentation/restaurant/01_widgets/restaurant_widgets.dart';
import 'package:new_app/utils/exports.dart';
import 'package:intl/intl.dart';
import 'package:new_app/widgets/map_view_screen.dart';


// ignore: must_be_immutable
class RestuarantDetailScreen extends StatelessWidget {
  RestuarantDetailScreen({super.key});

  RestaurantModel? resData = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBars(
          text: 'Restaurant Description',
          centertitle: true,
        ),
        body: GetBuilder<RestaurantController>(
            id: 'restaurant_detail',
            builder: (ctr) {
              final RestaurantModel? restaurantDetail = ctr.restaurantDetail;
              resData = restaurantDetail;
              return ctr.restaurantDetailLoader == true
                  ? Center(
                      child: CircularProgressIndicator(
                        color: violetcolor,
                      ),
                    )
                  : restaurantDetail == null
                      ? Center(
                          child: Text(" no data"),
                        )
                      : SingleChildScrollView(
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Text('Restuarant Name', style: s11),
                                  const SizedBox(height: 5),
                                  Text(restaurantDetail.name ?? "", style: s12),
                                  const SizedBox(height: 10),
                                  Text('Restuarant Address', style: s11),
                                  const SizedBox(height: 5),
                                  Text(restaurantDetail.address ?? "",
                                      style: s12),
                                  const SizedBox(height: 10),
                                  if (restaurantDetail.foods != [] ||
                                      restaurantDetail.foods != null) ...[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Text('Menu Summary', style: s11),
                                        // const SizedBox(height: 5),
                                        // Text('Dish 1', style: s12),
                                        // Text('Dish 2', style: s12),
                                        // Text('Dish 3', style: s12),
                                        // Text('Dish 4', style: s12),

                                        Column(
                                          children:
                                              restaurantDetail.foods?.map((e) {
                                                    return Row(
                                                      children: [
                                                        Text(e["name"]),
                                                        SizedBox(width: 10),
                                                        Text("\₹${e["price"]}"),
                                                      ],
                                                    );
                                                  }).toList() ??
                                                  [],
                                        ),
                                      ],
                                    ),
                                  ],
                                  // const SizedBox(height: 10),
                                  // Text('Today\'s Offer', style: s11),
                                  // const SizedBox(height: 5),
                                  // Text('20% off on every order ', style: s13),
                                  // const SizedBox(height: 10),

                                  restaurantDetail.distance != null
                                      ? Column(
                                          children: [
                                            Text('Distance', style: s11),
                                            const SizedBox(height: 5),
                                            Text(
                                                restaurantDetail.distance ?? "",
                                                style: s12),
                                          ],
                                        )
                                      : SizedBox(),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.center,
                                    children: [
                                      Align(
                                          child: restuarantIcons(
                                              restaurantModel: restaurantDetail)),
                                      SizedBox(width: 10,),
                                      InkWell(
                                        onTap: (){
                                          _showFormDialog(context,restaurantDetail);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50), color: yellowColor),
                                          child: const Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Icon(Icons.star, size: 28),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            MapViewWidget(latitude:restaurantDetail.latitude,longitude:restaurantDetail.longitude),
                            // maps(context)
                          ],
                        ));
            }),
        bottomNavigationBar: SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('₹ 1500', style: s5),
                    Text('per day/night', style: s14)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    buttons('Book Now', () async {
                      // DateTime? date = await showDatePicker(
                      //   context: context,
                      //   initialDate: DateTime.now(),
                      //   firstDate: DateTime.now(),
                      //   lastDate: DateTime.now().add(Duration(days: 365)),
                      // );
                      final DateTime? date =
                          await showDateTimePicker(context: context);

                      var myFormat = DateFormat('yyyy-MM-dd');

                      if (date != null) {
                        var formattedTime = DateFormat.jm().format(date);
                        String formattedTimeForSending =
                            DateFormat.Hm().format(date);
                        var formattedDateForSending = myFormat.format(date);
                        bookingDialog(context, formattedDateForSending,
                            formattedTime, formattedTimeForSending);
                      }
                      // popup(
                      //     context, 'Restuarant Booked \n        Successfully');
                    }),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Future<dynamic> bookingDialog(
      BuildContext context,
      String formattedDateForSending,
      String formattedTime,
      String formattedTimeForSending) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            // height: MediaQuery.of(context).size.height * .2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10),
                Text(
                  'Are you Sure?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Selected Date:$formattedDateForSending'),
                    SizedBox(height: 5),
                    Text('Selected Time:$formattedTime'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: violetcolor.withOpacity(.5)),
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Cancel')),
                    GetBuilder<RestaurantController>(
                        id: 'booking_btn',
                        builder: (ctr) {
                          return ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: violetcolor),
                              onPressed: () {
                                ctr.apibookRestaurant(
                                    resData?.id ?? 0,
                                    formattedDateForSending,
                                    formattedTimeForSending);
                              },
                              child: ctr.restaurantBookingLoader == true
                                  ? SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: CircularProgressIndicator())
                                  : Text(' Book '));
                        }),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    );
  }
}

Future<DateTime?> showDateTimePicker({
  required BuildContext context,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
}) async {
  initialDate ??= DateTime.now();
  // firstDate ??= initialDate.subtract(const Duration(days: 365 * 100));
  firstDate ??= DateTime.now();
  lastDate ??= firstDate.add(const Duration(days: 365 * 200));

  final DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: initialDate,
    firstDate: firstDate,
    lastDate: lastDate,
  );

  if (selectedDate == null) return null;
  print(selectedDate.toString());
  if (!context.mounted) return selectedDate;

  final now = DateTime.now();
  final diff = now.difference(selectedDate).inDays;
  final TimeOfDay? selectedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.fromDateTime(
        diff == 0 ? DateTime(now.hour, now.minute) : selectedDate),
  );
  print(selectedTime.toString());
  return selectedTime == null
      ? selectedDate
      : DateTime(
          selectedDate.year,
          selectedDate.month,
          selectedDate.day,
          selectedTime.hour,
          selectedTime.minute,
        );
}


Future<void> _showFormDialog(BuildContext context,RestaurantModel? restaurantModel) async {
  String comment = ''; // Initialize variables to hold form data
  double? _ratingValue;
  int intValue=0;
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Review'),
        content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RatingBar(
                  initialRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  ratingWidget: RatingWidget(
                      full:  Icon(Icons.star, color: violetcolor),
                      half:  Icon(
                        Icons.star_half,
                        color:  violetcolor,
                      ),
                      empty:  Icon(
                        Icons.star_outline,
                        color:violetcolor,
                      )),
                  onRatingUpdate: (value) {
                    _ratingValue = value;
                     intValue = _ratingValue!.toInt();
                  }),
              SizedBox(height: 10,),
              // Add form fields here
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Comment',
                  labelStyle: TextStyle(color: violetcolor), // Change label color
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:violetcolor), // Change border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:violetcolor), // Change focused border color
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                ),
                style: TextStyle(color:violetcolor),
                onChanged: (value) {
                  comment = value;
                },
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('Cancel',style: TextStyle(color: violetcolor),),
          ),

          GetBuilder<RestaurantController>(
              id: 'booking_btn',
              builder: (ctr) {
                return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: violetcolor),
                    onPressed: () {
                      ctr.apireviewSubmit(
                          restaurantModel?.id ?? 0,
                          intValue,
                          comment);
                    },
                    child: ctr.restaurantBookingLoader == true
                        ? SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator())
                        : Text(' Review '));
              }),
//           TextButton(
//             onPressed: ()
//             {
//               // Process the form data here (e.g., send it to a server)
//               print('Name: $comment');
//               print("Rate :${_ratingValue.toString()}");
//               print("Id-->${restaurantModel!.id.toString()}");
//               Map<String, dynamic> formData = {
//                 'restaurant_id': restaurantModel!.id.toString(),
//                 'rating': _ratingValue.toString(),
//                 'comment':"${comment}"
//
//               };
//               print("Formdata-->${formData}");
//               try {
//                 var client = http.Client();
//                 var response = await client.post(Uri.parse("http://139.84.138.193/taxiApp/public/api/restaurant/reviews/store"),
//                   body: formData);
// print("resp->${response.body}");
//                 if (response.statusCode == 200) {
//                   print('Successfully requested');
//                   print("Response --->${response.body}");
//                   wwShowToast("Review added successfully", status: Status.success);
//                   Navigator.pop(context);
//                 } else {
//                   print('Request failed with status: ${response.statusCode}');
//                   print("Response --->${response.body}");
//                   wwShowToast("Review not added. Please try again", status: Status.failure);
//                 }
//               } catch (e) {
//                 print('Error: $e');
//                 wwShowToast("Something went wrong. Please try again", status: Status.failure);
//               }
//             },
//             child: Text('Submit',style: TextStyle(color: violetcolor),),
//           ),
        ],
      );
    },
  );
}
