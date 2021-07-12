import 'dart:ui';
import 'package:admin_panel_responsive_flutter/pages/charts.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Person {
  String name;
  Color color;
  Person({required this.name, required this.color});
}

class PanelCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Person> _persons = [
      Person(name: "Theia Bowen", color: Color(0xfff8b250)),
      Person(name: "Fariha Odling", color: Color(0xffff5182)),
      Person(name: "Viola Willis", color: Color(0xff0293ee)),
      Person(name: "Emmett Forrest", color: Color(0xfff8b250)),
      Person(name: "Nick Jarvis", color: Color(0xff13d38e)),
      Person(name: "ThAmit Clayeia", color: Color(0xfff8b250)),
      Person(name: "ThAmalie Howardeia", color: Color(0xffff5182)),
      Person(name: "Campbell Britton", color: Color(0xff0293ee)),
      Person(name: "Haley Mellor", color: Color(0xffff5182)),
      Person(name: "Harlen Higgins", color: Color(0xff13d38e)),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: Constants.kPadding / 2,
                right: Constants.kPadding / 2,
                left: Constants.kPadding / 2),
            child: Card(
              color: Constants.purpleLight,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                width: double.infinity,
                child: ListTile(
                  //leading: Icon(Icons.sell),
                  title: Text(
                    "Products Available",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    "82% of Products Avail.",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Chip(
                    label: Text(
                      "20,500",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          BarChartSample2(),
          Padding(
            padding: const EdgeInsets.only(
                top: Constants.kPadding,
                left: Constants.kPadding / 2,
                right: Constants.kPadding / 2,
                bottom: Constants.kPadding),
            child: Card(
              color: Constants.purpleLight,
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: List.generate(
                  _persons.length,
                  (index) => ListTile(
                    leading: CircleAvatar(
                      radius: 15,
                      child: Text(
                        _persons[index].name.substring(0, 1),
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: _persons[index].color,
                    ),
                    title: Text(
                      _persons[index].name,
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
