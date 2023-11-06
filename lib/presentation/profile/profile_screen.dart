import 'package:cached_network_image/cached_network_image.dart';
import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/utils/exports.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});
  final ctr = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    print("Name : ${ctr.userName}");
    print("Email : ${ctr.userEmail}");
    print("Code : ${ctr.referralCode}");
    return Scaffold(
      appBar: appBars(text: 'Profile'),
      backgroundColor: violetcolor,
      body: SafeArea(
          child:Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
                    Container(
                      alignment: FractionalOffset.center,
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                      decoration: BoxDecoration(
                          color: greyColor,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 4,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ]),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.black87,
                              radius: 60,
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl:
                                // '${data.baseUrl}${data.userDetails!.imageUrl}',
                                "",
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black12,
                                        image: DecorationImage(
                                            image: imageProvider, fit: BoxFit.cover),
                                      ),
                                    ),
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) => Center(
                                  child: Image(
                                    image: AssetImage(
                                      'assets/images/ic_avatar.png',
                                    ),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            alignment: FractionalOffset.center,
                            child: Text(
                              "${ctr.loginUserData?.user?.name ?? ctr.userName ?? ''}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 15, 20, 5),
                            width: double.infinity,
                            height: 0.5,
                            color: Colors.white38,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              alignment: FractionalOffset.center,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.mail_outline,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Text(
                                      "${ctr.loginUserData?.user?.email ?? ctr.userEmail ?? ''}",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0),
                                    ),
                                    flex: 1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 20, 5),
                            width: double.infinity,
                            height: 0.5,
                            color: Colors.white38,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              alignment: FractionalOffset.center,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone_in_talk,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Text(
                                      "${ctr.loginUserData?.user?.phone}",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0),
                                    ),
                                    flex: 1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 20, 5),
                            width: double.infinity,
                            height: 0.5,
                            color: Colors.white38,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              alignment: FractionalOffset.center,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Text(
                                      "${ctr.loginUserData?.user?.dob}",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0),
                                    ),
                                    flex: 1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 20, 5),
                            width: double.infinity,
                            height: 0.5,
                            color: Colors.white38,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              alignment: FractionalOffset.center,
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.card_membership,
                                    color: Colors.white,
                                    size: 26,
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    child: Text(
                                      "Referral Code : ${ctr.loginUserData?.user?.referralCode ?? ctr.referralCode ?? ''}",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0),
                                    ),
                                    flex: 1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 20, 5),
                            width: double.infinity,
                            height: 0.5,
                            color: Colors.white38,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
