import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/presentation/hotels/01_widgets/searchHotel.dart';
import 'package:new_app/presentation/hotels/01_widgets/hotelListScreen.dart';

class AvailableHotelScreen extends StatelessWidget {
  const AvailableHotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBars(
            text: 'Hotels', centertitle: true, onpressed: () => Get.back()),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: SearchHotel(),
                ),
                GetBuilder<HotelController>(
                  id: "get_hotel",
                  builder: (ctr) {
                    return customButton(
                      color: violetcolor,
                      height: false,
                      txt: 'Confirm',
                      context: context,
                      loading: ctr.hotelBtnLoader,
                      onpressed: () => ctr.getHotels(),
                    );
                  },
                ),
                const SizedBox(height: 10),
                const Divider(color: greyColor),
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Container(
                //         decoration: BoxDecoration(
                //             border: Border.all(color: greyColor),
                //             borderRadius: BorderRadius.circular(10)),
                //         child: Padding(
                //           padding: const EdgeInsets.all(5.0),
                //           child: Row(
                //             children: const [
                //               Text('Filter'),
                //               SizedBox(width: 5),
                //               Icon(Icons.filter_1, color: greyColor, size: 15)
                //             ],
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: HotelListScreen(),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ));
  }
}
