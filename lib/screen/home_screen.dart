import 'package:hanasu/util/tools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int noOfMessages = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(context, widget.title),

      body: Center(
        child: _buildDialogueScreen(context, "No new dialogues")
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        foregroundColor: Theme.of(context).colorScheme.onSecondary,
        onPressed: (){},
        tooltip: 'New Dialogue',
        child: const Icon(Icons.add),
      ),

      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }


  Widget _buildDialogueScreen(BuildContext context, String emptyStateMessage) {
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
          Icon(
            Icons.chat_rounded,
            size: 150, color: Theme.of(context).colorScheme.secondary,
            shadows: [Shadow(color:Theme.of(context).colorScheme.primary, offset: Offset(10, 20))],
            blendMode: BlendMode.luminosity,
          )
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[],
      );
    }
  }

}