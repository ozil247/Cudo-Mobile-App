// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers, prefer_const_constructors, unused_import, duplicate_ignore, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/booking.dart';
// ignore: unused_import
import 'package:flutter_application_1/categories.dart';
import 'package:flutter_application_1/category.dart';
import 'package:flutter_application_1/models/vendor_repsonse.dart';
import 'package:flutter_application_1/view_model/booking_vm.dart';
import 'package:flutter_application_1/view_model/vendor_vm.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';
import 'package:provider/provider.dart';

import 'dashboard.dart';

class Plumbers extends StatefulWidget {
  const Plumbers({super.key});

  @override
  State<Plumbers> createState() => _PlumbersState();
}

class _PlumbersState extends State<Plumbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color(0xffFF9E00),
        ),
        backgroundColor: AppColors.blueColor,
        title: const Text(
          'PLUMBERS',
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
              text: 'Quickly Click to Book A Vendor Below;', 
              fontWeight: FontWeight.bold,
              size: 20,
              color: AppColors.blueColor,
              ),
            SizedBox(height: 10),
            FutureBuilder(
              future: Provider.of<VendorVm>(context).getVendor(context),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator.adaptive();
                }
                VendorResponse res = snapshot.data;
                return GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => Booking()));
                  },
                  child: ListView.builder(
                    itemCount: res.vendor?.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      Vendor vendor = res.vendor![index];
                      return Container(
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
                      );
                    },
                  ),
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
          ],
        ),
      ),
    );
  }
}
