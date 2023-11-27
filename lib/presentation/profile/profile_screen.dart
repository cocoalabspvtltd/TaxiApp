import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/model/profile/profile_user_model.dart';
import 'package:new_app/widgets/appbar.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: 'Profile',
        centertitle: true,
      ),
      body: GetBuilder<VehicleController>(
        id: "profileListLoader",
        builder: (ctr) {
          return ctr.profileListLoader
              ? Center(child: CircularProgressIndicator())
              :
            ctr.profileListFailure != null
              ? WWFailureHandler(
            failure: ctr.profileListFailure!,
            onTap: () {
              ctr.apiProfileList();
            },
          )
              : ProfileListScreenStateless(data: ctr.profileListing!.user);
        },
      ),
    );
  }
}

class ProfileListScreenStateless extends StatelessWidget {
  final ProfileUserModel? data;

  const ProfileListScreenStateless({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
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
                    color: violetVColor,
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
                          "${data!.profilePhotoPath}",
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
                        "${data!.name ?? ""}",
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
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        alignment: FractionalOffset.center,
                        decoration: BoxDecoration(
                          color: Colors.white30,
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
                                "${data!.email ?? ""}",
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
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        alignment: FractionalOffset.center,
                        decoration: BoxDecoration(
                          color: Colors.white30,
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
                                "${data!.phone ?? ""}",
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
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        alignment: FractionalOffset.center,
                        decoration: BoxDecoration(
                          color: Colors.white30,
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
                                "${data!.dob ?? "Dob"}",
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
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        alignment: FractionalOffset.center,
                        decoration: BoxDecoration(
                          color: Colors.white30,
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
                                "Referral Code : ${data!.referralCode ?? ""}",
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
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
                      width: double.infinity,
                      height: 0.5,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
