import 'package:bmi/constants/app_constants.dart';
import 'package:bmi/widgets/left_bar.dart';
import 'package:bmi/widgets/right_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController _heightControler=TextEditingController();
  TextEditingController _weightControler=TextEditingController();
  double _bmiResult=0;
  String _textResult='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            color: accentHexColor,
            fontWeight: FontWeight.w300,
            fontSize: 40,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightControler,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Height',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 42,
                        )),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightControler,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: accentHexColor,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Weight',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 42,
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){

                double _h=double.parse(_heightControler.text);
                double _w=double.parse(_weightControler.text);
                setState(() {
                  _bmiResult=_w/(_h*_h);
                  if(_bmiResult>25){
                    _textResult='You\'re over weight';
                  }else if(_bmiResult>=18.5&&_bmiResult<25){
                    _textResult='You\'re normal weight';
                  }else{
                    _textResult='You\'re under weight';

                  }
                });

              },
              child: Container(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: accentHexColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                _bmiResult.round().toString(),
                style: TextStyle(
                  fontSize: 90,
                  color: accentHexColor,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text(
                  _textResult,
                  style: TextStyle(
                    fontSize: 32,
                    color: accentHexColor,
                    fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            LeftBar(barWidth: 40,),
            SizedBox(height: 10,),
            LeftBar(barWidth: 80,),
            SizedBox(height: 10,),
            LeftBar(barWidth: 40,),
            SizedBox(height: 10,),
            RightBar(barWidth: 70,),
            SizedBox(height: 30,),
            RightBar(barWidth: 50,)


          ],
        ),
      ),
    );
  }
}
