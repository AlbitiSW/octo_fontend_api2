import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'result_screen.dart';

const apiKey = '1bac530ca18c4cc3b688';
const foodName = '후루룩국수';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  void fetchData() async{
    final url = Uri.parse('http://openapi.foodsafetykorea.go.kr/api/${apiKey}/I2790/json/1/5/DESC_KOR=${foodName}');
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      String jsonData = response.body;
      var GROUP_NAME = jsonDecode(jsonData)['I2790']['row'][0]['GROUP_NAME'];
      var DESC_KOR = jsonDecode(jsonData)['I2790']['row'][0]['DESC_KOR'];
      var MAKER_NAME = jsonDecode(jsonData)['I2790']['row'][0]['MAKER_NAME'];
      var SERVING_SIZE = jsonDecode(jsonData)['I2790']['row'][0]['SERVING_SIZE'];
      var NUTR_CONT1 = jsonDecode(jsonData)['I2790']['row'][0]['NUTR_CONT1'];
      var NUTR_CONT2 = jsonDecode(jsonData)['I2790']['row'][0]['NUTR_CONT2'];
      var NUTR_CONT3 = jsonDecode(jsonData)['I2790']['row'][0]['NUTR_CONT3'];
      var NUTR_CONT4 = jsonDecode(jsonData)['I2790']['row'][0]['NUTR_CONT4'];
      var NUTR_CONT5 = jsonDecode(jsonData)['I2790']['row'][0]['NUTR_CONT5'];
      var NUTR_CONT6 = jsonDecode(jsonData)['I2790']['row'][0]['NUTR_CONT6'];
      var NUTR_CONT7 = jsonDecode(jsonData)['I2790']['row'][0]['NUTR_CONT7'];
      var NUTR_CONT8 = jsonDecode(jsonData)['I2790']['row'][0]['NUTR_CONT8'];
      var NUTR_CONT9 = jsonDecode(jsonData)['I2790']['row'][0]['NUTR_CONT9'];

      Navigator.push(context, MaterialPageRoute(builder: (context){
        return ResultScreen(GROUP_NAME: GROUP_NAME, DESC_KOR: DESC_KOR,
            MAKER_NAME: MAKER_NAME, SERVING_SIZE: SERVING_SIZE,
            NUTR_CONT1: NUTR_CONT1, NUTR_CONT2: NUTR_CONT2, NUTR_CONT3: NUTR_CONT3,
          NUTR_CONT4: NUTR_CONT4, NUTR_CONT5: NUTR_CONT5, NUTR_CONT6: NUTR_CONT6,
          NUTR_CONT7: NUTR_CONT7, NUTR_CONT8: NUTR_CONT8, NUTR_CONT9: NUTR_CONT9,
        );
      }));
    }
    else{
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(

          onPressed: null,
          child: Text(
            'product name: ${foodName}',
            style: TextStyle(
                color: Colors.white
            ),
          ),
          //color: Colors.blue,
        ),
      ),
    );
  }
}
