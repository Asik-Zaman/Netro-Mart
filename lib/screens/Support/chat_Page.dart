import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/models/chat_Model.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Message> messages = [
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: false,
        text: 'Hello, How are you?'),
    Message(
        date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
        isSentByMe: true,
        text: 'Good Noon Sir. Fine. How do you do?'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 10)),
        isSentByMe: false,
        text: 'How can I help you Sir?'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: true,
        text: 'Do you have Samsung A31 Phone?'),
    Message(
        date: DateTime.now().subtract(Duration(days: 7, minutes: 3)),
        isSentByMe: false,
        text: 'Yes. We have.'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: true,
        text: 'Tell me about this product.'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: false,
        text: 'Yes Sure!'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: true,
        text: 'Yes Sure!'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: false,
        text: 'Yes Sure!'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: true,
        text: 'Yes Sure!'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: true,
        text: 'Yes Sure!'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: false,
        text: 'Yes Sure!'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: true,
        text: 'Yes Sure!'),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorTextWhiteHigh,
      appBar: AppBar(
        shadowColor: Color(0xff000000).withOpacity(.2),
        elevation: 10,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            BackButton(
              color: AppColors.colorTextLow,
              onPressed: () => Navigator.pop(context),
            ),
            SizedBox(
              width: 8.w,
            ),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/circular.png"),
            ),
            SizedBox(
              width: 12.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kristin Watson",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.colorSecondaryMain,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Online",
                  style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.colorTextBlackMid,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.local_phone,
              color: AppColors.colorTextLow,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
                padding: EdgeInsets.all(8),
                reverse: true,
                order: GroupedListOrder.DESC,
                useStickyGroupSeparators: true,
                floatingHeader: true,
                elements: messages,
                groupBy: (message) => DateTime(
                    message.date.year, message.date.month, message.date.day),
                groupHeaderBuilder: (Message message) => SizedBox(
                      height: 40,
                      child: Center(
                        child: Card(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            DateFormat.yMMMd().format(message.date),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                itemBuilder: (context, Message message) => Align(
                      alignment: message.isSentByMe
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Card(
                        elevation: 8,
                        child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(message.text)),
                      ),
                    )),
            // optional
          ),
          Container(
            color: Colors.grey.shade300,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: 'Type your message here...',
              ),
              onSubmitted: (text) {
                final message =
                    Message(date: DateTime.now(), isSentByMe: true, text: text);
                setState(() {
                  messages.add(message);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
