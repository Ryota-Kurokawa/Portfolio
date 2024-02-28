import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ManageDrawer extends StatelessWidget {
  const ManageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 37, 67),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/ryota.jpg'),
                ),
                Text(
                  'Ryota Kurokawa',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Top'),
            leading: const Icon(Icons.home),
            onTap: () {
              context.go('/top');
            },
          ),
          ExpansionTile(
            title: const Text("What I am?"),
            leading: const Icon(Icons.person),
            textColor: Colors.white,
            iconColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 0, 37, 67),
            children: [
              ListTile(
                title: const Text('Skill'),
                textColor: Colors.white,
                onTap: () {
                  context.go('/skill');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
