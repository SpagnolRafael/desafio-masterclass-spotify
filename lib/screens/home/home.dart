import 'package:flutter/material.dart';
import 'package:spotify_masterclass/mocks/mock_database.dart';
import 'package:spotify_masterclass/screens/home/components/folder_widget_grid.dart';
import 'package:spotify_masterclass/screens/home/home_controller/home_controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeController _controller = HomeController(repository: MockDatabase());
  String _getWelcomeMessage() {
    if (DateTime.now().isAfter(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, 18))) {
      return _controller.welcomeMessages[2];
    } else if (DateTime.now().isAfter(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, 12))) {
      return _controller.welcomeMessages[1];
    } else if (DateTime.now().isAfter(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, 06))) {
      return _controller.welcomeMessages.first;
    }
    return "Welcome";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 1.0),
              colors: [
            Colors.grey.shade800,
            Colors.black12,
          ])),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                _getWelcomeMessage(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: false,
              actions: [
                InkWell(
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.notifications_outlined),
                  ),
                  onTap: () {},
                ),
                //TODO: CHANGE TO THE RIGHT ICON ON TIMER
                InkWell(
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.timer),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.settings_outlined),
                  ),
                  onTap: () {},
                ),
              ],
              floating: true,
              expandedHeight: 50,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 10.0, left: 10.0),
                    child: FolderGridWidget(
                      folders: _controller.getRockFolders(),
                      title: 'Rocks',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 20.0, left: 10.0),
                    child: FolderGridWidget(
                      folders: _controller.getCountryFolders(),
                      title: 'Sertanejo',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 10.0, left: 10.0),
                    child: FolderGridWidget(
                      folders: _controller.getRockFolders(),
                      title: 'Rocks',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 20.0, left: 10.0),
                    child: FolderGridWidget(
                      folders: _controller.getCountryFolders(),
                      title: 'Sertanejo',
                    ),
                  ),
                  const SizedBox(height: 70)
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          iconSize: 33,
          backgroundColor: Colors.black.withOpacity(.9),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_music_outlined),
              label: 'Your Library',
            ),
          ],
        ),
      ),
    );
  }
}
