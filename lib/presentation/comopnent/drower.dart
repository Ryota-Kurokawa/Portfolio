import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ManageDrawer extends StatelessWidget {
  const ManageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
            ),
            child: const Column(
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
            title: const Text("What's I am?"),
            leading: const Icon(Icons.person),
            textColor: Colors.white,
            iconColor: Colors.white,
            backgroundColor: Theme.of(context).colorScheme.tertiary,
            children: [
              ListTile(
                title: const Text('Career'),
                textColor: Colors.white,
                onTap: () {
                  context.go('/career');
                },
              ),
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
