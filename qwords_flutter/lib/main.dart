import 'package:flutter/material.dart';
import 'package:rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATMS - Advanced Traveler Management Systems',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return MainMenuGrid(gridCount: 2);
          } else if (constraints.maxWidth <= 1200) {
            return MainMenuGrid(gridCount: 3);
          } else
            return MainMenuGrid(gridCount: 4);
        },
      ),
      );
    }
}

class MainMenuGrid extends StatelessWidget {
  final int gridCount;

  MainMenuGrid({required this.gridCount});
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 32,
          mainAxisSpacing: 32,
          children: <Widget>[
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          child: Image.asset(
                            'images/Navigation.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          child: Image.asset(
                            'images/SearchBus.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          child: Image.asset(
                            'images/PublicFacility.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: new InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Supermarket();
                  }));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(24),
                            child: Image.asset('images/Supermarket.png',
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          child: Image.asset(
                            'images/Vacation.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(24),
                          child: Image.asset(
                            'images/ReadMe.png',
                            //height: MediaQuery.of(context).size.height,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
