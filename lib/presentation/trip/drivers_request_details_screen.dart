import 'package:new_app/utils/exports.dart';

class DriversRequestsDetailsScreen extends StatelessWidget {
  const DriversRequestsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: "Details"),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
                elevation: 2,
                child:Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('User Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                          Spacer(),
                          Text('Pool User',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green),),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text('Source :',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                      SizedBox(height: 2),
                      Text('Destination :',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                      SizedBox(height: 2),
                      Text('Distance :',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: violetcolor, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              child: Text('Accept', style: s2),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            decoration: BoxDecoration(
                                color: redColor, borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                              child: Text('Reject', style: s2),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

