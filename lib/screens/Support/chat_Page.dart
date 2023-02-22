import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:netro_mart_official/appColors/app_colors.dart';
import 'package:netro_mart_official/models/chat_Model.dart';
import 'package:netro_mart_official/widgets/bottom.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _controller = TextEditingController();
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
        text: 'Tell me about this product.'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: true,
        text: 'Yes Sure!'),
    Message(
        date: DateTime.now().subtract(Duration(seconds: 1)),
        isSentByMe: true,
        text: 'Good Noon Sir. Fine. How do you do?'),
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
        elevation: 0.0,
        backgroundColor: AppColors.colorTextWhiteHigh,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => CustomBottomNav())));
                },
                child: Icon(Icons.arrow_back_ios,
                    size: 18.sp, color: AppColors.descColor)),
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
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: ((OverscrollIndicatorNotification? notification) {
          notification!.disallowIndicator();
          return true;
        }),
        child: Column(
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
                      // height: 40,
                      // child: Center(
                      //   child: Card(
                      //     color: Theme.of(context).primaryColor,
                      //     child: Text(
                      //       DateFormat.yMMMd().format(message.date),
                      //       style: TextStyle(color: Colors.white),
                      //     ),
                      //   ),
                      // ),
                      ),
                  itemBuilder: (context, Message message) => Align(
                      alignment: message.isSentByMe
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: message.isSentByMe
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: message.isSentByMe
                                    ? BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8))
                                    : BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8)),
                                color: message.isSentByMe
                                    ? AppColors.colorPrimaryMain
                                    : AppColors.colorTextWhiteLow,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 25,
                                      offset: Offset(0, 5),
                                      color: Color(0xff000000).withOpacity(.05))
                                ]),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                message.text,
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: message.isSentByMe
                                        ? AppColors.white
                                        : AppColors.colorTextBlackMid,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Text(
                            DateFormat.yMMMd().format(message.date),
                            style: TextStyle(color: AppColors.colorTextLow),
                          ),
                        ],
                      ))),
              // optional
            ),
            Container(
              height: 84.h,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                BoxShadow(
                    blurRadius: 25,
                    offset: Offset(0, 5),
                    color: Color(0xff000000).withOpacity(.05))
              ]),
              child: Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.colorTextWhiteMid,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 16.w,
                    ),
                    SvgPicture.asset('assets/images/attachment.svg'),
                    SizedBox(
                      width: 12.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: VerticalDivider(
                        color: AppColors.colorTextDisable,
                        thickness: 2,
                        width: 2,
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            child: TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12),
                                hintText: 'Type your message here...',
                                hintStyle: TextStyle(
                                    fontSize: 12.sp,
                                    color: AppColors.colorTextDisable,
                                    fontWeight: FontWeight.w400),
                                border: InputBorder.none,
                              ),
                              onSubmitted: (text) {
                                final message = Message(
                                    date: DateTime.now(),
                                    isSentByMe: true,
                                    text: text);
                                setState(() {
                                  messages.add(message);
                                });
                              },
                            ),
                          ),
                          Positioned(
                              left: 220.w,
                              top: 4.h,
                              bottom: 4.h,
                              right: 10.w,
                              child: InkWell(
                                onTap: () {
                                  final message = Message(
                                      date: DateTime.now(),
                                      isSentByMe: true,
                                      text: _controller.text);
                                  setState(() {
                                    messages.add(message);
                                    _controller.clear();
                                  });
                                },
                                child: Container(
                                    height: 50.h,
                                    width: 50.w,
                                    child: SvgPicture.asset(
                                        'assets/images/send.svg')),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
/*TextField(
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
            ), */
