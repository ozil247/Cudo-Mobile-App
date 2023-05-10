// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, unnecessary_new, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/booking.dart';
import 'package:flutter_application_1/components/navigate.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/models/vendor_repsonse.dart';
import 'package:flutter_application_1/view_model/vendor_vm.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Vendors extends StatefulWidget {
  // Data categories;
  const Vendors({super.key});
  @override
  State<Vendors> createState() => _VendorsState();
}

class _VendorsState extends State<Vendors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xffFF9E00),
        ),
        backgroundColor: AppColors.blueColor,
        title: const Text(
          'VENDORS',
          style: TextStyle(color: Color(0xffFF9E00)),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 10),
                  BigText(
                    text: 'Quickly Select A Category of Vendor to Book Below;',
                    fontWeight: FontWeight.bold,
                    size: 16 ,
                    color: AppColors.blueColor,
                  ),
                  SizedBox(height: 10),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.blueColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    text: 'Categories',
                    fontWeight: FontWeight.bold,
                    size: 14,
                    color: Colors.white,
                  ),
                  BigText(
                    text: 'View All',
                    fontWeight: FontWeight.bold,
                    size: 14,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Navigate(),
            SizedBox(
              height: 30,
            ),
            FutureBuilder(
              future: Provider.of<VendorVm>(context).getVendor(context),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator.adaptive();
                }
                VendorResponse res = snapshot.data;
                return ListView.builder(
                  itemCount: res.vendor?.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    Vendor vendor = res.vendor![index];
                    return GestureDetector(
                      onTap: () => Get.to(Booking(vendorId: vendor.id)),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.blueColor,
                                blurRadius: 10,
                                offset: Offset(0, 4))
                          ],
                          borderRadius: BorderRadius.circular(8),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.13)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ListTile(
                            leading: Image.asset("assets/ace.png"),
                            title: Text(
                              '${vendor.name}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.yellowColor,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${vendor.phone}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.yellowColor,
                                  ),
                                ),
                                // GridView.builder(
                                //     padding: EdgeInsets.all(8.0),
                                //     shrinkWrap: true,
                                //     physics: NeverScrollableScrollPhysics(),
                                //     itemCount: vendor.categories?.length,
                                //     gridDelegate:
                                //         SliverGridDelegateWithFixedCrossAxisCount(
                                //       crossAxisCount: 3,
                                //       // childAspectRatio: 1 / 1.2,
                                //     ),
                                //     itemBuilder:
                                //         (BuildContext context, int index) {
                                //       final category =
                                //           vendor.categories![index];
                                //       return Text(
                                //         '${category.name}',
                                //         style: TextStyle(
                                //           fontSize: 16,
                                //           fontWeight: FontWeight.bold,
                                //           color: AppColors.yellowColor,
                                //         ),
                                //       );
                                //     }),
                                Text(
                                  '${vendor.profile?.address}',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.yellowColor,
                                  ),
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.yellowColor,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            Divider(
              height: 10,
              endIndent: 100,
              indent: 100,
              thickness: 2,
              color: Color(0xffFF9E00),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 10,
            ),
            // Row(
            //   children: [
            //     Container(
            //       width: 130,
            //       height: 135,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20.0),
            //         image: DecorationImage(
            //             image: AssetImage('assets/ace.png'), fit: BoxFit.cover),
            //       ),

            //       // child: Image(image: AssetImage('assets/ace.png')),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Column(
            //       children: [
            //         Container(
            //           padding: EdgeInsets.only(top: 20, right: 50),
            //           margin: EdgeInsets.only(bottom: 0),
            //           width: 200,
            //           height: 90,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(20.0),
            //             color: Color(0xffFF9E00),
            //           ),
            //           child: Column(
            //             // ignore: prefer_const_literals_to_create_immutables
            //             children: [
            //               ListTile(
            //                 title: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   // ignore: prefer_const_literals_to_create_immutables
            //                   children: [
            //                     Text(
            //                       'Name: MiMi',
            //                       style: TextStyle(
            //                         fontSize: 12,
            //                         fontWeight: FontWeight.bold,
            //                         color: Color(0xff1A214F),
            //                       ),
            //                     ),
            //                     SizedBox(
            //                       height: 5,
            //                     ),
            //                     Text(
            //                       'Plumber',
            //                       style: TextStyle(
            //                         fontSize: 10,
            //                         color: Color(0xff1A214F),
            //                       ),
            //                     ),
            //                     Text(
            //                       'Mile 4,Port Harcourt',
            //                       style: TextStyle(
            //                         fontSize: 10,
            //                         color: Color(0xff1A214F),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         SizedBox(
            //           width: 170,
            //           height: 40,
            //           child: Container(
            //             // ignore: sort_child_properties_last
            //             child: ElevatedButton(
            //               onPressed: () {
            //                 Navigator.of(context).push(MaterialPageRoute(
            //                     builder: (context) => Booking()));
            //               },
            //               // ignore: sort_child_properties_last
            //               child: SmallText(
            //                 text: "Request A Quote",
            //                 color: Color(0xffFF9E00),
            //                 size: 14,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //               style: ElevatedButton.styleFrom(
            //                 primary: Color(0xff1A214F),
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: new BorderRadius.circular(15.0)),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 10,
            // ),
          ],
        ),
      ),
    );
  }
}
