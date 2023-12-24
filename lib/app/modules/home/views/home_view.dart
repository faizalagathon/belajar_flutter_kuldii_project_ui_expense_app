// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last

import 'package:belajar_flutter_kuldii_project_ui_expense_app/app/constant/color.dart';
import 'package:belajar_flutter_kuldii_project_ui_expense_app/app/modules/home/views/widgets/info_balance.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  appYellowSoft,
                  appPrimary.withOpacity(0.2),
                ],
              ),
            ),
          ),

          // Page View
          // Ada 2 Metode untuk menempatkan widget di safe area (tidak bertumpukan dengan panel atas layar)
          // Padding(padding: EdgeInsets.only(top: context.mediaQueryPadding.top), child: Column()),
          // SafeArea(child: Column()),
          SafeArea(
            child: Column(
              children: [
                // Tidak Bisa Di Scroll
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(),
                    Row(
                      children: [
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: appPrimary,
                        ),
                        Text('October'),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active,
                        color: appPrimary,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text('Account Balance'),
                SizedBox(height: 10),
                Text(
                  '\$9400',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoBalance(
                      isIncome: true,
                      balance: 5000,
                    ),
                    InfoBalance(
                      isIncome: false,
                      balance: 1200,
                    ),
                  ],
                ),
                SizedBox(height: 15),

                // Bisa Di Scroll
                Expanded(
                    child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Spend Frequency',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 200,
                      color: appPrimary,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: appYellowSoft,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text(
                            'Today',
                            style: TextStyle(
                              color: appYellow,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Week',
                          style: TextStyle(color: appTextSoft),
                        ),
                        Text(
                          'Month',
                          style: TextStyle(color: appTextSoft),
                        ),
                        Text(
                          'Year',
                          style: TextStyle(color: appTextSoft),
                        ),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
