import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/model/hotel/hotel_model/room.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/presentation/hotels/bookHotel/book_hotel.dart';
import 'package:new_app/widgets/ww_showToast.dart';

class HotelRoomScreen extends StatefulWidget {
  final List<Room> rooms;

  const HotelRoomScreen({Key? key, required this.rooms}) : super(key: key);

  @override
  _HotelRoomScreenState createState() => _HotelRoomScreenState();
}

class _HotelRoomScreenState extends State<HotelRoomScreen> {
  int? selectedRoomIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: 'Rooms',
        centertitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.rooms.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: index,
                              groupValue: selectedRoomIndex,
                              onChanged: (value) {
                                setState(() {
                                  selectedRoomIndex =
                                  selectedRoomIndex == value ? null : value as int;
                                });
                              },
                            ),
                            Text(
                              "${widget.rooms[index].type!.toUpperCase()}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: MediaQuery.of(context).size.width * 0.26,),
                            Text(
                              "Price :  ₹ ${widget.rooms[index].price}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:20),
                          child: Text(
                            "Bed Type : ${widget.rooms[index].bedType}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 300,
                          child: CarouselSlider.builder(
                            itemCount: widget.rooms[index].images!.length,
                            itemBuilder: (context, innerIndex, realIndex) {
                              return Container(
                                height: 300,
                                width: 400,
                                child: Image.network(
                                  '${widget.rooms[index].images![innerIndex]}',
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
              if (selectedRoomIndex != null) {
                ctr.selectHotelRoom(widget.rooms[selectedRoomIndex!]);
                Get.to(() => BookHotel(selectedRoom: widget.rooms[selectedRoomIndex!]));
              }
              else
                {
                  wwShowToast(
                    "Please select room",
                    status: Status.failure,
                  );
                }
            }),
          ],
        ),
      ),
    );
  }
}
