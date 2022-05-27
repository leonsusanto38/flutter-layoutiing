import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Container topIcon(IconData iconPath, String iconName) {
  return Container(
    margin: EdgeInsets.only(bottom: 18),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(iconPath),
        Text(iconName)
      ],
    ),
  );
}

Widget popularCourses = Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text("Popular Courses :", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          topIcon(Icons.today, "Science"),
          topIcon(Icons.coffee, "Cooking"),
          topIcon(Icons.architecture, "Math"),
          topIcon(Icons.biotech, "Biology"),
          topIcon(Icons.star, "Design")
        ],
      ),
    )    
  ],
);

Container learnCard(IconData iconPath, String title, String description, String time) {
  return Container(
    padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
    margin: const EdgeInsets.fromLTRB(0, 0, 8, 8),
    color: Color.fromARGB(255, 200, 230, 201),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(iconPath),
        ),
        Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
        Container(
          margin: EdgeInsets.only(bottom: 8),
          child: Text(description)),
        Row(
          children: [
            Icon(Icons.alarm),
            Text(time)
          ],
        )
      ],
    ),
  );
}

Widget continueLearning = Column(
  mainAxisSize: MainAxisSize.min,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Text("Continue Learning :", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          learnCard(Icons.today, "Science", "Chapter 4", "27 Mins"),
          learnCard(Icons.star, "Design", "Chapter 5", "30 Mins"),
          learnCard(Icons.biotech, "Biology", "Chapter 1", "25 Mins"),
          learnCard(Icons.coffee, "Cooking", "Chapter 3", "18 Mins")
        ],
      ),
    )
  ],
);

Container listCard(IconData iconPath, String titleName, String time) {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 225, 190, 231),
      borderRadius: BorderRadius.circular(16.0)
    ),
    margin: EdgeInsets.only(top: 16),
    padding: EdgeInsets.all(16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(iconPath),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(time),
                )
              ],
            ),
          ],
        ),
        Icon(Icons.play_circle)
      ],
    ),
  );
}

Widget lastSeenCourses = Container(
  padding: EdgeInsets.all(8),
  margin: EdgeInsets.only(top: 18),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Last Seen Courses :", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
      listCard(Icons.design_services, "Basics of Designing", "1 hour, 25 mins"),
      listCard(Icons.picture_in_picture, "Human Respiratory", "4 hour, 10 mins"),
      listCard(Icons.file_copy, "Integration & Differentiation", "2 hour, 37 mins")
    ],
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS no 2 - C14190010',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test 1 - C14190010'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            popularCourses,
            continueLearning,
            lastSeenCourses,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Explore", icon: Icon(Icons.book)),
            BottomNavigationBarItem(label: "Chat", icon: Icon(Icons.chat)),
          ],
        ),
      ),
    );
  }
}