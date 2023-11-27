import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/model/hotel/hotel_model/hotel_model.dart';
import 'package:new_app/presentation/hotels/bookHotel/selected_rooms.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/presentation/hotels/bookHotel/book_hotel.dart';
import 'package:new_app/presentation/restaurant/01_widgets/restaurant_widgets.dart';
import 'package:new_app/widgets/map_view_screen.dart';

class HotelDetailScreen extends StatelessWidget {
  final String ratingValue;
  final double doublevalue;
  const HotelDetailScreen({super.key, required this.ratingValue, required this.doublevalue});

  @override
  Widget build(BuildContext context) {
    int numberOfStars = doublevalue.round(); // Round to the nearest whole number

    List<Widget> stars = List.generate(
      5,
          (index) => Icon(
        index < numberOfStars ? Icons.star : Icons.star_border,
        color: Colors.yellow,
        size: 20,
      ),
    );
    return Scaffold(
        appBar: appBars(
          text: 'Hotel Description',
          centertitle: true,
        ),
        body: GetBuilder<HotelController>(
          id: "hotel_detail",
          builder: (ctr) {
            final HotelModel? hotelDetail = ctr.hotelDetail;
            return ctr.hotelDetailsFailure != null
                ? Center(child: Text('something went wrong'))
                : ctr.hotelDetail == null
                    ? Center(child: CircularProgressIndicator())
                    : SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text("${ratingValue}",style: s11,),
                                      SizedBox(width: 5),
                                      Row(children: stars),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    width: 500,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                    child: hotelDetail!.image != null
                                        ? Image.network(
                                            hotelDetail!.image!,
                                            fit: BoxFit.cover,
                                          )
                                        : Center(
                                            child: Text('Image URL is null'),
                                          ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text('${hotelDetail!.hotelName ?? ""}',
                                      style: s11),
                                  const SizedBox(height: 5),
                                  Text('${hotelDetail!.address ?? ""}',
                                      style: s11),
                                  Text("${hotelDetail!.city!}",style: s11),
                                  Row(
                                    children: [
                                      Text("${hotelDetail!.district!}/${hotelDetail!.state!}",style: s11),
                                      Spacer(),
                                      Text("Type: ${hotelDetail!.type}",style: s15)
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  // hotelDetail.rooms!.isEmpty?Text("") :
                                  // Text('Select Room', style: s11),
                                  // const SizedBox(height: 10),
                                  // SizedBox(
                                  //   height: 80.0,
                                  //   child: ListView.builder(
                                  //     shrinkWrap: true,
                                  //     scrollDirection: Axis.horizontal,
                                  //     itemCount: ctr.hotelDetail?.rooms?.length,
                                  //     itemBuilder: (context, index) {
                                  //       return Column(
                                  //         children: [
                                  //             Text("Type : ${ctr.hotelDetail?.rooms![index].type}")
                                  //         ],
                                  //       );
                                  //       // Image.network(
                                  //       //   ctr.hotelDetail?.rooms?[index].images
                                  //       //           ?.first ??
                                  //       //       '',
                                  //       //   height: 40.0,
                                  //       //   width: 80.0,
                                  //       // );
                                  //     },
                                  //   ),
                                  // ),

                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(child: restuarantIcons()),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          _showFormDialog(context, hotelDetail);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: yellowColor),
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
                            MapViewWidget(
                                latitude: hotelDetail.latitude,
                                longitude: hotelDetail.longitude),
                             SizedBox(height: 20),
                          ],
                        ),
                      );
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttons('Select Rooms', () {
                final ctr = Get.find<HotelController>();
                final rooms = ctr.hotelDetail?.rooms ?? [];
                // if (ctr.hotelDetail?.rooms?.isNotEmpty ?? false) {
                //   ctr.selectHotelRoom(ctr.hotelDetail?.rooms!.first);
                // }
                Get.to(() => HotelRoomScreen(rooms: rooms));
                // Get.to(() => BookHotel());
              }),
            ],
          ),
        )
    //     bottomNavigationBar: Padding(
    // padding: const EdgeInsets.all(15.0),
    // child: Row(
    // mainAxisAlignment: MainAxisAlignment.end,
    // children: [
    // buttons('Book now', () {
    // final ctr = Get.find<HotelController>();
    // if (ctr.hotelDetail?.rooms?.isNotEmpty ?? false) {
    // ctr.selectHotelRoom(ctr.hotelDetail?.rooms![0]);
    // }
    // Get.to(() => BookHotel());
    // }),
    // ],
    // ),
    // )
    );
  }
}

Future<void> _showFormDialog(
    BuildContext context, HotelModel? hotelModel) async {
  String comment = ''; // Initialize variables to hold form data
  double? _ratingValue;
  int intValue = 0;
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
                      full: Icon(Icons.star, color: violetcolor),
                      half: Icon(
                        Icons.star_half,
                        color: violetcolor,
                      ),
                      empty: Icon(
                        Icons.star_outline,
                        color: violetcolor,
                      )),
                  onRatingUpdate: (value) {
                    _ratingValue = value;
                    intValue = _ratingValue!.toInt();
                  }),
              SizedBox(
                height: 10,
              ),
              // Add form fields here
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Comment',
                  labelStyle:
                      TextStyle(color: violetcolor), // Change label color
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: violetcolor), // Change border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: violetcolor), // Change focused border color
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                ),
                style: TextStyle(color: violetcolor),
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
            child: Text(
              'Cancel',
              style: TextStyle(color: violetcolor),
            ),
          ),

          GetBuilder<HotelController>(
              id: 'booking_btn',
              builder: (ctr) {
                return ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: violetcolor),
                    onPressed: () {
                      ctr.apihotelreviewSubmit(
                          hotelModel?.id ?? 0, intValue, comment);
                    },
                    child: ctr.hotelBookingLoader == true
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

Widget name(String label) {
  return Row(
    children: [
      Text(label, style: s16),
      Text(' per day/night', style: s14),
    ],
  );
}
