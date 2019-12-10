import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme/ThemeOptions/change_theme_bloc.dart';
import 'package:multi_theme/ThemeOptions/change_theme_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  int option;
  final List<Color> colors = [
    Colors.red,
    Colors.purple[700],
    Colors.orange,
    Colors.pink[400],
    Colors.grey
  ];
  final List<Color> borders = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  final List<String> themes = ['', '', '', '', ''];
  final List<int> themeIndex = [0, 1, 2, 3, 4];

  int _tappedThemeIndex = 0;
  final Random random = Random();


  @override
  void initState() {
    updateSelectedThemeTick();
    super.initState();
  }

  void updateSelectedThemeTick() async {
    _tappedThemeIndex = await getOption();
  }

  Future<int> getOption() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int option = preferences.get('theme_option') ?? 0;
    return option;
  }

  @override
  Widget build(BuildContext context) {
    Widget _changeThemeWidget(ChangeThemeState state) => Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: Card(
              clipBehavior: Clip.hardEdge,
              color: Colors.white12,
              elevation: 40,
              child: ListTile(
                title: Text(
                  'Choose Your Theme',
                  style: state.themeData.textTheme.headline,
                ),
                contentPadding: EdgeInsets.all(10),
                onTap: () async {
                  SharedPreferences preferences =
                      await SharedPreferences.getInstance();
                  option = preferences.get('theme_option') ?? 0;
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return BlocBuilder(
                          bloc: changeThemeBloc,
                          builder: (BuildContext context,
                              ChangeThemeState state) {
                            return AlertDialog(
                              elevation: 20,
                              backgroundColor:
                                  state.themeData.backgroundColor,
                              title: Text(
                                'Change Theme',
                                style: state.themeData.textTheme.body1,
                              ),
                              content: SizedBox(
                                width: 100,
                                child: Wrap(
                                  crossAxisAlignment:
                                      WrapCrossAlignment.center,
                                  alignment: WrapAlignment.center,
                                  children: getThemesWidget(state),
                                ),
                              ),
                            );
                          });
                    },
                  );
                },
              ),
            ),
          ),
        );
    return BlocBuilder(
        bloc: changeThemeBloc,
        builder: (BuildContext context, ChangeThemeState state) {
          return Theme(
              data: state.themeData,
              child: Scaffold(
                  backgroundColor: state.themeData.backgroundColor,
                  body: Center(child: _changeThemeWidget(state))));
        });
  }

  List<Widget> getThemesWidget(ChangeThemeState state) {
    List<Widget> themseWisget = [];
    for (int index = 0; index < themeIndex.length; index++) {
      themseWisget.add(Stack(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: borders[index]),
                      color: colors[index]),
                ),
              ),
              Text(themes[index], style: state.themeData.textTheme.body2)
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    _tappedThemeIndex = index;

                    setState(() {
                      switch (index) {
                        case 0:
                          changeThemeBloc.onDarkThemeChange();
                          break;
                        case 1:
                          changeThemeBloc.onLightThemeChange();
                          break;
                        case 2:
                          changeThemeBloc.onAmoledThemeChange();
                          break;

                        case 3:
                          changeThemeBloc.onLightGreenThemeChange();
                          break;
                        case 4:
                          changeThemeBloc.onBlackThemeChange();
                          break;
                      }
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    child: _tappedThemeIndex == themeIndex[index]
                        ? Icon(Icons.done, color: Colors.white)
                        : Container(),
                  ),
                ),
              ),
              Text(themes[index], style: state.themeData.textTheme.headline)
            ],
          ),
        ],
      ));
    }
    return themseWisget;
  }
}
