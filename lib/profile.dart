// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, duplicate_ignore, deprecated_member_use, avoid_single_cascade_in_expression_statements

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/profile_response.dart';
import 'package:flutter_application_1/view_model/profile_vm.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/bottom_sheet.dart';
import 'package:flutter_application_1/widget/static/colors.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xffFF9E00),
        ),
        backgroundColor: AppColors.blueColor,
        title: const Text(
          'PROFILE',
          style: TextStyle(color: Color(0xffFF9E00)),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Stack(
              children: [
                //  Positioned(
                //           bottom: 5.0,
                //           right: 3.0,
                //           child: InkWell(
                //             onTap: () {
                //               showBottomSheet(
                //                 context: context,
                //                 // ignore: avoid_types_as_parameter_names
                //                 builder: ((Builder) => bottomsheet()),
                //               );
                //             },
                //             // ignore: prefer_const_constructors
                //             child: Icon(
                //               Icons.camera_alt,
                //               color: Colors.white,
                //               size: 50.0,
                //             ),
                //           ),
                //         ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage('assets/logo.png'),
                                fit: BoxFit.cover),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 150,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 280,
                                ),
                                InkWell(
                                  onTap: () {
                                    showBottomSheet(
                                      context: context,
                                      // ignore: avoid_types_as_parameter_names
                                      builder: ((Builder) => bottomsheet()),
                                    );
                                  },
                                  // ignore: prefer_const_constructors
                                  child: Icon(
                                    Icons.camera_alt,
                                    color: AppColors.blueColor,
                                    size: 50.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 20,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                  BigText(
                    text: "Online ",
                    fontWeight: FontWeight.bold,
                    size: 12,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Divider(
              color: AppColors.yellowColor,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 10,
            ),
            FutureBuilder(
                future: Provider.of<ProfileVm>(context, listen: false)
                    .getProfile(context),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('An error occured'),
                    );
                  }
                  ProfileResponse prof = snapshot.data;
                  return Material(
                    color: AppColors.blueColor,
                    child: ListTile(
                      title: BigText(
                        text: "Name: ${prof.data?.name}",
                        // text: "${prof.userFullname}",
                        fontWeight: FontWeight.bold,
                        // profileResponse.firstname
                        size: 14,
                        color: AppColors.yellowColor,
                      ),
                    ),
                  );
                }),
            Divider(
              color: AppColors.yellowColor,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 10,
            ),
            FutureBuilder(
                future: Provider.of<ProfileVm>(context, listen: false)
                    .getProfile(context),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('An error occured'),
                    );
                  }
                  ProfileResponse prof = snapshot.data;
                  return Material(
                    color: AppColors.blueColor,
                    child: ListTile(
                      title: BigText(
                        text: "Email: ${prof.data?.email}",
                        // text: "${prof.userFullname}",
                        fontWeight: FontWeight.bold,
                        // profileResponse.firstname
                        size: 14,
                        color: AppColors.yellowColor,
                      ),
                    ),
                  );
                }),
            Divider(
              color: AppColors.yellowColor,
              indent: 10,
              endIndent: 10,
            ),
            SizedBox(
              height: 20,
            ),
            BigText(
              text: 'Phone Number',
              fontWeight: FontWeight.bold,
              size: 16,
              color: AppColors.blueColor,
            ),
            Consumer<ProfileVm>(builder: (context, auth, child) {
              return FutureBuilder(
                  future: Provider.of<ProfileVm>(context, listen: false)
                      .getProfile(context),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text('An error occured'),
                      );
                    }
                    ProfileResponse prof = snapshot.data;
                    return Column(
                      children: [
                        TextFormField(
                          controller: auth.phone,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: '${prof.data?.phone}'),
                        ),
                        SizedBox(height: 20),
                        Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 20),
              child: SizedBox(
                width: 350,
                height: 50,
                // ignore: sort_child_properties_last
                child: ElevatedButton(
                  onPressed: ()=> {
                    auth.updateProfile(context),
                    Flushbar(
                      title: "Your Profile",
                      message: "Has Been Updated Successfully!",
                      duration: Duration(seconds: 3),
                    )..show(context),
                  },

                  // ignore: sort_child_properties_last
                  child: BigText(
                    text: "UPDATE",
                    fontWeight: FontWeight.bold,
                    size: 14,
                    color: AppColors.yellowColor,
                  ),

                  style: ElevatedButton.styleFrom(
                    primary:
                        AppColors.blueColor, //change background color of button
                    // onPrimary: Colors.yellow, //change text color of button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: AppColors.yellowColor),
                    ),
                  ),
                ),
              ),
            ),
                      ],
                    );
                    
                  }
                  );
                  
            }),
            
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 20),
              child: SizedBox(
                width: 350,
                height: 50,
                // ignore: sort_child_properties_last
                child: ElevatedButton(
                  onPressed: () {
                    Flushbar(
                      title: "Your Profile",
                      message: "Has Been Updated Successfully!",
                      duration: Duration(seconds: 3),
                    )..show(context);
                  },

                  // ignore: sort_child_properties_last
                  child: BigText(
                    text: "UPDATE",
                    fontWeight: FontWeight.bold,
                    size: 14,
                    color: AppColors.yellowColor,
                  ),

                  style: ElevatedButton.styleFrom(
                    primary:
                        AppColors.blueColor, //change background color of button
                    // onPrimary: Colors.yellow, //change text color of button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: AppColors.yellowColor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
