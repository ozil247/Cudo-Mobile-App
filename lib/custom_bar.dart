// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/booking.dart';
import 'package:flutter_application_1/models/vendor_repsonse.dart';
import 'package:flutter_application_1/view_model/vendor_vm.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';

class CustomTabbar extends StatefulWidget {
  const CustomTabbar({Key? key}) : super(key: key);

  @override
  _CustomTabbarState createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
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
          body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                BigText(
                  text: 'Quickly Select A Category of Vendor to Book Below;',
                  fontWeight: FontWeight.bold,
                  size: 16,
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
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                          text: 'Categories',
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.blueColor),
                      BigText(
                          text: 'View All',
                          fontWeight: FontWeight.bold,
                          size: 14,
                          color: AppColors.blueColor),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: TabBar(
                      indicator: BoxDecoration(
                        color: Color(0xffFF9E00),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      labelColor: AppColors.blueColor,
                      unselectedLabelColor: Colors.white,
                      tabs: [
                        
                        Tab(
                          text: 'Plumber',
                        ),
                        Tab(
                          text: 'Laundry',
                        ),
                        Tab(
                          text: 'Electrician',
                        ),
                        Tab(
                          text: 'Carpenter',
                        ),
                        Tab(
                          text: 'Welder',
                        ),
                        Tab(
                          text: 'Cleaner',
                        ),
                        Tab(
                          text: 'Cook',
                        ),
                        Tab(
                          text: 'Barber',
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: TabBarView(children: [
                    FutureBuilder(
                      future: Provider.of<VendorVm>(context).getVendor(context),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
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
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.13)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                    Center(
                      child: Text('Laundry'),
                    ),
                    Center(
                      child: Text('Electrician'),
                    ),
                    Center(
                      child: Text('Carpenter'),
                    ),
                    Center(
                      child: Text('Welder'),
                    ),
                    Center(
                      child: Text('CLeaner'),
                    ),
                    Center(
                      child: Text('Cook'),
                    ),
                    Center(
                      child: Text('Barber'),
                    ),
                  ]),
                )
              ],
            ),
          )),
    );
  }
}
