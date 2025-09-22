class Account{
  String? id;
  String? username;
  String? image;
  String? phoneNumber;


  Account(this.id, this.username, this.phoneNumber);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Account && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}