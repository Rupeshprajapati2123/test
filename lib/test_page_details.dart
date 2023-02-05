import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:testapp/test_page.dart';

class TestPageDetails extends StatelessWidget {
  const TestPageDetails({super.key});
  static const String id="TestPageDetails";
  @override
  Widget build(BuildContext context) {
    final instructions=["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie,"
    ,"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, ",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, "];
    return Scaffold(
      body: Padding(

        padding: EdgeInsets.all(10),
        child:Column(
        children: [
          // Container(
          //   margin: EdgeInsets.only(top: 10),
          //   height: 140,
          //  decoration: const BoxDecoration(
          //   borderRadius: BorderRadius.all(Radius.circular(10)),
          //      gradient: LinearGradient(
          //      colors: [Color(0xfffeb334), Color(0xfffcd593)],
          //     begin: Alignment.bottomLeft,
          //      end: Alignment.topRight,
          // )
          // ),
          // ),
          // GestureDetector(
          // onTap: ()=>{Navigator.pop(context)},
          // child:Icon(
          //   Icons.arrow_back,
          //   color: Colors.black,
          // )),
          Container(
            margin: EdgeInsets.only(top:30),
            child: Image(height:120,image: NetworkImage('https://www.shutterstock.com/image-vector/sample-red-square-grunge-stamp-260nw-338250266.jpg')),
          ),
          Container(
            margin: EdgeInsets.only(top: 14,bottom:16),
            // margin: EdgeInsets.only(botton: 24),
            child:Text(
            'AWS Certified Advanced\n   Networking Speciality\n      Free Practice Test',
            style: TextStyle(
              color: Color(0xff17161A),
              fontSize: 20,
              fontWeight:FontWeight.w700,
              
            ),
          )),
          Row(children: [
            Text('Diffuculty level: Level',
            style: TextStyle(
              color: Color(0xff808080),
              fontWeight: FontWeight.w400,
              fontSize: 14,

            ),),
            Spacer(),
            Text('Categeory: AWS',
            style: TextStyle(
              color: Color(0xff808080),
              fontWeight: FontWeight.w400,
              fontSize: 14,
              
            ))
          ],),
          Divider(
            color:Color(0xffc6dfff),
            thickness: 1,
          ),
          Container(
            alignment: Alignment.topLeft,
          child:Text('Instructions',
          style: TextStyle(
              color: Color(0xff17161a),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            )),
          ),
          Expanded(
            
            // height: 160,
          child:ListView.builder(
            
        itemCount: instructions.length,
        itemBuilder: (context, index) {
          return ListTile(
  //           leading: Container(
  //   height: 10.0,
  //   width: 10.0,
  //   decoration: new BoxDecoration(
  //   color: Colors.black,
  //   shape: BoxShape.circle,
  // ),
  // ),
            title: Text(instructions[index]),
          );
        },
      )),
       Container(
            alignment: Alignment.topLeft,
          child:Text('Exam Details',
          style: TextStyle(
              color: Color(0xff17161a),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            )),
          ),
          Column(children: [
            Row(
              children: [
                Card(
                  child:Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    height: 120,  
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color:Color(0xffFFBFBF),
                    ),
                    width: 170,
                  child:Column(children: [
                    SizedBox(height:25,),
                    Image(
                      height: 50,
                      image: AssetImage('assets/images/icon.png'),),
                    SizedBox(height: 15,),
                    Text('Questions: 20',
          style: TextStyle(
              color: Color(0xff17161a),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ))
                  ])),
                ),
                Card(
                  child:Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    height: 120,  
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color:Color(0xffFFBFBF),
                    ),
                    width: 170,
                  child:Column(children: [
                    SizedBox(height:25,),
                    Image(
                      height: 50,
                      image: AssetImage('assets/images/icon.png'),),
                    SizedBox(height: 15,),
                    Text('Questions: 20',
          style: TextStyle(
              color: Color(0xff17161a),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ))
                  ])),
                ),
               
              ],
            ),
            Row(
              children: [
                Card(
                  child:Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    height: 120,  
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color:Color(0xffFFBFBF),
                    ),
                    width: 170,
                  child:Column(children: [
                    SizedBox(height:25,),
                    Image(
                      height: 50,
                      image: AssetImage('assets/images/icon.png'),),
                    SizedBox(height: 15,),
                    Text('Questions: 20',
          style: TextStyle(
              color: Color(0xff17161a),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ))
                  ])),
                ),
                Card(
                  child:Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                    height: 120,  
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color:Color(0xffFFBFBF),
                    ),
                    width: 170,
                  child:Column(children: [
                    SizedBox(height:25,),
                    Image(
                      height: 50,
                      image: AssetImage('assets/images/icon.png'),),
                    SizedBox(height: 15,),
                    Text('Questions: 20',
          style: TextStyle(
              color: Color(0xff17161a),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ))
                  ])),
                ),
               
              ],
            ),
            
          ],),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, TestPage.id);
          }, child: Text('Start Quiz'))
        ],

      ),
    )
    );
  }
  
}