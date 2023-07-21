/*
import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GeeksforGeeks'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Row(
            children: const [

              SizedBox(
                height: 20,
              ),

              Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Device ID',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),

              Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Start Time',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),

              Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'End Time',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),




            ],
          ),



        ),

        floatingActionButton: FloatingActionButton(
          shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.zero
          ),
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.download),
        ),

      ),
    );
  }
}
*/


/*
void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home()
    );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //List<String> countries = ["Brazil", "Nepal", "India", "China", "USA", "Canada"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text("Horizonatl ListView"),
          backgroundColor: Colors.green,
        ),

        body: Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    child: Text(
                      'Device ID',
                      style: TextStyle(color: Colors.white),
                    ),

                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: Text(
                    'Start Time',
                    style: TextStyle(color: Colors.white),
                  ),

                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                  child: Text(
                    'End Time',
                    style: TextStyle(color: Colors.white),
                  ),

                ),

                /*
                Container(
                    height: 100,
                    child:ListView(
                      scrollDirection: Axis.horizontal,
                      children: countries.map((country){
                        return box(country, Colors.deepPurpleAccent);
                      }).toList(),
                    )
                ),

                Container(
                    height: 100,
                    child:SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:Row(
                          children: countries.map((country){
                            return box(country, Colors.deepOrangeAccent);
                          }).toList(),
                        )
                    )
                )*/

              ],
            )
        )

    );
  }

  Widget box(String title, Color backgroundcolor){
    return Container(
        margin: EdgeInsets.all(10),
        width: 80,
        color: backgroundcolor,
        alignment: Alignment.center,
        child: Text(title, style:TextStyle(
            color: Colors.white,
            fontSize: 20))
    );
  }
}
*/
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          height: 200,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            children: <Widget>[
              Container(
                width: 160,
                color: Colors.green,
              ),
              Container(
                width: 160,
                color: Colors.greenAccent,
              ),
              Container(
                width: 160,
                color: Colors.lightGreenAccent,
              ),


            ],
          ),
        ),
      ),
    );
  }
}

 */






//final

*/
/*
import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Cow Web App',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatefulWidget {
  const FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TimeOfDay _timeOfDay = TimeOfDay.now();
    TextEditingController timeinput = TextEditingController();
    //timeinput.text = timeinput.toString();

    //TextEditingController _controller = TextEditingController(text :"",);


    void _showTimePicker() {
      showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      ).then((value) {
        setState(() {
          //_controller.text = value.format(context);
          _timeOfDay = value!;
        });
        //print(value.format(context).toString());
      });
    }

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Application Home Page', style: (TextStyle(fontSize: 30.0, color: Colors.white ))),

      ),

      body: Center(
        child: Column(children: <Widget>[
          /*
                SizedBox(
                  //height: height * 0.09, //height to 9% of screen height,
                  //width: width * 0.4, //width t 40% of screen width
                  width: width * 0.95,
                  child: ElevatedButton(
                    child: Text("Sample Data Table"),
                    onPressed: (){},
                  ),
                ),
                 */
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),

            //Refer for device width and height auto adjust
            height: height *0.886,
            width: width * 0.95,


            margin: EdgeInsets.all(10),
            /*child: Table(
              defaultColumnWidth: FixedColumnWidth(100.0),

              border: TableBorder.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 0.0),
              /*children: [
                TableRow( children: [
                  Column(children:[Text('SNO.', style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold))]),
                  Column(children:[Text('DEVICE ID', style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold))]),
                  Column(children:[Text('START TIME', style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold))]),
                  Column(children:[Text('END TIME', style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold))]),
                  Column(children:[Text('DOWNLOAD ', style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold))]),
                ]),
                TableRow( children:[
                  Column(children:[Text('1',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[TextField (
                    style: TextStyle(fontSize: 19.0, color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter DeviceID',
                      //labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 15),

                    ),
                  ),]),

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),

                  /*
                    Column(children:[

                      Text(pickedTime.format(context).toString(), style: TextStyle(color: Colors.white, fontSize: 19.0),),
                      MaterialButton(
                          onPressed: _showTimePicker,

                          onPressed: () async {
                            TimeOfDay pickedTime =  await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );

                            child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text('Start time',
                                  style: TextStyle(color: Colors.white, fontSize: 19.0),)
                            )
                          },
                        color: Colors.green,
                      ),

                    /*
                      Text(
                        '$hours: $minutes',
                        style: TextStyle(fontSize: 19),
                      ),


                      const SizedBox(height: 16),
                      ElevatedButton(
                          child: Text('Select Time'),

                        onPressed: () async{
                          _showTimePicker;
                          );



                        onPressed: () async{
                            TimeOfDay? newTime = await showTimePicker(
                              context: context,
                              initialTime: time,
                            );

                            //if cancel is pressed
                            if (newTime == null) return;

                            //if ok is pressed
                            //WidgetsBinding.instance.addPostFrameCallback((_) => setState(=> time = newTime));
                          setState(() => time = newTime);
                        },

                      )
                    */
                    ]),*/

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),



                  //Column(children:[Text('21:00:05',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[
                    InkWell(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            //Change download icon size

                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold)

                        ),

                        child: Icon(
                          Icons.download,
                          color: Colors.white,

                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                      ),

                    ),

                  ]),

                ]),
                TableRow( children:[
                  Column(children:[Text('2',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[TextField (
                    style: TextStyle(fontSize: 19.0, color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter DeviceID',
                      //labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 15),

                    ),
                  ),]),

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),

                  /*
                    Column(children:[

                      Text(pickedTime.format(context).toString(), style: TextStyle(color: Colors.white, fontSize: 19.0),),
                      MaterialButton(
                          onPressed: _showTimePicker,

                          onPressed: () async {
                            TimeOfDay pickedTime =  await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );

                            child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text('Start time',
                                  style: TextStyle(color: Colors.white, fontSize: 19.0),)
                            )
                          },
                        color: Colors.green,
                      ),

                    /*
                      Text(
                        '$hours: $minutes',
                        style: TextStyle(fontSize: 19),
                      ),


                      const SizedBox(height: 16),
                      ElevatedButton(
                          child: Text('Select Time'),

                        onPressed: () async{
                          _showTimePicker;
                          );



                        onPressed: () async{
                            TimeOfDay? newTime = await showTimePicker(
                              context: context,
                              initialTime: time,
                            );

                            //if cancel is pressed
                            if (newTime == null) return;

                            //if ok is pressed
                            //WidgetsBinding.instance.addPostFrameCallback((_) => setState(=> time = newTime));
                          setState(() => time = newTime);
                        },

                      )
                    */
                    ]),*/

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),



                  //Column(children:[Text('21:00:05',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[
                    InkWell(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            //Change download icon size

                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold)

                        ),

                        child: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                      ),

                    ),

                  ]),

                ]),
                TableRow( children:[
                  Column(children:[Text('3',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[TextField (
                    style: TextStyle(fontSize: 19.0, color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter DeviceID',
                      //labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 15),

                    ),
                  ),]),

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),

                  /*
                    Column(children:[

                      Text(pickedTime.format(context).toString(), style: TextStyle(color: Colors.white, fontSize: 19.0),),
                      MaterialButton(
                          onPressed: _showTimePicker,

                          onPressed: () async {
                            TimeOfDay pickedTime =  await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );

                            child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text('Start time',
                                  style: TextStyle(color: Colors.white, fontSize: 19.0),)
                            )
                          },
                        color: Colors.green,
                      ),

                    /*
                      Text(
                        '$hours: $minutes',
                        style: TextStyle(fontSize: 19),
                      ),


                      const SizedBox(height: 16),
                      ElevatedButton(
                          child: Text('Select Time'),

                        onPressed: () async{
                          _showTimePicker;
                          );



                        onPressed: () async{
                            TimeOfDay? newTime = await showTimePicker(
                              context: context,
                              initialTime: time,
                            );

                            //if cancel is pressed
                            if (newTime == null) return;

                            //if ok is pressed
                            //WidgetsBinding.instance.addPostFrameCallback((_) => setState(=> time = newTime));
                          setState(() => time = newTime);
                        },

                      )
                    */
                    ]),*/

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),



                  //Column(children:[Text('21:00:05',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[
                    InkWell(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            //Change download icon size

                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold)

                        ),

                        child: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                      ),

                    ),

                  ]),

                ]),
                TableRow( children:[
                  Column(children:[Text('4',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[TextField (
                    style: TextStyle(fontSize: 19.0, color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter DeviceID',
                      //labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 15),

                    ),
                  ),]),

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),

                  /*
                    Column(children:[

                      Text(pickedTime.format(context).toString(), style: TextStyle(color: Colors.white, fontSize: 19.0),),
                      MaterialButton(
                          onPressed: _showTimePicker,

                          onPressed: () async {
                            TimeOfDay pickedTime =  await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );

                            child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text('Start time',
                                  style: TextStyle(color: Colors.white, fontSize: 19.0),)
                            )
                          },
                        color: Colors.green,
                      ),

                    /*
                      Text(
                        '$hours: $minutes',
                        style: TextStyle(fontSize: 19),
                      ),


                      const SizedBox(height: 16),
                      ElevatedButton(
                          child: Text('Select Time'),

                        onPressed: () async{
                          _showTimePicker;
                          );



                        onPressed: () async{
                            TimeOfDay? newTime = await showTimePicker(
                              context: context,
                              initialTime: time,
                            );

                            //if cancel is pressed
                            if (newTime == null) return;

                            //if ok is pressed
                            //WidgetsBinding.instance.addPostFrameCallback((_) => setState(=> time = newTime));
                          setState(() => time = newTime);
                        },

                      )
                    */
                    ]),*/

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),



                  //Column(children:[Text('21:00:05',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[
                    InkWell(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            //Change download icon size

                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold)

                        ),

                        child: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                      ),

                    ),

                  ]),

                ]),
                TableRow( children:[
                  Column(children:[Text('5',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[TextField (
                    style: TextStyle(fontSize: 19.0, color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter DeviceID',
                      //labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 15),

                    ),
                  ),]),

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),

                  /*
                    Column(children:[

                      Text(pickedTime.format(context).toString(), style: TextStyle(color: Colors.white, fontSize: 19.0),),
                      MaterialButton(
                          onPressed: _showTimePicker,

                          onPressed: () async {
                            TimeOfDay pickedTime =  await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );

                            child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text('Start time',
                                  style: TextStyle(color: Colors.white, fontSize: 19.0),)
                            )
                          },
                        color: Colors.green,
                      ),

                    /*
                      Text(
                        '$hours: $minutes',
                        style: TextStyle(fontSize: 19),
                      ),


                      const SizedBox(height: 16),
                      ElevatedButton(
                          child: Text('Select Time'),

                        onPressed: () async{
                          _showTimePicker;
                          );



                        onPressed: () async{
                            TimeOfDay? newTime = await showTimePicker(
                              context: context,
                              initialTime: time,
                            );

                            //if cancel is pressed
                            if (newTime == null) return;

                            //if ok is pressed
                            //WidgetsBinding.instance.addPostFrameCallback((_) => setState(=> time = newTime));
                          setState(() => time = newTime);
                        },

                      )
                    */
                    ]),*/

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),



                  //Column(children:[Text('21:00:05',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[
                    InkWell(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            //Change download icon size

                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold)

                        ),

                        child: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                      ),

                    ),

                  ]),

                ]),
                TableRow( children:[
                  Column(children:[Text('6',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[TextField (
                    style: TextStyle(fontSize: 19.0, color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter DeviceID',
                      //labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 15),

                    ),
                  ),]),

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),

                  /*
                    Column(children:[

                      Text(pickedTime.format(context).toString(), style: TextStyle(color: Colors.white, fontSize: 19.0),),
                      MaterialButton(
                          onPressed: _showTimePicker,

                          onPressed: () async {
                            TimeOfDay pickedTime =  await showTimePicker(
                              initialTime: TimeOfDay.now(),
                              context: context,
                            );

                            child: const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text('Start time',
                                  style: TextStyle(color: Colors.white, fontSize: 19.0),)
                            )
                          },
                        color: Colors.green,
                      ),

                    /*
                      Text(
                        '$hours: $minutes',
                        style: TextStyle(fontSize: 19),
                      ),


                      const SizedBox(height: 16),
                      ElevatedButton(
                          child: Text('Select Time'),

                        onPressed: () async{
                          _showTimePicker;
                          );



                        onPressed: () async{
                            TimeOfDay? newTime = await showTimePicker(
                              context: context,
                              initialTime: time,
                            );

                            //if cancel is pressed
                            if (newTime == null) return;

                            //if ok is pressed
                            //WidgetsBinding.instance.addPostFrameCallback((_) => setState(=> time = newTime));
                          setState(() => time = newTime);
                        },

                      )
                    */
                    ]),*/

                  Column(children:[
                    TextField(
                      controller: timeinput, //editing controller of this TextField
                      decoration: InputDecoration(
                        icon: Icon(Icons.access_time), //icon of text field
                        //labelText: "Enter Time" //label text of field
                      ),

/*
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: const ColorScheme.light(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  onSurface: Colors.green,
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor:
                    Colors.black, // button text color
                  ),
                ),
              ),
              // child: child!,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(alwaysUse24HourFormat: true),
                child: child ?? Container(),
              ),
            );
          },
        );

        if (pickedTime != null) {
          print(pickedTime.format(context));
          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());

          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);

          setState(() {
            timeinput.text = formattedTime;
            // print(timeinput.text);
          });
        } else {
          // print("Time is not selected");
        }
      },
*/


                      readOnly: true,  //set it true, so that user will not able to edit text

                      onTap: () async {
                        TimeOfDay? pickedTime =  await showTimePicker(
                          initialTime: TimeOfDay.now(),
                          context: context,
                        );
                        if(pickedTime != null ){
                          print(pickedTime.format(context));   //output 10:51 PM
                          DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                          //converting to DateTime so that we can further format on different pattern.
                          print(parsedTime); //output 1970-01-01 22:53:00.000
                          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
                          print(formattedTime); //output 14:59:00
                          //DateFormat() is from intl package, you can format the time on any pattern you need.

                          setState(() {
                            timeinput.text = formattedTime; //set the value of text field.
                          });
                        }else{
                          print("Time is not selected");
                        }
                      },
                    ),

                  ]
                  ),



                  //Column(children:[Text('21:00:05',style: TextStyle(fontSize: 19.0, color: Colors.white))]),
                  Column(children:[
                    InkWell(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            //Change download icon size

                            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            textStyle: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold)

                        ),

                        child: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                      ),

                    ),

                  ]),

                ]),



              ],*/

            ),*/
            child : Row(
              children:  [
                // SizedBox(
                // height: 20,
                // ),
                Card(
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Text('Enter Device ID',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                ),

                // SizedBox(
                // height: 30,
                // ),

                Card(
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Text('Start Time 10:00PM',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Text('End Time 11:00PM',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                ),
                Text("\n"),

                Card(
                  elevation: 10,
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Text('Download here',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),


              ],
            ),
          ),


        ]),


      ),


    );
  }
}



class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Data Download Page', style: (TextStyle(fontSize: 30.0, color: Colors.white ))),

      ),
      body: Center(

        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              //Change download icon size

              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold)

          ),

          onPressed: () {
            print("File Downloaded");
            //Navigator.pop(context);
          },
          child: Text('Download Here',  ),
        ),
      ),
    );
  }
}



/*

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Table',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TablePage(),
      routes: {
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('SNo.'),
                ),
                DataColumn(
                  label: Text('Cow ID'),
                ),
                DataColumn(
                  label: Text('Activity Status'),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('1')),
                    DataCell(Text('XYZ123')),
                    DataCell(
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                        child: Text('Click here'),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('2')),
                    DataCell(Text('ABC456')),
                    DataCell(
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                        child: Text('Click here'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Status of Cow'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Start Time'),
                ),
                DataColumn(
                  label: Text('End Time'),
                ),
                DataColumn(
                  label: Text('Activity'),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('10:00')),
                    DataCell(Text('12:00')),
                    DataCell(Text('Sleeping')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('21:00')),
                    DataCell(Text('23:00')),
                    DataCell(Text('Standing')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

 */



 */

//1st
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Web App'),
          backgroundColor: Colors.green,
        ),
        body:
        Row(
          children:  [
            // SizedBox(
            // height: 20,
            // ),
            Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text('Device ID',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),

            // SizedBox(
            // height: 30,
            // ),

            Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text('Start Time 10:00PM',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text('End Time 11:00PM',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Card(
              elevation: 10,
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text('Download',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}

 */


//2nd better


//2nd one better
/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/secondPage': (context) => SecondPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  TextEditingController userInputController = TextEditingController();
  TextEditingController timeInputController1 = TextEditingController();
  TextEditingController timeInputController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: userInputController,
              decoration: InputDecoration(
                hintText: 'Enter Text',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: TextField(
                    controller: timeInputController1,
                    decoration: InputDecoration(
                      hintText: 'Enter Time 1',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: TextField(
                    controller: timeInputController2,
                    decoration: InputDecoration(
                      hintText: 'Enter Time 2',
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondPage');
              },
              child: Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(
          'This is the second page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
*/


//3rd
/*
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:js_interop';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/secondPage': (context) => SecondPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController userInputController = TextEditingController();
  String time1 = 'Select Time 1';
  String time2 = 'Select Time 2';

  @override
  void dispose() {
    userInputController.dispose();
    super.dispose();
  }

  void _selectTime1() {
    DatePicker.showTimePicker(
      context,
      showTitleActions: true,
      onChanged: (time) {
        setState(() {
          time1 = time.toString();
        });
      },
    );
  }

  void _selectTime2() {
    DatePicker.showTimePicker(
      context,
      showTitleActions: true,
      onChanged: (time) {
        setState(() {
          time2 = time.toString();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: userInputController,
              decoration: InputDecoration(
                hintText: 'Enter Text',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _selectTime1,
                  child: Text(time1),
                ),
                ElevatedButton(
                  onPressed: _selectTime2,
                  child: Text(time2),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String userInput = userInputController.text;
                print('User Input: $userInput');
                print('Time Input 1: $time1');
                print('Time Input 2: $time2');
              },
              child: Text('Process Input'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondPage');
              },
              child: Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(
          'This is the second page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}


 */

//4th finalized for cow web testing
/*
import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
//import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      routes: {
        '/secondPage': (context) => SecondPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController userInputController = TextEditingController();
  TimeOfDay? time1;
  TimeOfDay? time2;

  @override
  void dispose() {
    userInputController.dispose();
    super.dispose();
  }

  Future<void> _selectTime1() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        time1 = pickedTime;
      });
    }
  }

  Future<void> _selectTime2() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        time2 = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: userInputController,
              decoration: InputDecoration(
                hintText: 'Enter Device ID',

              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [



                ElevatedButton(

                  onPressed: _selectTime1,
                  child: Text(time1 != null ? time1!.format(context) : 'Start Time', style: (TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold ))),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),

                  ),
                ),
                ElevatedButton(
                  onPressed: _selectTime2,
                  child: Text(time2 != null ? time2!.format(context) : 'End time', style: (TextStyle(fontSize: 20.0, color: Colors.white , fontWeight: FontWeight.bold))),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),

                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondPage');
              },

              child: Text('Download ', style: (TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold ))),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),

              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download Page'),
      ),
      body: Center(

        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              //Change download icon size

              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold)

          ),

          onPressed: () {
            print("File Downloaded");
            //Navigator.pop(context);
          },
          child: Text('Download Here',  ),
        ),
      ),
    );
  }
}


 */
//Table for cow neck
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TablePage(),
      routes: {
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Column 1'),
                ),
                DataColumn(
                  label: Text('Column 2'),
                ),
                DataColumn(
                  label: Text('Column 3'),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Cell 1')),
                    DataCell(Text('Cell 2')),
                    DataCell(
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                        child: Text('Go to Second Page'),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Cell 4')),
                    DataCell(Text('Cell 5')),
                    DataCell(
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                        child: Text('Go to Second Page'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Column A'),
                ),
                DataColumn(
                  label: Text('Column B'),
                ),
                DataColumn(
                  label: Text('Column C'),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Cell A1')),
                    DataCell(Text('Cell B1')),
                    DataCell(Text('Cell C1')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('Cell A2')),
                    DataCell(Text('Cell B2')),
                    DataCell(Text('Cell C2')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

 */

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TablePage(),
      routes: {
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(16),
              child: DataTable(
                columnSpacing: 30,
                headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue[100]!),
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text('Column 1'),
                  ),
                  DataColumn(
                    label: Text('Column 2'),
                  ),
                  DataColumn(
                    label: Text('Column 3'),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Cell 1')),
                      DataCell(Text('Cell 2')),
                      DataCell(
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text('Go to Second Page'),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('Cell 4')),
                      DataCell(Text('Cell 5')),
                      DataCell(
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text('Go to Second Page'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(16),
          child: DataTable(
            columnSpacing: 30,
            headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue[100]!),
            columns: const <DataColumn>[
              DataColumn(
                label: Text('Column A'),
              ),
              DataColumn(
                label: Text('Column B'),
              ),
              DataColumn(
                label: Text('Column C'),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Cell A1')),
                  DataCell(Text('Cell B1')),
                  DataCell(Text('Cell C1')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Cell A2')),
                  DataCell(Text('Cell B2')),
                  DataCell(Text('Cell C2')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 */


/*

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TablePage(),
      routes: {
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 30,
              headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue[100]!),
              dataRowColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Column 1'),
                ),
                DataColumn(
                  label: Text('Column 2'),
                ),
                DataColumn(
                  label: Text('Column 3'),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 1'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 2'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text('Go to Second Page'),
                        ),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 4'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 5'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          child: Text('Go to Second Page'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 30,
              headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue[100]!),
              dataRowColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Column A'),
                ),
                DataColumn(
                  label: Text('Column B'),
                ),
                DataColumn(
                  label: Text('Column C'),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell A1'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell B1'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell C1'),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell A2'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell B2'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell C2'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


 */
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Table Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TablePage(),
      routes: {
        '/second': (context) => SecondPage(),
      },
    );
  }
}

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 50,
              headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue[100]!),
              dataRowColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('SNo.',style: TextStyle(fontSize: 25.0, color: Colors.black)),
                ),
                DataColumn(
                  label: Text('CowID',style: TextStyle(fontSize: 25.0, color: Colors.black)),
                ),
                DataColumn(
                  label: Text('Activity',style: TextStyle(fontSize: 25.0, color: Colors.black)),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 1',style: TextStyle(fontSize: 20.0, color: Colors.black)),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 2',style: TextStyle(fontSize: 20.0, color: Colors.black)),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.yellow[100]),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                          child: Text('Activity',style: TextStyle(fontSize: 20.0, color: Colors.black)),
                        ),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 4',style: TextStyle(fontSize: 20.0, color: Colors.black)),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 5',style: TextStyle(fontSize: 20.0, color: Colors.black)),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.yellow[100]),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                          child: Text('Activity', style: TextStyle(fontSize: 20.0, color: Colors.black)),
                        ),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 4',style: TextStyle(fontSize: 20.0, color: Colors.black)),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 5',style: TextStyle(fontSize: 20.0, color: Colors.black)),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.yellow[100]),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                          child: Text('Activity', style: TextStyle(fontSize: 20.0, color: Colors.black)),
                        ),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 4',style: TextStyle(fontSize: 20.0, color: Colors.black)),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell 5',style: TextStyle(fontSize: 20.0, color: Colors.black)),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/second');
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Colors.yellow[100]),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                          child: Text('Activity', style: TextStyle(fontSize: 20.0, color: Colors.black)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 30,
              headingRowColor: MaterialStateColor.resolveWith((states) => Colors.blue[100]!),
              dataRowColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
              columns: const <DataColumn>[
                DataColumn(
                  label: Text('Column A'),
                ),
                DataColumn(
                  label: Text('Column B'),
                ),
                DataColumn(
                  label: Text('Column C'),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell A1'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell B1'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell C1'),
                      ),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell A2'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell B2'),
                      ),
                    ),
                    DataCell(
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.yellow[100],
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Text('Cell C2'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 */

//Cow neck web app(new proj)
/*
import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
      routes: {
        '/secondPage': (context) => SecondPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController userInputController = TextEditingController();
  TimeOfDay? time1;
  TimeOfDay? time2;

  @override
  void dispose() {
    userInputController.dispose();
    super.dispose();
  }

  Future<void> _selectTime1() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        time1 = pickedTime;
      });
    }
  }

  Future<void> _selectTime2() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        time2 = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: userInputController,
              decoration: InputDecoration(
                hintText: 'Enter Device ID',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _selectTime1,
                  child: Text(
                      time1 != null ? time1!.format(context) : 'Start Time',
                      style: (TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                ElevatedButton(
                  onPressed: _selectTime2,
                  child: Text(
                      time2 != null ? time2!.format(context) : 'End time',
                      style: (TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondPage');
              },
              child: Text('Download ',
                  style: (TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Download Page'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              //Change download icon size

              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          onPressed: () {
            print("File Downloaded");
            //Navigator.pop(context);
          },
          child: Text(
            'Download Here',
          ),
        ),
      ),
    );
  }
}
 */


//Epoch time
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Field Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FieldPage(),
    );
  }
}

class FieldPage extends StatefulWidget {
  @override
  _FieldPageState createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
  String deviceId = '';
  String startTime = '';
  String endTime = '';

  void downloadData() {
    // Perform download operation with device ID, start time, and end time
    print('Downloading data for Device ID: $deviceId');
    print('Start Time: $startTime');
    print('End Time: $endTime');
    // Add your download logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Field Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Device ID',
              ),
              onChanged: (value) {
                setState(() {
                  deviceId = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Start Time (Epoch)',
              ),
              onChanged: (value) {
                setState(() {
                  startTime = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'End Time (Epoch)',
              ),
              onChanged: (value) {
                setState(() {
                  endTime = value;
                });
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: downloadData,
              child: Text('Download'),
            ),
          ],
        ),
      ),
    );
  }
}


 */

//new epoch time

/*
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Web App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FieldPage(),
    );
  }
}

class FieldPage extends StatefulWidget {
  @override
  _FieldPageState createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
  final TextEditingController deviceIdController = TextEditingController();
  DateTime? startTime;
  DateTime? endTime;

  void _showDatePicker(BuildContext context, bool isStartTime) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      final TimeOfDay? selectedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (selectedTime != null) {
        final DateTime combinedDateTime = DateTime(
          selectedDate.year,
          selectedDate.month,
          selectedDate.day,
          selectedTime.hour,
          selectedTime.minute,
        );

        setState(() {
          if (isStartTime) {
            startTime = combinedDateTime;
          } else {
            endTime = combinedDateTime;
          }
        });
      }
    }
  }

  void _downloadData() {
    if (startTime != null && endTime != null) {
      final int startTimeEpoch = startTime!.millisecondsSinceEpoch ~/ 1000;
      final int endTimeEpoch = endTime!.millisecondsSinceEpoch ~/ 1000;

      print('Device ID: ${deviceIdController.text}');
      print('Start Time: $startTimeEpoch');
      print('End Time: $endTimeEpoch');
    }
  }

  @override
  void dispose() {
    deviceIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application Homepage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: deviceIdController,
              decoration: InputDecoration(
                labelText: 'Device ID',
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () => _showDatePicker(context, true),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Start Time',
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  startTime != null
                      ? DateFormat('yyyy-MM-dd HH:mm').format(startTime!)
                      : 'Select start time',
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () => _showDatePicker(context, false),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'End Time',
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  endTime != null
                      ? DateFormat('yyyy-MM-dd HH:mm').format(endTime!)
                      : 'Select end time',
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(

              onPressed: _downloadData,
              //child: Text('Download'),
              child: Text('Download ',
                  style: (TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      ))),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

*/












/*

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


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterDownloader.initialize(debug: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cow WebAPP',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FieldPage(),
    );
  }
}

class FieldPage extends StatefulWidget {
  @override
  _FieldPageState createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {

  final TextEditingController deviceIdController = TextEditingController();
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController endTimeController = TextEditingController();

  //int? deviceId = int.tryParse('105');
  String deviceId ='' ;
  String starttime = '';
  String endtime = '';
/*
  void _storeInputData() {
    setState(() {
      deviceId = deviceIdController.text;
    });
  }*/

  /*
  void _convertToInt() {
    int? inputValue = int.tryParse(deviceIdController.text);
    if (inputValue != null) {
      deviceId = inputValue.toString();
    } else {
      deviceId = 'Invalid input';
    }
  }

   */


  DateTime? startTime;
  DateTime? endTime;

  void _showDatePicker(BuildContext context, bool isStartTime) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      final TimeOfDay? selectedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (selectedTime != null) {
        final DateTime combinedDateTime = DateTime(
          selectedDate.year,
          selectedDate.month,
          selectedDate.day,
          selectedTime.hour,
          selectedTime.minute,
        );

        setState(() {
          if (isStartTime) {
            startTime = combinedDateTime;
          } else {
            endTime = combinedDateTime;
          }
        });
      }
    }
  }

  //download data
  void _downloadData() {
    //if (startTime != null && endTime != null) {
      //final int startTimeEpoch = startTime!.millisecondsSinceEpoch ~/ 1000;
      //final int endTimeEpoch = endTime!.millisecondsSinceEpoch ~/ 1000;
      print('Device ID: ${deviceIdController.text}');
      print('Start Epoch Time: ${startTimeController.text}');
      print('End Epoch Time : ${endTimeController.text}');
      //print('Start Time Epoch: $startTimeEpoch');
      //print('End Time Epoch: $endTimeEpoch');

      final jsonData = {
        'DeviceID': deviceIdController.text,
        'StartTime': startTimeController.text,
        'EndTime': endTimeController.text,
      };

      final csvContent = convertToCsv([jsonData]);
      _saveCsvFile(csvContent);
    //}
  }




//Fetch data in tabular format
  /*void fetchData() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body)as List<dynamic>;

      final List<DataRow> dataRows = [];

      jsonData.forEach((item) {
        final dataRow = DataRow(cells: [
          DataCell(Text(item['Device ID'].toString())),
          DataCell(Text(item['Start Time'].toString())),
          DataCell(Text(item['End Time'].toString())),
        ]);
        dataRows.add(dataRow);
      });

      runApp(printTabular(dataRows: dataRows));
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/


//Fetch data 2
 /* void fetchData() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      final List<DataRow> dataRows = jsonData.map((item) {
        return DataRow(cells: [
          DataCell(Text(item['id'].toString())),
          DataCell(Text(item['id'].toString())),
          DataCell(Text(item['id'].toString())),
        ]);
      }).toList();

      print(jsonData); // Print the fetched data on the console

      runApp(printTabular(dataRows: dataRows));
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/

//fetch and download data
 /* void fetchDataAndDownload() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = response.body;
      const fileName = 'cow_data.json'; // Specify the file name and extension

      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/$fileName';

      final file = File(filePath);
      await file.writeAsString(jsonData);

      print('JSON data saved at: $filePath');
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/

//fetch data & downlaod 2
  /*void fetchDataAndDownload() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = response.body;
      const fileName = 'cow_data.json'; // Specify the file name and extension
      print(jsonData);

      Directory? directory;
      try {
        directory = await getApplicationDocumentsDirectory();
      } catch (e) {
        // Use getTemporaryDirectory as a fallback
        directory = await getTemporaryDirectory() as Directory?;
      }

      if (directory != null) {
        final filePath = '${directory.path}/$fileName';

        final file = File(filePath);
        await file.writeAsString(jsonData);

        print('JSON data saved at: $filePath');

      } else {
        print('Error: Unable to get the storage directory.');
      }
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/





void fetchDataAndPrint() async {
  print(deviceId);
  print(starttime);
  print(endtime);
  //final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=105&starttime=1688132921&endtime=1688133222'); // Replace with your API endpoint
  final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=$deviceId&starttime=$starttime&endtime=$endtime'); // Replace with your API endpoint
  //https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=$deviceId&starttime=$starttime&endtime=$endtime
  final response = await http.get(url);
  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    printData(jsonData);
  } else {
    print('Error: ${response.statusCode}');
  }
}


void printData(dynamic jsonData) {
  final encodedData = json.encode(jsonData);
  final decodedData = json.decode(encodedData);

  if (decodedData is List) {
    for (var item in decodedData) {
      printRow(item);

    }
  } else if (decodedData is Map) {
    printRow(decodedData);
  } else {
    print('Invalid JSON data');
  }
}

void printRow(Map<dynamic, dynamic> data) {
  data.forEach((key, value) {
    print('$key: $value');
  });
  print('---------------------------------');

}


//Fetch and download data 3 .json(working)
  void fetchDataAndDownload() async {
    print(deviceId);
    print(starttime);
    print(endtime);
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=$deviceId&starttime=$starttime&endtime=$endtime'); // Replace with your API endpoint
    //final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=105&starttime=1688132921&endtime=1688133222'); // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = response.body;
      const fileName = 'cow_data.json'; // Specify the file name and extension

      //final decodedData = json.decode(jsonData);
      //final csvData = ListToCsvConverter().convert(decodedData);

      final anchor = html.AnchorElement(
          href: 'data:text/plain;charset=utf-8,${Uri.encodeComponent(
              jsonData)}')
        ..setAttribute('download', fileName)
        ..click();


      fetchDataAndPrint();
      //jsonData.forEach((int jsonData) => print(jsonData));


      //print(jsonData);
    } else {
      print('Error: ${response.statusCode}');
    }
  }





//Tabular printing
 /* void fetchDataAndDownload() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = response.body;
      final decodedData = json.decode(jsonData);
      print(jsonData);

      final List<TableRow> tableRows = [];
      if (decodedData is List) {
        // Assuming the JSON data is an array of objects
        if (decodedData.isNotEmpty) {
          final firstObject = decodedData.first;
          final List<TableCell> headers = firstObject.keys.map((key) {
            return TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(key, style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            );
          }).toList();
          tableRows.add(TableRow(children: headers));

          for (var dataObject in decodedData) {
            final List<TableCell> cells = dataObject.values.map((value) {
              return TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(value.toString()),
                ),
              );
            }).toList();
            tableRows.add(TableRow(children: cells));

            // Print the row data on the console
            cells.forEach((cell) {
              final textData = (cell.child as Padding).child as Text;
              print(textData.data);
            });
          }
        }
      }

      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Table(
                  border: TableBorder.all(),
                  children: tableRows,
                ),
              ),
            ),
          );
        },
      );
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/





//Fetch data in json format
/* void fetchData() async {
  final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

  final response = await http.get(url);
  if (response.statusCode == 200) {
    final jsonData = response.body;

    /*
    // Process the JSON data here
    final jsonData = {
      'DeviceID': deviceIdController.text,
      'StartTime': startTimeController.text,
      'EndTime': endTimeController.text,
    };

    final csvContent = convertToCsv([jsonData]);
    _saveCsvFile(csvContent);
    */

    print(jsonData);
  } else {
    print('Error: ${response.statusCode}');
  }

}*/

  String convertToCsv(List<Map<String, dynamic>> dataList) {
    if (dataList.isEmpty) return '';

    final headers = dataList.first.keys.toList();
    final rows = dataList.map((data) => data.values.toList()).toList();

    final List<List<dynamic>> csvData = [];
    csvData.add(headers);
    csvData.addAll(rows);

    final csvContent = const ListToCsvConverter().convert(csvData);
    return csvContent;
  }

  Future<void> _saveCsvFile(String csvContent) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/cow_data.csv');

      await file.writeAsString(csvContent);

      print('CSV file saved successfully');
    } catch (e) {
      print('Error saving CSV file: $e');
    }
  }

  @override
  void dispose() {
    deviceIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: deviceIdController,
              onChanged: (value) {
                deviceId = value;
              },
              decoration: InputDecoration(
                labelText: 'Enter Device ID',
              ),
            ),
            TextField(
              controller: startTimeController,
              onChanged: (value) {
                starttime = value;
              },
              decoration: InputDecoration(
                labelText: 'Enter Start Time in EPOCH format',
              ),
            ),
            TextField(
              controller: endTimeController,
              onChanged: (value) {
                endtime = value;
              },
              decoration: InputDecoration(
                labelText: 'Enter End Time in EPOCH format',
              ),
            ),

            //Change here to make the time and date selected by the user
            /*
            SizedBox(height: 16),
            InkWell(
              onTap: () => _showDatePicker(context, true),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Start Time',
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  startTime != null
                      ? DateFormat('yyyy-MM-dd HH:mm').format(startTime!)
                      : 'Select start time',
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () => _showDatePicker(context, false),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'End Time',
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  endTime != null
                      ? DateFormat('yyyy-MM-dd HH:mm').format(endTime!)
                      : 'Select end time',
                ),
              ),
            ),
            */



            SizedBox(height: 16),
            ElevatedButton(
              onPressed: fetchDataAndDownload,
              child: Text('Download ',
                  style: (TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ))),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),
              ),
              //child: Text('Download'),
              /*
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),*/

            ),
          ],
        ),
      ),
    );
  }
}

class printTabular extends StatelessWidget {
  final List<DataRow> dataRows;

  printTabular({required this.dataRows});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('API '),
        ),
        body: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(label: Text('Device ID')),
              DataColumn(label: Text('Start Time')),
              DataColumn(label: Text('End Time')),
            ],
            rows: dataRows,

          ),
        ),
      ),
    );
  }
}

*/












/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';


void main() {
  fetchDataAndDownload();
}

void fetchDataAndDownload() async {
  final url = Uri.parse('https://api.example.com/data'); // Replace with your API endpoint

  final response = await http.get(url);
  if (response.statusCode == 200) {
    final jsonData = response.body;
    const fileName = 'data.json'; // Specify the file name and extension

    final encodedData = json.encode(jsonData);

    // Create a data URI for the JSON data
    final jsonDataUri = 'data:text/json;charset=utf-8,${Uri.encodeComponent(encodedData)}';

    final anchor = html.AnchorElement()
      ..href = jsonDataUri
      ..download = fileName
      ..click();

    print('File downloaded');
  } else {
    print('Error: ${response.statusCode}');
  }
}

void printData(dynamic jsonData) {
  final encodedData = json.encode(jsonData);
  final decodedData = json.decode(encodedData);

  if (decodedData is List) {
    for (var item in decodedData) {
      printRow(item);
    }
  } else if (decodedData is Map) {
    printRow(decodedData);
  } else {
    print('Invalid JSON data');
  }
}

void printRow(Map<dynamic, dynamic> data) {
  data.forEach((key, value) {
    print('$key: $value');
  });
  print('---');
}
*/












/*
//final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222'); // Replace with your API endpoint
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FetchDataWidget()
  )
  );
}

class FetchDataWidget extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  //Future<void> fetchData(int userInput) async {
  Future<void> fetchData(String userInput) async {
    final url = 'https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=105&starttime=1688132921&endtime=1688133222'; // Replace with your API endpoint

    try {
      //print(deviceId);
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        // Print the fetched data
        print(userInput);
        print('Device ID type: ${userInput.runtimeType}');
        print(data);
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fetch Data')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Device ID: '),
            ),

            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                //int.tryparse()
                //final userInput = int.parse(_controller.text.toString());
                final userInput = _controller.text.toString();
                //userInput = userInput.toString();
                if (userInput != null) {
                  fetchData(userInput);
                } else {
                  print('Invalid input. Please enter a valid integer.');
                }
              },
              child: Text('Fetch Data'),
            ),
          ],
        ),
      ),
    );
  }
}
*/








/*

import 'package:flutter/material.dart';

void main() {
  runApp(NavigationBarApp());
}

class NavigationBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 56.0,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.info),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.business),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/services');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.mail),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.photo_album),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/gallery');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/settings');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.help),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/help');
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Home Page Content',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

*/




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
                  icon: Image.network(
                      'https://pbs.twimg.com/profile_images/1457950809623187463/N8F-A4xt_400x400.jpg',
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





















/*

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

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterDownloader.initialize(debug: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cow WebAPP',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FieldPage(),
    );
  }
}

class FieldPage extends StatefulWidget {
  @override
  _FieldPageState createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
  final TextEditingController deviceIdController = TextEditingController();
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController endTimeController = TextEditingController();

  //int? deviceId = int.tryParse('105');
  String deviceId = '';
  String starttime = '';
  String endtime = '';
/*
  void _storeInputData() {
    setState(() {
      deviceId = deviceIdController.text;
    });
  }*/

  /*
  void _convertToInt() {
    int? inputValue = int.tryParse(deviceIdController.text);
    if (inputValue != null) {
      deviceId = inputValue.toString();
    } else {
      deviceId = 'Invalid input';
    }
  }

   */

  DateTime? startTime;
  DateTime? endTime;

  void _showDatePicker(BuildContext context, bool isStartTime) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null) {
      final TimeOfDay? selectedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (selectedTime != null) {
        final DateTime combinedDateTime = DateTime(
          selectedDate.year,
          selectedDate.month,
          selectedDate.day,
          selectedTime.hour,
          selectedTime.minute,
        );

        setState(() {
          if (isStartTime) {
            startTime = combinedDateTime;
          } else {
            endTime = combinedDateTime;
          }
        });
      }
    }
  }

  //download data
  void _downloadData() {
    //if (startTime != null && endTime != null) {
    //final int startTimeEpoch = startTime!.millisecondsSinceEpoch ~/ 1000;
    //final int endTimeEpoch = endTime!.millisecondsSinceEpoch ~/ 1000;
    print('Device ID: ${deviceIdController.text}');
    print('Start Epoch Time: ${startTimeController.text}');
    print('End Epoch Time : ${endTimeController.text}');
    //print('Start Time Epoch: $startTimeEpoch');
    //print('End Time Epoch: $endTimeEpoch');

    final jsonData = {
      'DeviceID': deviceIdController.text,
      'StartTime': startTimeController.text,
      'EndTime': endTimeController.text,
    };

    final csvContent = convertToCsv([jsonData]);
    _saveCsvFile(csvContent);
    //}
  }

//Fetch data in tabular format
  /*void fetchData() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body)as List<dynamic>;

      final List<DataRow> dataRows = [];

      jsonData.forEach((item) {
        final dataRow = DataRow(cells: [
          DataCell(Text(item['Device ID'].toString())),
          DataCell(Text(item['Start Time'].toString())),
          DataCell(Text(item['End Time'].toString())),
        ]);
        dataRows.add(dataRow);
      });

      runApp(printTabular(dataRows: dataRows));
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/

//Fetch data 2
  /* void fetchData() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;

      final List<DataRow> dataRows = jsonData.map((item) {
        return DataRow(cells: [
          DataCell(Text(item['id'].toString())),
          DataCell(Text(item['id'].toString())),
          DataCell(Text(item['id'].toString())),
        ]);
      }).toList();

      print(jsonData); // Print the fetched data on the console

      runApp(printTabular(dataRows: dataRows));
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/

//fetch and download data
  /* void fetchDataAndDownload() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = response.body;
      const fileName = 'cow_data.json'; // Specify the file name and extension

      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/$fileName';

      final file = File(filePath);
      await file.writeAsString(jsonData);

      print('JSON data saved at: $filePath');
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/

//fetch data & downlaod 2
  /*void fetchDataAndDownload() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = response.body;
      const fileName = 'cow_data.json'; // Specify the file name and extension
      print(jsonData);

      Directory? directory;
      try {
        directory = await getApplicationDocumentsDirectory();
      } catch (e) {
        // Use getTemporaryDirectory as a fallback
        directory = await getTemporaryDirectory() as Directory?;
      }

      if (directory != null) {
        final filePath = '${directory.path}/$fileName';

        final file = File(filePath);
        await file.writeAsString(jsonData);

        print('JSON data saved at: $filePath');

      } else {
        print('Error: Unable to get the storage directory.');
      }
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/

  void fetchDataAndPrint() async {
    print(deviceId);
    print(starttime);
    print(endtime);
    //final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=105&starttime=1688132921&endtime=1688133222'); // Replace with your API endpoint
    final url = Uri.parse(
        'https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=$deviceId&starttime=$starttime&endtime=$endtime'); // Replace with your API endpoint
    //https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=$deviceId&starttime=$starttime&endtime=$endtime
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      printData(jsonData);
    } else {
      print('Error: ${response.statusCode}');
    }
  }

  void printData(dynamic jsonData) {
    final encodedData = json.encode(jsonData);
    final decodedData = json.decode(encodedData);

    if (decodedData is List) {
      for (var item in decodedData) {
        printRow(item);
      }
    } else if (decodedData is Map) {
      printRow(decodedData);
    } else {
      print('Invalid JSON data');
    }
  }

  void printRow(Map<dynamic, dynamic> data) {
    data.forEach((key, value) {
      print('$key: $value');
    });
    print('---------------------------------');
  }

//Fetch and download data 3 .json(working)
  void fetchDataAndDownload() async {
    print(deviceId);
    print(starttime);
    print(endtime);
    final url = Uri.parse(
        'https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=$deviceId&starttime=$starttime&endtime=$endtime'); // Replace with your API endpoint
    //final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=105&starttime=1688132921&endtime=1688133222'); // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = response.body;
      const fileName = 'cow_data.json'; // Specify the file name and extension

      //final decodedData = json.decode(jsonData);
      //final csvData = ListToCsvConverter().convert(decodedData);

      final anchor = html.AnchorElement(
          href:
          'data:text/plain;charset=utf-8,${Uri.encodeComponent(jsonData)}')
        ..setAttribute('download', fileName)
        ..click();

      fetchDataAndPrint();
      //jsonData.forEach((int jsonData) => print(jsonData));

      //print(jsonData);
    } else {
      print('Error: ${response.statusCode}');
    }
  }

//Tabular printing
  /* void fetchDataAndDownload() async {
    final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonData = response.body;
      final decodedData = json.decode(jsonData);
      print(jsonData);

      final List<TableRow> tableRows = [];
      if (decodedData is List) {
        // Assuming the JSON data is an array of objects
        if (decodedData.isNotEmpty) {
          final firstObject = decodedData.first;
          final List<TableCell> headers = firstObject.keys.map((key) {
            return TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(key, style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            );
          }).toList();
          tableRows.add(TableRow(children: headers));

          for (var dataObject in decodedData) {
            final List<TableCell> cells = dataObject.values.map((value) {
              return TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(value.toString()),
                ),
              );
            }).toList();
            tableRows.add(TableRow(children: cells));

            // Print the row data on the console
            cells.forEach((cell) {
              final textData = (cell.child as Padding).child as Text;
              print(textData.data);
            });
          }
        }
      }

      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Table(
                  border: TableBorder.all(),
                  children: tableRows,
                ),
              ),
            ),
          );
        },
      );
    } else {
      print('Error: ${response.statusCode}');
    }
  }*/

//Fetch data in json format
/* void fetchData() async {
  final url = Uri.parse('https://wcelyqvyi7.execute-api.us-east-1.amazonaws.com/deployment/cow?deviceId=120&starttime=1688132921&endtime=1688133222');  // Replace with your API endpoint

  final response = await http.get(url);
  if (response.statusCode == 200) {
    final jsonData = response.body;

    /*
    // Process the JSON data here
    final jsonData = {
      'DeviceID': deviceIdController.text,
      'StartTime': startTimeController.text,
      'EndTime': endTimeController.text,
    };

    final csvContent = convertToCsv([jsonData]);
    _saveCsvFile(csvContent);
    */

    print(jsonData);
  } else {
    print('Error: ${response.statusCode}');
  }

}*/

  String convertToCsv(List<Map<String, dynamic>> dataList) {
    if (dataList.isEmpty) return '';

    final headers = dataList.first.keys.toList();
    final rows = dataList.map((data) => data.values.toList()).toList();

    final List<List<dynamic>> csvData = [];
    csvData.add(headers);
    csvData.addAll(rows);

    final csvContent = const ListToCsvConverter().convert(csvData);
    return csvContent;
  }

  Future<void> _saveCsvFile(String csvContent) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/cow_data.csv');

      await file.writeAsString(csvContent);

      print('CSV file saved successfully');
    } catch (e) {
      print('Error saving CSV file: $e');
    }
  }

  @override
  void dispose() {
    deviceIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.network(
              //'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Cow_%28Fleckvieh_breed%29_Oeschinensee_Slaunger_2009-07-07.jpg/1200px-Cow_%28Fleckvieh_breed%29_Oeschinensee_Slaunger_2009-07-07.jpg',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREDPOiOb5z1eAIkQWA6XBv5FyBU2G1ijXK8w&usqp=CAU',
              width: 80,
              height: 80,
            ),
            Text('AWaDH Cow Monitoring '),
          ],

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: deviceIdController,
              onChanged: (value) {
                deviceId = value;
              },
              decoration: InputDecoration(
                labelText: 'Enter Device ID',
              ),
            ),
            TextField(
              controller: startTimeController,
              onChanged: (value) {
                starttime = value;
              },
              decoration: InputDecoration(
                labelText: 'Enter Start Time in EPOCH format',
              ),
            ),
            TextField(
              controller: endTimeController,
              onChanged: (value) {
                endtime = value;
              },
              decoration: InputDecoration(
                labelText: 'Enter End Time in EPOCH format',
              ),
            ),

            //Change here to make the time and date selected by the user
            /*
            SizedBox(height: 16),
            InkWell(
              onTap: () => _showDatePicker(context, true),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'Start Time',
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  startTime != null
                      ? DateFormat('yyyy-MM-dd HH:mm').format(startTime!)
                      : 'Select start time',
                ),
              ),
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () => _showDatePicker(context, false),
              child: InputDecorator(
                decoration: InputDecoration(
                  labelText: 'End Time',
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  endTime != null
                      ? DateFormat('yyyy-MM-dd HH:mm').format(endTime!)
                      : 'Select end time',
                ),
              ),
            ),
            */

            SizedBox(height: 16),
            ElevatedButton(
              onPressed: fetchDataAndDownload,
              child: Text('Download ',
                  style: (TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ))),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),
              ),
              //child: Text('Download'),
              /*
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(70)),*/
            ),
          ],
        ),
      ),
    );
  }
}

class printTabular extends StatelessWidget {
  final List<DataRow> dataRows;

  printTabular({required this.dataRows});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('API '),
        ),
        body: SingleChildScrollView(
          child: DataTable(
            columns: [
              DataColumn(label: Text('Device ID')),
              DataColumn(label: Text('Start Time')),
              DataColumn(label: Text('End Time')),
            ],
            rows: dataRows,
          ),
        ),
      ),
    );
  }
}




*/

