import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final GROUP_NAME;
  final DESC_KOR;
  final MAKER_NAME;
  final SERVING_SIZE;
  final NUTR_CONT1;
  final NUTR_CONT2;
  final NUTR_CONT3;
  final NUTR_CONT4;
  final NUTR_CONT5;
  final NUTR_CONT6;
  final NUTR_CONT7;
  final NUTR_CONT8;
  final NUTR_CONT9;

  ResultScreen({this.GROUP_NAME,this.DESC_KOR, this.MAKER_NAME, this.SERVING_SIZE,
    this.NUTR_CONT1, this.NUTR_CONT2, this.NUTR_CONT3, this.NUTR_CONT4, this.NUTR_CONT5,
    this.NUTR_CONT6, this.NUTR_CONT7, this.NUTR_CONT8,this.NUTR_CONT9});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('식품군: ${GROUP_NAME}\n식품이름: ${DESC_KOR}\n제조사명: ${MAKER_NAME}',
                style: TextStyle(
                    fontSize: 30.0
                ),),
              Text('1회제공량(g): ${SERVING_SIZE}\n열량:(kcal): ${NUTR_CONT1}\n탄수화물(g): ${NUTR_CONT2}\n'
                  '단백질(g): ${NUTR_CONT3}\n지방(g): ${NUTR_CONT4}\n당류(g): ${NUTR_CONT5}\n'
                  '나트륨(mg): ${NUTR_CONT6}\n콜레스테롤(mg): ${NUTR_CONT7}\n'
                  '포화지방산(g): ${NUTR_CONT8}\n트랜스지방(g): ${NUTR_CONT9}',
              style: TextStyle(
                fontSize: 26.0
              ),)
            ],
          ),
        ),
      ),
    );
  }
}