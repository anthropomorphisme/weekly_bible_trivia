import 'package:flutter/material.dart';
import 'package:weekly_bible_trivia/containers/active_tab.dart';
import 'package:weekly_bible_trivia/containers/appbars/active_appbar.dart';
import 'package:weekly_bible_trivia/containers/appbars/active_menubar.dart';
import 'package:weekly_bible_trivia/containers/home_container.dart';
import 'package:weekly_bible_trivia/containers/past_trivia_container.dart';
import 'package:weekly_bible_trivia/containers/reader_container.dart';
import 'package:weekly_bible_trivia/containers/tab_selector.dart';
import 'package:weekly_bible_trivia/global/enums.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  HomeScreenState createState() {

    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin  {
  late final AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ActiveTab(
      builder: (BuildContext context, NavigationTab activeTab) => Scaffold(
        appBar: ActiveAppBar(),
        body: Scaffold(
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: ActiveMenuBar(_controller),
              body: _getContainer(activeTab),
              bottomNavigationBar: //TabSelector(),
                  Theme(
                data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
                child: const TabSelector(),
              ),
            ),
      ));

  dynamic _getContainer(NavigationTab activeTab) {
    if (activeTab == NavigationTab.home) {
      return HomeContainer();
    } else if (activeTab == NavigationTab.reader) {
      return ReaderContainer();
    } else if (activeTab == NavigationTab.pastTrivia) {
      return PastTriviaContainer();
    }
  }
}
