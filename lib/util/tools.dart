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
        icon: const Icon(Icons.search),
        padding: EdgeInsets.symmetric(horizontal: 10),
        onPressed: () {
          // TODO: Implement search functionality.
        },
      ),IconButton(
        padding: EdgeInsets.only(right: 20),
        icon: const Icon(Icons.settings),
        onPressed: () {
          // TODO: Implement settings functionality.
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
