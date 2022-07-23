import 'package:fanboy/Screens/langauge/language_screen.dart';
import 'package:fanboy/constants.dart';
import 'package:flutter/material.dart';

import '../server/server_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isactive = false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle:  true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actionsIconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "FanBoy VPN",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.info_outline_rounded))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Center(
              child: Text(
                "FanBoy VPN",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.w900),
              ),
            )),
            ListTile(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LanguageScreen()));
            },
              leading: Icon(
                Icons.translate,
                color: Colors.black,
              ),
              title: Text(
                "Change Langauge",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.rate_review,
                color: Colors.black,
              ),
              title: Text(
                "Rate & Review",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: Text(
                "Share",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.all_inbox_outlined,
                color: Colors.black,
              ),
              title: Text(
                "About Us",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("V 1.0.0",style: TextStyle(color: Colors.grey),),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: _size.height * 0.1,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isactive = !isactive;
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(150),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: kWhiteClr, shape: BoxShape.circle),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.power_settings_new,
                            size: 40,
                            color: isactive == true ? Colors.green : Colors.red,
                          ),
                          SizedBox(
                            height: 13.5,
                          ),
                          Text(
                            isactive == true ? "STOP" : "START",
                            style: TextStyle(
                                color: isactive == true
                                    ? Colors.black
                                    : Colors.blueGrey,
                                fontSize: 27.5,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height * 0.11,
            ),
           Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color:
                      isactive == true ? Colors.red : Colors.red.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    isactive == true ? "Connected" : 'Not Connected',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: isactive == true ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ServerScreen()));
              },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteClr,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Location',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: secndryColor),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: secndryColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Download',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: secndryColor),
                      ),
                      Text(
                        isactive == true ? "3.0mb" : '0.0kb',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.blueGrey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upload',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: secndryColor),
                      ),
                      Text(
                        isactive == true ? "2.5mb" : '0.0kb',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.blueGrey),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
