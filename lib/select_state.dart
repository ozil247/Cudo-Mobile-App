// ignore_for_file: prefer_const_constructors, unnecessary_new, unused_import, library_private_types_in_public_api, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/plumbers.dart';
import 'package:flutter_application_1/vendors.dart';
import 'package:flutter_application_1/widget/big_text.dart';
import 'package:flutter_application_1/widget/small_text.dart';
import 'package:flutter_application_1/widget/static/colors.dart';

class SelectState extends StatefulWidget {
  const SelectState({Key? key}) : super(key: key);

  @override
  _SelectStateState createState() => _SelectStateState();
}

class _SelectStateState extends State<SelectState> {
  final items = [
    "ABIA", "ADAMAWA","AKWA-IBOM","ANAMBRA","BAUCHI","BAYESLA",
    "BENUE","BORNO","CROSSRIVER","DELTA","EBONYI","EDO",
    "EKITI","ENUGU","GOMBE","IMO","JIGAWA","KADUNA",
    "KANO","KASTINA","KEBBI","KOGI","KWARA","LAGOS",
    "NASARAWA","NIGER","OGUN","ONDO","OSUN","OYO",
    "PLATEAU","RIVERSSTATE","SOKOTO","TARABA","YOBE","ZAMFARA"
    ];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.yellowColor),
        backgroundColor: AppColors.blueColor,
        elevation: 0,
        title: Text(
          'SELECT A STATE',
          style: TextStyle(color: AppColors.yellowColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(children: [
              SizedBox(
                height: 80,
              ),
              Image(image: AssetImage('assets/logo.png')),
              SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 100,
                    // padding: EdgeInsets.only(bottom: -10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          color: AppColors.blueColor,
                          text: 'Select YOUR State',
                          fontWeight: FontWeight.bold,
                          size: 18,
                        ),
                        Text(
                          'Below;',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 450,
                height: 50,
                margin: EdgeInsets.all(2),
                padding:
                    EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                  hint: Text('STATES'),
                  value: value,
                  iconSize: 16,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Colors.grey,
                  ),
                  isExpanded: true,
                  items: items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value = value),
                )),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Vendors()));
                    },
                    // ignore: sort_child_properties_last
                    child: BigText(
                      text: "Get A Vendor",
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.normal,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.yellowColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              BigText(
                text: "Kindly Select Your State Above to Get A Vendor!",
                size: 16,
                color: AppColors.blueColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontSize: 16),
      ));
}
