import 'package:new_app/utils/exports.dart';
import 'package:new_app/controller/home/home_controller.dart';

import '../../widgets/ww_errorFailureHandler.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: 'Invites', centertitle: true),
      body: Padding(
        padding: e8,
        child: GetBuilder<HomeController>(
            id: "trip_pool_invites",
            builder: (ctr) {
              return ctr.tripPoolListLoader
                  ? Center(child: CircularProgressIndicator())
                  : ctr.tripPoolListExceptions != null
                      ? WWFailureHandler(
                          failure: ctr.tripPoolListExceptions!,
                          onTap: () => ctr.getTripPoolInvitesList(),
                        )
                      : (ctr.tripPoolList?.isEmpty ?? true)
                          ? Center(
                              child: Text(
                                "No invites",
                                style: s2.copyWith(color: blackColor),
                              ),
                            )
                          : ListView.builder(
                              itemCount: ctr.tripPoolList?.length,
                              itemBuilder: (context, index) => Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 10,
                                ),
                                child: Card(
                                    child: Padding(
                                  padding: e7,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: yellowColor,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                  'Price : Rs ${ctr.tripPoolList?[index].price ?? ''}',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: blackColor)),
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Text(
                                              '${ctr.tripPoolList?[index].userCount ?? '0'} people',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: greyColor)),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      IgnorePointer(
                                        ignoring: true,
                                        child: profileTexts(
                                          'Name',
                                          ctr.tripPoolList?[index].name ?? '',
                                        ),
                                      ),
                                      IgnorePointer(
                                        ignoring: true,
                                        child: profileTexts(
                                            'From',
                                            ctr.tripPoolList?[index].from ??
                                                ''),
                                      ),
                                      IgnorePointer(
                                        ignoring: true,
                                        child: profileTexts('To',
                                            ctr.tripPoolList?[index].to ?? ''),
                                      ),
                                      SizedBox(height: 20),
                                      invitebutton(
                                        'Accept',
                                        'Reject',
                                        ctr.tripPoolList?[index].id ?? 0,
                                      )
                                    ],
                                  ),
                                )),
                              ),
                            );
            }),
      ),
    );
  }
}

Widget invitebutton(String label, String text, int id) {
  return GetBuilder<HomeController>(
    id: "trip_pool_invites_btn",
    builder: (ctr) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customButton(
            txt: label,
            width: 90.0,
            height: true,
            color: violetcolor,
            loading: ctr.acceptBookingLoader,
            onpressed: () {
              ctr.acceptOrRejectPoolInvitedFn(
                id: id,
                acceptOrRejectPoolInvite: AcceptOrRejectBooking.accept,
              );
            },
          ),
          customButton(
            txt: text,
            width: 90.0,
            height: true,
            color: violetcolor,
            loading: ctr.rejectBookingLoader,
            onpressed: () {
              ctr.acceptOrRejectPoolInvitedFn(
                id: id,
                acceptOrRejectPoolInvite: AcceptOrRejectBooking.reject,
              );
            },
          ),
        ],
      );
    },
  );
}
