import 'package:intl/intl.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/model/hotel/hotel_model/room.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_showToast.dart';
import 'package:new_app/model/hotel/guest_model/guest_model.dart';

import '../01_widgets/guests_tile.dart';
import '../01_widgets/select_room.dart';

class BookHotel extends GetView<HotelController> {
  final Room selectedRoom;
  const BookHotel({super.key, required  this.selectedRoom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: 'Book Hotel',
        centertitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Choose your room', style: s11),
            const SizedBox(height: 10),
            SelectRoom(),
            const SizedBox(height: 10),
            Row(
              children: [
                Text('Check in time', style: s6),
                const SizedBox(width: 80),
                Expanded(
                  child: searchFormField(
                    st: 'CheckIn',
                    readOnly: true,
                    controller: controller.checkInDatePickerCtr,
                    onTap: () async {
                      DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 365)),
                      );
                      if (date != null) {
                        controller.checkInDatePickerCtr.text =
                            DateFormat('dd-MM-yyyy').format(date);
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text('Check out time', style: s6),
                const SizedBox(width: 70),
                Expanded(
                  child: searchFormField(
                    st: 'CheckOut',
                    readOnly: true,
                    controller: controller.checkOutDatePickerCtr,
                    onTap: () async {
                      formatDateTime(controller.checkInDatePickerCtr.text);
                      if (controller.checkInDatePickerCtr.text.isNotEmpty) {
                        DateTime? date = await showDatePicker(
                          context: context,
                          initialDate:
                              controller.checkInDatePickerCtr.text.isEmpty
                                  ? DateTime.now()
                                  : DateTime.parse(
                                      formatDateTime(
                                          controller.checkInDatePickerCtr.text),
                                    ),
                          firstDate:
                              controller.checkInDatePickerCtr.text.isEmpty
                                  ? DateTime.now()
                                  : DateTime.parse(
                                      formatDateTime(
                                          controller.checkInDatePickerCtr.text),
                                    ),
                          lastDate: DateTime.now().add(Duration(days: 365)),
                        );
                        if (date != null) {
                          controller.checkOutDatePickerCtr.text =
                              DateFormat('dd-MM-yyyy').format(date);
                        }
                      } else {
                        wwShowToast("Please select check-in time");
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: buttons("Add Guest", () => addGuestDialog()),
            ),
            GuestsTile(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 40.0,
        width: Get.width - 30,
        child: GetBuilder<HotelController>(
          id: "book_hotel",
          builder: (ctr) {
            return ElevatedButton(
              onPressed: () {
                if (controller.selectedRoom == null) {
                  wwShowToast("Please Select a Room", status: Status.failure);
                  return;
                } else if (controller.checkInDatePickerCtr.text.isEmpty) {
                  wwShowToast(
                    "Please Select check-in time",
                    status: Status.failure,
                  );
                  return;
                } else if (controller.checkOutDatePickerCtr.text.isEmpty) {
                  wwShowToast(
                    "Please Select check-out time",
                    status: Status.failure,
                  );
                  return;
                } else {
                  ctr.bookHotel();
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: violetcolor),
              child: ctr.hotelBookingLoader
                  ? Center(child: const CircularProgressIndicator())
                  : Text(
                      "Confirm Booking",
                      style: s2,
                    ),
            );
          },
        ),
      ),
    );
  }
}

String formatDateTime(String date) {
  return "${date.split("-").reversed.toList().join("-")} 00:00:00";
}

void addGuestDialog() {
  final ctr = Get.find<HotelController>();
  Get.defaultDialog(
    title: "Add Guest",
    contentPadding: EdgeInsets.all(10.0),
    titleStyle: TextStyle(color: Colors.black),
    textConfirm: "Confirm",
    textCancel: "Cancel",
    cancelTextColor: violetcolor,
    confirmTextColor: Colors.white,
    buttonColor: violetcolor,
    barrierDismissible: false,
    radius: 10,
    onConfirm: () {
      if (ctr.guestNameCtr.text.isEmpty) {
        wwShowToast("Enter name", status: Status.failure);
        return;
      } else if (ctr.guestPhoneCtr.text.isEmpty) {
        wwShowToast("Enter phone number", status: Status.failure);
        return;
      } else if (ctr.guestAgeCtr.text.isEmpty) {
        wwShowToast("Enter age", status: Status.failure);
        return;
      } else if (ctr.guestGenderCtr.text.isEmpty) {
        wwShowToast("Enter gender", status: Status.failure);
        return;
      } else if (ctr.guestAddressCtr.text.isEmpty) {
        wwShowToast("Enter address", status: Status.failure);
        return;
      } else {
        ctr.addGuests(
          GuestModel(
            age: int.parse(ctr.guestAgeCtr.text),
            name: ctr.guestNameCtr.text,
            phone: ctr.guestPhoneCtr.text,
            gender: ctr.guestGenderCtr.text,
            address: ctr.guestAddressCtr.text,
          ),
        );
        ctr.guestAgeCtr.clear();
        ctr.guestNameCtr.clear();
        ctr.guestPhoneCtr.clear();
        ctr.guestGenderCtr.clear();
        ctr.guestAddressCtr.clear();
        Get.back();
      }
    },
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name', style: s6),
        const SizedBox(height: 10),
        searchFormField(st: 'Enter name', controller: ctr.guestNameCtr),
        const SizedBox(height: 10),
        Text('Phone', style: s6),
        const SizedBox(height: 10),
        searchFormField(
            st: 'Enter phone number', controller: ctr.guestPhoneCtr),
        const SizedBox(height: 10),
        Text('Age', style: s6),
        const SizedBox(height: 10),
        searchFormField(st: 'Enter age', controller: ctr.guestAgeCtr),
        const SizedBox(height: 10),
        Text('Gender', style: s6),
        const SizedBox(height: 10),
        searchFormField(st: 'Enter gender', controller: ctr.guestGenderCtr),
        const SizedBox(height: 10),
        Text('Address', style: s6),
        const SizedBox(height: 10),
        searchFormField(st: 'Enter address', controller: ctr.guestAddressCtr),
      ],
    ),
  );
}
