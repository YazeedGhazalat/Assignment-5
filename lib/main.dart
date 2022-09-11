import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List laptopImages = [
    "laptopImages/1.png",
    "laptopImages/2.png",
    "laptopImages/3.png",
    "laptopImages/4.png",
    "laptopImages/5.png",
    "laptopImages/6.png",
    "laptopImages/7.png",
    "laptopImages/8.png",
    "laptopImages/9.png",
    "laptopImages/10.png",
  ];
  List LaptopNAmes = [
    "Samsung",
    "Samsung",
    "Apple",
    "Apple",
    "Oppo",
    "Oppo",
    "Xiaomi",
    "Xiaomi",
    "Huawei",
    "Huawei",
  ];
  List LaptSubTitle = [
    "S22-Ultra",
    "Note20-Ultra",
    "Iphone14",
    "Iphone14-pro",
    "reno 4 pro",
    "reno 7 pro",
    "mi 11",
    "note 11 pro",
    "p50 pro",
    " nova 9",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 1500,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: laptopImages.length,
                itemBuilder: (BuildContext context, int i) {
                  return Column(children: [
                    Divider(
                      color: Colors.black,
                      thickness: 5,
                    ),
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: Colors.black,
                              blurRadius: 25.0,
                              spreadRadius: 5.0,
                              offset: Offset.zero)
                        ],
                        border: Border.all(
                          width: 3,
                          strokeAlign: StrokeAlign.center,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        isThreeLine: true,
                        contentPadding:EdgeInsets.all(10) ,
                        
                        trailing: Icon(Icons.phone_android),
                        title: Text(
                          "${LaptopNAmes[i]}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("${LaptSubTitle[i]}"),
                        leading: Image(
                          alignment: Alignment.topLeft,
                          image: AssetImage("${laptopImages[i]}"),fit: BoxFit.fill,
                         
                        ),
                      ),
                    )
                  ]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
