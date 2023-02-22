import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/database.dart';

var database;
Future<void> main() async {
  database = Database();
  final allZones = await database.getAllZones();
  print("First zone: ${allZones[0]}");

  final monstersFromZone = await database.getMonstersFromZone("Zone1");
  print("First monster: ${monstersFromZone[0]}");

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Do\'Mage',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class AppState extends ChangeNotifier {
  var database;
  var databaseOpened = false;
}

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedDestinationIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;

    switch (selectedDestinationIndex) {
      case 0:
        page = ZonesPage();
        break;

      case 1:
        page = MonstersPage();
        break;

      case 2:
        page = ResourcesPage();
        break;

      default:
        throw UnimplementedError();
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: [
          SafeArea(
              child: NavigationRail(
            extended: constraints.maxWidth >= 600,
            selectedIndex: selectedDestinationIndex,
            onDestinationSelected: (value) => {
              setState(() => {selectedDestinationIndex = value})
            },
            destinations: [
              NavigationRailDestination(
                  icon: Icon(Icons.map), label: Text("Zones")),
              NavigationRailDestination(
                  icon: Icon(Icons.api), label: Text("Monsters")),
              NavigationRailDestination(
                  icon: Icon(Icons.auto_graph), label: Text("Resources"))
            ],
          )),
          Expanded(
              child: Container(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: page,
          ))
        ],
      );
    });
  }
}

class ZonesPage extends StatelessWidget {
  const ZonesPage();

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text("Enter your zone query"),
          SizedBox(height: 10),
          Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              )),
        ],
      ),
    ));
  }
}

class MonstersPage extends StatelessWidget {
  const MonstersPage();

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

class ResourcesPage extends StatelessWidget {
  const ResourcesPage();

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
/*Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Search box", style: style),
                Text("Entry 1", style: style),
                Text("Entry 2", style: style),
                Text("Entry 3", style: style)
              ],
            ),*/