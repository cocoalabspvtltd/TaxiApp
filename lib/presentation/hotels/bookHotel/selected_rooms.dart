import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/model/hotel/hotel_model/hotel_model.dart';
import 'package:new_app/model/hotel/hotel_model/room.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/presentation/hotels/bookHotel/book_hotel.dart';


class HotelRoomScreen extends StatelessWidget {
  final List<Room> rooms;
  const HotelRoomScreen({super.key, required this.rooms});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBars(
          text: 'Rooms',
          centertitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height, // Set a fixed height, adjust as needed
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: rooms.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 300,
                            child: CarouselSlider.builder(
                              itemCount: rooms[index].images!.length,
                              itemBuilder: (context, innerIndex, realIndex) {
                                return Container(
                                  height: 300,
                                  width: 400,
                                  child: Image.network(
                                    '${rooms[index].images![innerIndex]}',
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                              options: CarouselOptions(
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 5),
                                enlargeCenterPage: true,
                                viewportFraction: 0.9,
                                aspectRatio: 12 / 9,
                              ),
                            ),

                          ),
                          Text("Price :  ${rooms[index].price}",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Type : ${rooms[index].type}",style: TextStyle(fontWeight: FontWeight.bold),),
                          Text("Bed Type : ${rooms[index].bedType}",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      );
                    },
                  ),
                ),

              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttons('Book Now', () {
                final ctr = Get.find<HotelController>();
                if (ctr.hotelDetail?.rooms?.isNotEmpty ?? false) {
                  ctr.selectHotelRoom(ctr.hotelDetail?.rooms!.first);
                }
                Get.to(() => BookHotel());
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

