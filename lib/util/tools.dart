import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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


Widget buildScreen(BuildContext context, String emptyStateMessage) {
  int noOfMessages = 0;

  if (noOfMessages == 0) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 250,),
        Text(
          emptyStateMessage,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Icon(Icons.chat_bubble_rounded, size: 200)
      ],
    );
  } else {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[],
    );
  }
}
