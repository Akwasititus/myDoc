import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cons.dart';



class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [];

  void _addMessage(String text) {
    setState(() {
      _messages.add(ChatMessage(
        text: text,
        isSender: false,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    
    final doctor = Get.arguments;

    final doctorName = doctor['DoctorName'];
    final doctorType = doctor['DoctorType'];
    
    final doctorImg = doctor['DoctorImg'];
    

    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //     //backgroundColor: backgroundColor,
          //     title: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //        Text(doctorName, style: AppBlackTextStyle.texth2),
          //        Text(doctorType, style: AppBlackTextStyle.texth2),
          //       ],
          //     ),
          //     actions: [
          //       Padding(
          //           padding: const EdgeInsets.only(right: 16.0),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.end,
          //             children: [
          //               ClipRRect(
          //                 borderRadius: BorderRadius.circular(5),
          //                 child: Image.network(
          //                   doctorImg, // Replace with your image path
          //                   width: 30,
          //                   height: 30,
          //                 ),
          //               ),
          //               const Text(
          //                 'Online',
          //                 style: TextStyle(fontSize: 12, color: Colors.white70),
          //               ),
          //             ],
          //           ))
          //     ]),
          body: Column(
            children: [
              SizedBox(height: size * 0.02),
              ListTile(
                leading: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          doctorImg, // Replace with your image path
                          width: 30,
                          height: 30,
                        ),
                      ),
                title: Text(doctorName, style: AppBlackTextStyle.texth2),
                trailing: const Text('ONLINE',style: AppBlackTextStyle.texth2),
                subtitle: Text(doctorType, style: AppBlackTextStyle.texth2)
              ),
              const Divider(),
              SizedBox(height: size * 0.01),
              Expanded(
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _messages[index];
                  },
                ),
              ),
              const Divider(height: 1.0),
              _InputField(addMessage: _addMessage),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isSender;

  const ChatMessage({
    super.key,
    required this.text,
    required this.isSender,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Align(
          alignment: isSender ? Alignment.centerLeft : Alignment.centerRight,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: const Radius.circular(15),
                    topLeft: const Radius.circular(15),
                    bottomLeft: isSender
                        ? const Radius.circular(0)
                        : const Radius.circular(15),
                    bottomRight: isSender
                        ? const Radius.circular(15)
                        : const Radius.circular(0),
                  ),
                  color: isSender ? Colors.grey : Colors.blue),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'Ubuntu-Regular',
                      fontWeight: FontWeight.w300,
                      color: Colors.white)))),
    );
  }
}

class _InputField extends StatefulWidget {
  final Function(String) addMessage;

  const _InputField({required this.addMessage});

  @override
  __InputFieldState createState() => __InputFieldState();
}

class __InputFieldState extends State<_InputField> {
  final TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text) {
    if (text.isNotEmpty) {
      widget.addMessage(text);
      _textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration:
                  const InputDecoration.collapsed(hintText: 'Send a message'),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () => _handleSubmitted(_textController.text),
          ),
        ],
      ),
    );
  }
}
