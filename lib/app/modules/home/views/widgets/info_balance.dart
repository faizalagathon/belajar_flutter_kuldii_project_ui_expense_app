import 'package:belajar_flutter_kuldii_project_ui_expense_app/app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoBalance extends StatelessWidget {
  const InfoBalance({
    super.key,
    required this.isIncome,
    required this.balance,
  });

  final bool isIncome;
  final int balance;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Get.width, Untuk Dapat Width Full
      // width: Get.width / 2, Untuk Dapat Width Full yang dibagi 2
      width: Get.width * 0.4,
      // height: 70, Height nya engga di atur agar Tinggi Kotak Menyesuaikan dengan child nya
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isIncome ? appGreen : appRed,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: appWhite,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Image.asset(isIncome ? 'assets/icons/income.png' : 'assets/icons/expense.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                isIncome ? 'Income' : 'Expenses',
                style: TextStyle(color: appWhite),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '\$$balance',
                style: TextStyle(
                    color: appWhite, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
