import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/model/restuarant/booking/booking_restaurant_model.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class BookedRestaurantsScreen extends StatelessWidget {
  const BookedRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: "Booked Restaurants"),
      body: GetBuilder<RestaurantController>(
          id: 'booked_restaurant_list',
          builder: (ctr) {
            final List<BookingRestaurantModel>? bookedList =
                ctr.bookedRestaurantModel?.bookings;
            return ctr.bookedRestaurantListLoader == true
                ? Center(
                    child: CircularProgressIndicator(
                    color: violetcolor,
                  ))
                : ctr.errorBookeRestaurant != null
                    ? WWFailureHandler(
                        failure: ctr.errorBookeRestaurant!, onTap: () {})
                    : ctr.bookedRestaurantModel == null
                        ? Center(
                            child: Text("There is no data"),
                          )
                        : bookedList?.isEmpty ?? true
                            ? Center(
                                child: Text("List is Empty"),
                              )
                            : ListView.builder(
                                itemCount: bookedList?.length,
                                itemBuilder: (context, index) {
                                  final data = bookedList?[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Card(
                                      child: ListTile(
                                        title: Text(
                                          "${data?.name}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        subtitle: Text("${data?.status}"),
                                        trailing: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${data?.date}",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "${data?.time}",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
          }),
    );
  }
}
