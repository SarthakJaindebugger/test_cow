
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:csv/csv.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(NavigationBarApp());
}

void onClick() async
{
  print("Button cliked!");
}


class NavigationBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WebApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(

          primary:  Colors.white,
          secondary:  Colors.yellow.shade700,

          // or from RGB

          //primary: const Color(0xFF343A40),
          //secondary: const Color(0xFFFFC107),

        ),
      ),

      /*
      theme: ThemeData(
        primarySwatch: Colors.white38,
      ),*/


      home: HomePage(),
      routes: {
        '/about': (context) => AboutPage(),
        '/services': (context) => ServicesPage(),
        '/contact': (context) => ContactPage(),
        '/gallery': (context) => GalleryPage(),
        '/settings': (context) => SettingsPage(),
        '/help': (context) => HelpPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //double containerWidth = boxConstraints.maxWidth * 0.8;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(1.0),
        child: Center(
          child: Column(

            children: [



              SafeArea(
                //Nav Bar
                child: Container(
                  padding: EdgeInsets.zero,
                  //height : height * 0.2,
                  //width: width * 0.4,
                  //height: hight * 0.8,
                  //width : width * 0.2,
                  //height: height * 0.1,
                  //width: width * 0.9,
                  //width: MediaQuery.of(context).size.width,
                  //fit: BoxFit.cover,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Expanded(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //Awadh logo
                            IconButton(
                              icon: Image.asset(
                                'assets/images/awadh_logo_only.jpeg',
                                //height: 500.0,
                                //width: 100.0
                                //color: Colors.white,
                              ),
                              //label:Text('About'),
                              iconSize: 55.0,
                              onPressed: () {
                                Navigator.pushNamed(context, '/');
                              },
                            ),

                            //IITRopar logo
                            IconButton(
                              icon: Image.asset(
                                'assets/images/iitropar_logo.png',
                                //height: 500.0,
                                //width: 150.0
                                //color: Colors.white,
                              ),
                              //label:Text('About'),
                              iconSize: 50.0,
                              onPressed: () {
                                const url = 'https://ihub-awadh.in/';
                                launch(url);
                              },
                            ),

                            //Department of Sciecne of Technology logo
                            IconButton(
                              icon: Image.asset(
                                'assets/images/sct_logo.jpeg',
                                //height: 500.0,
                                //width: 150.0
                                //color: Colors.white,
                              ),
                              //label:Text('About'),
                              iconSize: 100.0,
                              onPressed: () {
                                const url ='https://dst.gov.in/';
                                launch(url);
                              },
                            ),
                          ],
                        ),
                      ),

                      /*
                IconButton(
                  icon: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Cow_clipart_01.svg/1200px-Cow_clipart_01.svg.png',

                    //color: Colors.white,
                  ),
                  iconSize: 100.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),*/

                      Expanded(
                        //padding: EdgeInsets.zero,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/about');
                              },
                              //onPressed: onClick,
                              child: Text('Cow Activity ',
                                  style: (TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ))),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(110)),
                              ),

                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/services');
                              },
                              //onPressed: onClick,
                              child: Text('Team ',
                                  style: (TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ))),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(110)),
                              ),

                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/contact');
                              },
                              //onPressed: onClick,
                              child: Text('Contact Us ',
                                  style: (TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                  ))),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(110)),
                              ),

                            ),
                          ],
                        ),
                      ),


                      /*
                IconButton(
                  icon: Icon(Icons.info),
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),

                IconButton(
                  icon: Icon(Icons.miscellaneous_services_outlined),
                  onPressed: () {
                    Navigator.pushNamed(context, '/services');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.contact_mail),
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                ),*/
                    ],
                  ),
                ),
              ),


              //Awadh heading homepage
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Agriculture & Water Technology Development Hub',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),




                ),
              ),

              //Image below heading
              Container(
                padding: EdgeInsets.all(16.0),

                child: Image.asset(
                  'assets/images/awadh_fam.jpeg',
                  //width: 500.0,
                  //height: 300.0,
                  fit: BoxFit.cover,

                ),

              ),

              //iHub defination
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'IIT Ropar Technology and Innovation Foundation (iHub – AWaDH) for Agriculture and Water Technology Development Hub'
                      '  is established by the Department of Science & Technology (DST), Government of India, '
                      'at the Indian Institute of Technology Ropar in the framework of '
                      'National Mission on Interdisciplinary Cyber Physical Systems (NM – ICPS) with time-bound predefined deliverables.\n\nWith a funding support of 110 Cr through DST Govt of India, IIT Ropar Technology & Innovation Foundation support '
                      'deep-tech research ideas. startups, innovators.'
                      '\n\nThe hub supports R&D in the domain of Agriculture, Water, IoT, ICPS  provides incubation & acceleration  resources and '
                      'support to technology-based start-ups towards sustainable agriculture.',
                  style: TextStyle(fontSize: 20.0/*, fontWeight: FontWeight.bold*/),




                ),
              ),




              //Mission title
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: EdgeInsets.all(5.0),
                child: Text(
                  'Our Mission ',
                  style: TextStyle(fontSize: 30.0,  fontWeight: FontWeight.bold),




                ),
              ),

              //Misson Image
              Container(
                padding: EdgeInsets.all(5.0),
                child: Image.asset(
                  'assets/images/mission.jpeg',
                  width: 550.0,
                  height: 450.0,
                  //fit: BoxFit.cover,

                ),
              ),

              //Misson of Awadh
              Container(
                padding: EdgeInsets.all(16.0),

                child: Text(
                  '"Environmentally sustainable and profitable agriculture, '
                      'quality food for all, and the preservation of biodiversity"\n\n',
                  style: TextStyle(fontSize: 20.0),
                ),

              ),

              //how things work
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: EdgeInsets.all(16.0),
                child: Text(
                    'How things work internally?',
                    style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)
                ),
              ),

              //gateway image
              Container(
                padding: EdgeInsets.all(16.0),

                child: Image.asset(
                  'assets/images/gateway_img.png',
                  width: 500.0,
                  height: 300.0,
                  //fit: BoxFit.cover,

                ),

              ),

              //Gateway explaination
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                    'As stated in the flow above the Node consist of a microcontroller(NRF52832) & Accelerometer(LIS3Dh)'
                        '\n\nNode sends the data to the Gateway on regular basis'
                        'Gateway captures the data of accelerometer from different nodes at 500ms continously'
                        '40 seconds & then make a packet of 256 bytes including Node ID and Epoch Times and upload to AWS cloud.',
                    style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic)
                ),
              ),

              /*
          Expanded(
            child: Center(
              child: Text(
                'Home Page Content',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),*/
            ],
          ),
        ),
      ),
    );
  }
}


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cow Activity', style: TextStyle(fontSize: 20.0, color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ALL ACTIVE NODES: ',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12.0),
            Table(
              border: TableBorder.all(width: 1.0, color: Colors.grey),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('SNO.'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('COW NODE ID'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('ACTIVITY STATUS '),
                      ),
                    ),

                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('109'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DataPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Click Here',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('112'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DataPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Click Here',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('120'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DataPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Click Here',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('4'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('125'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DataPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Click Here',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                // Add more rows if needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services', style: TextStyle(fontSize: 20.0, color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Text(
          'Services Page Content',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us', style: TextStyle(fontSize: 20.0, color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Text(
          'Contact Page Content',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Center(
        child: Text(
          'Gallery Page Content',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text(
          'Settings Page Content',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),
      body: Center(
        child: Text(
          'Help Page Content',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}

class DataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Status ', style: TextStyle(fontSize: 20.0, color: Colors.black)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Displaying Data', style: TextStyle(fontSize: 40.0, color: Colors.black)),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Perform download action
              },
              child: Text('Download', style: TextStyle(fontSize: 20.0, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}




