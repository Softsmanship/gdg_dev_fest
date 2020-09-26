import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

class Home extends StatelessWidget {
  // ***** Following methods, create separate blocks of the UI *****
  //------------------------> App Bar <-----------------------------
  AppBar homeAppBar() {
    AppBar bar = AppBar(
      backgroundColor: Colors.indigo[400],
      title: Text(
        "GDG DevFest",
        style: TextStyle(
          fontSize: 27.0,
        ),
      ),
      centerTitle: false,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.lightbulb_outline),
            onPressed: () {
              print("lightbulb");
            }),
        IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              print("share");
            }),
      ],
    );
    return bar;
  }

  //------------------------------------------------------------------
  final List<Widget> socialsBar = [
    SocialMediaButton.twitter(
      size: 30,
      url: null,
      color: Colors.white,
      onTap: () {
        print("seems working");
      },
    ),
    SocialMediaButton.facebook(
      size: 30,
      url: null,
      color: Colors.white,
      onTap: () {
        print("seems working");
      },
    ),
    SocialMediaButton.linkedin(
      size: 30,
      url: null,
      color: Colors.white,
      onTap: () {
        print("seems working");
      },
    ),
    SocialMediaButton.youtube(
      size: 30,
      url: null,
      color: Colors.white,
      onTap: () {
        print("seems working");
      },
    ),
    SocialMediaButton.github(
      size: 30,
      url: null,
      color: Colors.white,
      onTap: () {
        print("seems working");
      },
    ),
  ];
//=====================================================================
// ************************** B_U_I_L_D ********************************
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: homeAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image(
            image: AssetImage('assets/banner.png'),
            fit: BoxFit.contain,
          ),
          Expanded(
            child: createMainPanel(),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.indigo[600],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: socialsBar,
            ),
          )
        ],
      ),
    ));
  }

  //to make easy to read
  Widget createMainPanel() {
    Widget agenda = createButton("Agenda", "assets/Agenda.png");
    Widget speakers = createButton("Speakers", "assets/Speakers.png");
    Widget sponsors = createButton("Sponsors", "assets/Sponsors.png");
    Widget team = createButton("Team", "assets/Team.png");
    Widget locate = createButton("Locate", "assets/Locate.png");
    Widget faq = createButton("FAQ", "assets/FAQ.png");

    Table panel = Table(
      //defaultColumnWidth: ,
      children: [
        TableRow(children: [agenda, speakers]),
        TableRow(children: [sponsors, team]),
        TableRow(children: [locate, faq]),
      ],
    );
    return panel;
  }

  Widget createButton(String title, String imgUrl) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
        height: 90,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                color: Colors.indigo.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 3)),
          ],
        ),
        child: Column(children: <Widget>[
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('$imgUrl'), fit: BoxFit.contain)),
          ),
          Text("$title"),
        ]),
      ),
      onTap: () {
        // redirection
        print("Seems Working");
      },
    );
  }
} // End of class Home
