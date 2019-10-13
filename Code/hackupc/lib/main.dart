import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'problem1.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: MyAppBar(
              goBack: false,
            ),
          ),
          body: MainPage()),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: screenHeight / 10,
          child: Text(
            'What\'s Hurt!',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          child: Stack(
            children: <Widget>[
              MyShape(),
              Positioned(
                right: screenWidth / 2.25,
                child: IconButton(
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => problemPage1()));
                  },
                ),
              ),
              Positioned(
                top: screenHeight / 8.5,
                left: screenWidth / 3.5,
                child: IconButton(
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.red,
                  ),
                  onPressed: null,
                ),
              ),
              Positioned(
                top: screenHeight / 4,
                left: screenWidth / 4,
                child: IconButton(
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.red,
                  ),
                  onPressed: null,
                ),
              ),
              Positioned(
                top: screenHeight / 8.5,
                right: screenWidth / 2.25,
                child: IconButton(
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.red,
                  ),
                  onPressed: null,
                ),
              ),
              Positioned(
                top: screenHeight / 4,
                right: screenWidth / 2.25,
                child: IconButton(
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.red,
                  ),
                  onPressed: null,
                ),
              ),
              Positioned(
                top: screenHeight / 2.7,
                right: screenWidth / 2.25,
                child: IconButton(
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.red,
                  ),
                  onPressed: null,
                ),
              ),
              Positioned(
                top: screenHeight / 2,
                left: screenWidth / 2.75,
                child: IconButton(
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.red,
                  ),
                  onPressed: null,
                ),
              ),
              Positioned(
                top: screenHeight / 1.55,
                left: screenWidth / 2.6,
                child: IconButton(
                  icon: Icon(
                    Icons.check_circle,
                    color: Colors.red,
                  ),
                  onPressed: null,
                ),
              ),
            ],
          ),
        ),
        Padding(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmergencyPage()));
            },
            child: Container(
              alignment: Alignment.center,
              height: screenHeight / 13,
              // width: 200,s
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.red),
              child: Text(
                'Emergency',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          padding: EdgeInsets.only(
              top: screenHeight / 100,
              bottom: screenHeight / 100,
              left: 30,
              right: 30),
        )
      ],
    );
  }
}

class MyShape extends StatelessWidget {
  const MyShape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SvgPicture.asset(
        'assets/standing_human_body_silhouette.svg',
        color: Color.fromRGBO(145, 206, 236, 1),
        fit: BoxFit.fitHeight,
        height: MediaQuery.of(context).size.height * 0.8,
      ),
    );
  }
}

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Emergency> liste = [
      Emergency(title: 'Bleeding', steps: ['Stop the bleeding.']),
      Emergency(title: 'Is he(she) talking ?', steps: [
        'Ask simple questions like what happened or where does it hurt',
        'Give simple tasks like shake my hand or open your eyes',
      ]),
      Emergency(title: 'Tilt the head.', steps: [
        'Loosen collar, tie, belt.',
        'Carefully tilt the head back one hand on the forehead, forefinger and middle finger of the other hand under the chin by pulling it up.'
      ]),
      Emergency(title: 'Does he(she) breath ?', steps: [
        'Perceive the exhaled air.',
        'Listen for abnormal noises (snoring, gurgling ...).',
        'Observe the lifting of the belly and chest.',
      ]),
      Emergency(title: 'Does she have a pulse ?', steps: [
        'Does she have a pulse?',
        'With the other hand, put the fingertips on the Adam\'s apple.',
        'Bring your fingers towards you while staying in contact with the skin.',
      ]),
      Emergency(title: 'Monitor', steps: [
        'Speak to the victim.',
        'Counting the respiratory movements (normality in the adult: 12 to 20 per minute).',
        'Count the carotid pulse (normality in adults 50 to 80 beats per minute)',
        'Look for wounds, burns or deformities ...',
        'Cover the victim',
        'Never give a drink to an injured person.'
      ])
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: MyAppBar(
          goBack: true,
        ),
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            Color color = index % 2 == 0 ? Colors.red : Colors.blue;
            return ListTile(
                title: Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StepsPage(
                                emergency: liste[index],
                              )));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  child: Text(liste[index].title,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: color),
                ),
              ),
            ));
          }),
    );
  }
}

class Emergency {
  String title;
  List<String> steps;
  Emergency({@required this.title, @required this.steps});
}

class StepsPage extends StatelessWidget {
  final Emergency emergency;
  const StepsPage({Key key, @required this.emergency}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: MyAppBar(
          goBack: true,
        ),
      ),
      body: PageView(
          children: List.generate(
              emergency.steps.length,
              (i) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 10,
                        child: Text(
                          'Step ${i + 1}',
                          style: TextStyle(fontSize: 20),
                        ),
                        alignment: Alignment.center,
                      ),
                      Padding(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(emergency.steps[i]),
                        ),
                        padding: EdgeInsets.all(30),
                      )
                    ],
                  ))),
    );
  }
}

class MyAppBar extends StatelessWidget {
  final bool goBack;
  const MyAppBar({Key key, @required this.goBack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return goBack
        ? Container(
            height: screenHeight / 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                SvgPicture.asset('assets/logo.svg'),
              ],
            ),
          )
        : Container(
            height: screenHeight / 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset('assets/logo.svg'),
              ],
            ),
          );
  }
}
