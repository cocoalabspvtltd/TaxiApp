import 'package:new_app/utils/exports.dart';

class MyBookingRestaurant extends StatelessWidget {
  const MyBookingRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: 'Bookings', centertitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              profileTexts('Check In', ''),
              SizedBox(height: 20),
              profileTexts('Check Out', ''),
              SizedBox(height: 20),
              profileTexts('No.of Guests', ''),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttons('Accept', () {}),
                  SizedBox(width: 20),
                  buttons('Reject', () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
