import 'package:hanasu/model/account.dart';

class Message {
  Account? sender;
  Account? receiver;
  String content = "";
  DateTime? timestamp;
}