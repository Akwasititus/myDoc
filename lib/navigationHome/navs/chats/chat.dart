import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cons.dart';
import '../Home station/home_model.dart';
import 'chatting.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
            children: [
        SizedBox(height: size * 0.05),
        const Text('Chat Room',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontFamily: 'Ubuntu-Regular')),
                          SizedBox(height: size * 0.05),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            height: 50,
          
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _searchController.clear();
                      },
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        /* do search */
                      },
                    ),
                    hintText: 'Dr. Francis Atamara',
                    border: InputBorder.none),
              ),
            ),
          ),
        ),
        //-------------------------------------------------------------
        // Search view ends here
        //-------------------------------------------------------------
        
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: getDrInfo.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final doctor = getDrInfo[index];
              return Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: GestureDetector(
                       onTap: () {
                    Get.to(const ChatScreen(),
                        arguments: {
                          //-------------------------------------------------
                          // these are argument from the model page that are being passed to the detailed screen
                          //---------------------------------------------------

                          'DoctorName': doctor.drName,
                          'DoctorType': doctor.drType,
                          //'DoctorDesc': doctor.drDesc,
                          'DoctorImg': doctor.imageURL,
                          //'DoctorRating': doctor.rating,
                          //'Doctorlocation': doctor.location,
                        },
                        duration: const Duration(seconds: 1),
                        transition: Transition.native);
                  },
                      child: ClipOval(
                    child: Image.asset(
                      doctor.imageURL,
                      height: 50.5,
                      fit: BoxFit.cover,
                    ),
                  )));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const Text('Nearby Doctors', style: AppBlackTextStyle.texth2),
              Expanded(child: Container()),
              Text('more',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade700,
                      fontFamily: 'Ubuntu-Regular')),
            ],
          ),
        ),
        
        Expanded(
          child: ListView.builder(
            itemCount: getDrInfo.length,
            
            itemBuilder: (context, index) {
              final doctor = getDrInfo[index];
              return GestureDetector(
                 onTap: () {
                    Get.to(const ChatScreen(),
                        arguments: {
                          //-------------------------------------------------
                          // these are argument from the model page that are being passed to the detailed screen
                          //---------------------------------------------------

                          'DoctorName': doctor.drName,
                          'DoctorType': doctor.drType,
                          //'DoctorDesc': doctor.drDesc,
                          'DoctorImg': doctor.imageURL,
                          //'DoctorRating': doctor.rating,
                          //'Doctorlocation': doctor.location,
                        },
                        duration: const Duration(seconds: 1),
                        transition: Transition.native);
                  },
                  child:  ListTile(
                leading: ClipOval(
                    child: Image.asset(
                      doctor.imageURL,
                      height: 50.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                title: Text(doctor.drName),
                subtitle: Text(doctor.drType),
                trailing: const Text('10:48 AM'),
              ));
            },
          ),
        )
            ],
          ));
  }
}
