class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  Message({required this.date, required this.isSentByMe, required this.text});
}
