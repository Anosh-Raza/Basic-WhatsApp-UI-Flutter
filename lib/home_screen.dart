import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chat'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_sharp),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: 1,
                  child: Text('Home'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Profile'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('Log Out'),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('Where is my dog'),
                  trailing: Icon(Icons.face_rounded),
                );
              },
            ),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text('Where is my dog'),
                  trailing: Icon(Icons.face_rounded),
                );
              },
            ),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/712513/pexels-photo-712513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('John Wick'),
                  subtitle: Text(index / 2 == 0
                      ? 'your missed call'
                      : 'call time is 3:15 PM'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
