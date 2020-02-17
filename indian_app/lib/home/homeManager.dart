import 'package:flutter/material.dart';
import 'events/eventManager.dart';
import '../styles/textStyles.dart';
import 'homeItem.dart';

class Home extends StatefulWidget {
  // final Manager manager = Manager();

  @override
  State<StatefulWidget> createState() {
    //return TabBarPage(manager);
    return TabBarPage();
  }
}

class TabBarPage extends State<Home> {
  List<Widget> tabs;

  List<Tab> _bottomBarItems = [
    Tab(icon: Icon(Icons.home, size: 40)),
    Tab(icon: Icon(Icons.accessibility_new, size: 40)),
    Tab(icon: Icon(Icons.calendar_today, size: 40)),
    Tab(icon: Icon(Icons.date_range, size: 40)),
    Tab(icon: Icon(Icons.person, size: 40)),
  ];

//  bool loggedIn = false;
//  bool checkedIfLoggedIn = false;
//  bool firstTime = false; //TODO meter a true

//  Manager manager;

/*  TabBarPage(this.manager): tabs = [
    Feed(manager),
    IPSS(manager),
    Countdown(manager),
    MapWidget(manager),
    Profile(manager),
  ];
*/

  TabBarPage()
      : tabs = [
          Scaffold(body: Container(color: Colors.black)),
          Scaffold(body: Container(color: Colors.black)),
          Events(),
          Scaffold(body: Container(color: Colors.black)),
          Scaffold(body: Container(color: Colors.black)),
        ];

  @override
  void initState() {
    super.initState();
    /*   FileHandler().exists('user.txt').then((bool exists) {
      setState(() {
        loggedIn = exists;
        checkedIfLoggedIn = true;
      });
    });
  */
  }

  void homeLogIn() {
    // ask server create oversite, then set state, save info
    // TODO
    setState(() {});
  }

  Widget buildProfileImage(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.33,
        height: MediaQuery.of(context).size.width * 0.33,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
        ),
      ),
    );
  }

  Widget drawer() {
    return Drawer(
      child: ListView(children: [
        Container(
          height: 25,
        ),
        buildProfileImage(context),
        ListTile(
          title: drawerStyle("Perfil"),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => Events())),
        ),
        ListTile(
          title: drawerStyle("Calendário"),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => Events())),
        ),
        ListTile(
          title: drawerStyle("Eventos"),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => Events())),
        ),
        ListTile(
          title: drawerStyle("Inscrições"),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) => Events())),
        ),
        ListTile(
          title: drawerStyle("Logout"),
          onTap: () => print("logging out"),
        )
      ]),
    );
  }

//  clearPopUp() {
//    setState(() => (firstTime = false));
  // }

  @override
  Widget build(BuildContext context) {
/*    if (checkedIfLoggedIn && !loggedIn && false) {
      return LogIn(homeLogIn);
    }
    print("has saved data");
    if (!checkedIfLoggedIn) {
      // loading
      return Popup(clearPopUp);
    }
    print("Home");
    if (firstTime) {
      return Popup(clearPopUp);
    }
*/
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      drawer: drawer(),
      body: ListView.builder(
        itemCount: feeds.length,
        itemBuilder: (context, i) => Column(children: [
          Divider(
            height: 10.0,
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => FeedItem(i),
              ),
            ),
            child: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage("assets/feed/feed.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
              ),
            ],),
          ),
        ]),
      ),
    );
  }
}

class FeedItem extends StatelessWidget {
  final int feedItemIndex;

  FeedItem(this.feedItemIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: true,
            centerTitle: true,
            title: drawerStyle(feeds[feedItemIndex].title)),
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  //    child: Image.asset(ipss[ipssItemIndex].image),
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: feedStyle(feeds[feedItemIndex].text),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ]),
        ));
  }
}
