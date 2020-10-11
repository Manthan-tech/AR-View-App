import 'package:flutter/material.dart';
import 'package:onlinelearning/3d model.dart';
import 'package:onlinelearning/ar.dart';
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
      routes: {
        '/coursePage' : (context)=>HelloWorld(),
            },
    );
  }
}
class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Hello Examiners", style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent
                ),),
                         ],
            ),
            SizedBox(height: 25,),
            Text('What do you \nwant to \nsee today?', style: TextStyle(
              fontSize: 35,
              height: 1.3,
              fontWeight: FontWeight.w700
            ),),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          courseWidget('In App AR', 'Shape objects', 'assets/image/color-shadowsweb1.jpg', Color(0xffff6a65), Color(0xffff5954), 'https://modelviewer.dev/shared-assets/models/Astronaut.glb', true),
                          SizedBox(height: 20,),
                          courseWidget('Google AR', '3D Shish Kabab', 'assets/image/kabab.jpeg', Color(0xffe9eefa), Colors.white, 'https://tempcssmanthan.s3.us-east-2.amazonaws.com/shishkebab.glb', false),
                          SizedBox(height: 20,),
                          courseWidget('Google AR', 'PBR Sphere', 'assets/image/balls.jpeg', Color(0xffe9eefa), Colors.white, 'https://tempcssmanthan.s3.us-east-2.amazonaws.com/pbr-spheres.glb', false),
                          SizedBox(height: 20,),
                          courseWidget('Google AR', 'Alpha Blend Litmus', 'assets/image/alpha.jpeg', Color(0xffe9eefa), Colors.white, 'https://tempcssmanthan.s3.us-east-2.amazonaws.com/alpha-blend-litmus.glb', false),
                          SizedBox(height: 20,),
                          courseWidget('Google AR', 'Robot Expressive', 'assets/image/robo.jpeg', Color(0xffe9eefa), Colors.white, 'https://tempcssmanthan.s3.us-east-2.amazonaws.com/RobotExpressive.glb', false),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(height: 50,),
                          courseWidget('Google AR', '3D Astronaut', 'assets/image/44ec1e5e802267d1b0b6e0bafeac3739.jpg', Color(0xffe9eefa), Colors.white ,'https://modelviewer.dev/shared-assets/models/Astronaut.glb', false),
                          SizedBox(height: 20,),
                          courseWidget('Google AR', 'Horse 3D', 'assets/image/horse running.jpg', Color(0xffbdcddfa), Color(0xffcedaff), 'https://tempcssmanthan.s3.us-east-2.amazonaws.com/Horse.glb', false),
                          SizedBox(height: 50,),
                          courseWidget('Google AR', '3D Radiance', 'assets/image/radiance.jpeg', Color(0xffe9eefa), Colors.white ,'https://tempcssmanthan.s3.us-east-2.amazonaws.com/radiance.glb', false),
                          SizedBox(height: 20,),
                          courseWidget('Google AR', '3D Object', 'assets/image/object.jpeg', Color(0xffe9eefa), Colors.white, 'https://tempcssmanthan.s3.us-east-2.amazonaws.com/Exquisite+Crift-Bombul.glb', false),
                          SizedBox(height: 20,),
                          courseWidget('Google AR', 'Astonaut Draraco', 'assets/image/draco.jpeg', Color(0xffe9eefa), Colors.white, 'https://tempcssmanthan.s3.us-east-2.amazonaws.com/AstronautDRACO.glb', false),
                          SizedBox(height: 20,),
                          courseWidget('Google AR', 'Odd Shape', 'assets/image/odd.jpeg', Color(0xffe9eefa), Colors.white, 'https://tempcssmanthan.s3.us-east-2.amazonaws.com/odd-shape-labeled.glb', false),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Container courseWidget(String category, String title, String img, Color categoryColor, Color bgColor, String Url, bool ar)
  {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: (){/*openCoursePage('$img', '$title')*/ar?openCoursePage():Navigator.push(context, MaterialPageRoute(builder: (context) =>MyApp1(Url)));},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: categoryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),

              ),
              child: Text('$category', style: TextStyle(
                color: (categoryColor == Color(0xffe9eefa) ? Color(0xff2657ce) : Colors.white)
              ),),
            ),
            SizedBox(height: 10,),
            Text('$title', style: TextStyle(
              color: (bgColor == Color(0xffff5954)) ? Colors.white : Colors.black,
              fontSize: 20,
              height: 1,
            ),),
            SizedBox(height: 10,),
            // Row(
            //   children: <Widget>[
            //     Container(
            //       height: 5,
            //       width: 100,
            //       color: (bgColor == Color(0xffff5954)) ? Colors.red : Color(0xff2657ce),
            //     ),
            //     Expanded(
            //       child: Container(
            //         height: 5,
            //         color: (bgColor == Color(0xffff5954)) ? Colors.white.withOpacity(0.5) : Color(0xff2657ce).withOpacity(0.5),
            //       ),
            //     )
            //   ],
            // ),
            // SizedBox(height: 10,),
            Hero(
              tag: '$img',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('$img'),
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void openCoursePage()
  {
    Navigator.pushNamed(context, '/coursePage');
  }
}
