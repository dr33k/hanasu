import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    title: Text(title,
        style: Theme.of(context).textTheme.headlineSmall
    ),
    backgroundColor: Theme.of(context).colorScheme.surface,
    toolbarHeight: 85,
    elevation: 0,
    actions: [
      IconButton(
        padding: EdgeInsets.symmetric(horizontal: 20),
        icon: const Icon(Icons.search),
        onPressed: () {
          // TODO: Implement search functionality.
        },
      ),
    ],
  );
}

BottomNavigationBar buildBottomNavigationBar(BuildContext context){

  return BottomNavigationBar(items: [
    BottomNavigationBarItem(icon: Icon(Icons.chat_rounded), label: "Dialogues" ),
    BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Calls"),
  ],
  unselectedItemColor: Theme.of(context).colorScheme.secondary,
  );
}
