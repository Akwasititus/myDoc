import 'package:flutter/material.dart';


import 'support_model.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size * 0.1),
            ClipOval(
                    child: Image.asset(
                      'assets/doctors/d1.png',
                      height: 50.5,
                      fit: BoxFit.cover,
                    ),
                  ),
            SizedBox(height: size * 0.05),
            const Text(
              
              'Hello, How can we \n Help you?',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Poppians',
                color: Color(0xFF000000),
                fontSize: 20,
              ),
            ),
            SizedBox(height: size * 0.1),
            Expanded(
              child: ListView.builder(
                itemCount: getSupportModel.length,
                itemBuilder: (context, index) {
                  final getSupport = getSupportModel[index];
                  return GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   // Toggle the 'isRead' property when the notification is tapped.
                      //   // getNotify.isRead = !getNotify.isRead;
                      //   if (!getNotify.isRead) {
                      //     getNotify.isRead = true;
                      //   }
                      // });
                      // Get.to(const NotificationDetail(),
                      // arguments: {
                      //   'iconURL': getNotify.iconURL,
                      //   'msg': getNotify.msg,
                      //   'time': getNotify.time,
                      //   'msgDisc': getNotify.msgDisc,
                      // },
                      // duration: const Duration(seconds: 1),
                      //       transition: Transition.native);
                    },
                    child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 10,
                          margin: const EdgeInsets.all(5),
                          child: ListTile(
                            trailing: const Icon(Icons.arrow_forward),
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundColor: const Color(0xFFECE7FF),
                              child: ImageIcon(
                                AssetImage(getSupport.iconURL),
                                size: 24,
                              ),
                            ),
                            title: Text(getSupport.msg),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
