import 'package:new_app/presentation/trip/drivers_request_details_screen.dart';
import 'package:new_app/utils/exports.dart';

class DriversRequestsScreen extends StatelessWidget {
  const DriversRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: 'Driver Requests'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 5,right: 5,top:15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RequestCard()
            ],
          ),
        ),
      ),
    );
  }
}

class RequestCard extends StatelessWidget {
  const RequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              elevation: 2,
              child: ListTile(
                onTap: (){
                  Get.to(() => DriversRequestsDetailsScreen());
                },
                isThreeLine: true,
                title: Row(
                  children: [
                    Text('User Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                    Spacer(),
                    Text('Pool User',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green),),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text('Source :',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                    SizedBox(height: 2),
                    Text('Destination :',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                    SizedBox(height: 2),
                    Text('Distance :',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                    SizedBox(height: 2),
                  ],
                ),
              )),
        );
      },
    );
  }
}
