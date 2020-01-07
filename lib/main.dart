import 'package:flutter/material.dart';
import 'package:latihan_flutter_2/fade_animation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 5;
  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: '1',
              image: 'assets/img/wallpaper1.jpg',
              tittle: 'Monster Hunter World Iceborne',
              description:
                  'Iceborne Expansion for Monster Hunter World is a fully-fledged paid expansion coming in September 6th 2019 on consoles and January 9th 2020 on PC. The expansion is equivalent in size to previous Monster Hunter games "G Rank" or "Ultimate" entries, and promises to bring a significant amount of content'),
          makePage(
              page: '2',
              image: 'assets/img/wallpaper2.jpg',
              tittle: 'Final Fantasy XV',
              description:
                  'Final Fantasy XV is an action role-playing game developed and published by Square Enix as part of the long-running Final Fantasy series. It was released for the PlayStation 4 and Xbox One in 2016, Microsoft Windows in 2018, and Stadia as a launch title in 2019.'),
          makePage(
              page: '3',
              image: 'assets/img/wallpaper3.jpg',
              tittle: 'Vindictus',
              description:
                  'Vindictus is an action massively multiplayer online role-playing game created by devCAT, an internal studio of Korean free-to-play game publisher Nexon. Vindictus is a prequel to the MMORPG Mabinogi, and is known as Mabinogi Heroes in Asia'),
          makePage(
              page: '4',
              image: 'assets/img/wallpaper4.jpg',
              tittle: 'Horizon Zero Dawn',
              description:
                  'Horizon Zero Dawn is an action role-playing game developed by Guerrilla Games and published by Sony Interactive Entertainment. It was released for the PlayStation 4 in early 2017. The plot follows Aloy, a hunter in a world overrun by machines, who sets out to uncover her past.'),
          makePage(
              page: '5',
              image: 'assets/img/wallpaper5.jpg',
              tittle: 'Monster Hunter World',
              description:
                  'Monster Hunter: World is an action role-playing game developed and published by Capcom. A part of the Monster Hunter series, it was released worldwide for PlayStation 4 and Xbox One in January 2018, with a Microsoft Windows version following in August 2018.'),
        ],
      ),
    );
  }

  Widget makePage({image, tittle, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2)
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  FadeAnimation(2,
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                      2,
                      Text(
                        tittle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                        1.5,
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 3),
                              child: Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ),
                            Text(
                              '4.0',
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              '(2300)',
                              style: TextStyle(
                                  color: Colors.white38, fontSize: 12),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                        2,
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            description,
                            style: TextStyle(
                                color: Colors.white.withOpacity(.7),
                                height: 1.9,
                                fontSize: 15),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                        2.5,
                        Text(
                          'Read More',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
