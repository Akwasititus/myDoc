import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cons.dart';
import '../chats/chatting.dart';
import 'bookAppoitment.dart';

class Detail extends StatelessWidget {
  Detail({super.key});

  String? youTubeID;

  @override
  Widget build(BuildContext context) {
    final doctor = Get.arguments;

    final doctorName = doctor['DoctorName'];
    final doctorType = doctor['DoctorType'];
    final doctorDesc = doctor['DoctorDesc'];
    final doctorImg = doctor['DoctorImg'];
    final doctorRating = doctor['DoctorRating'];
    final doctorlocation = doctor['Doctorlocation'];

    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFcbe6f6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                child: Image.asset(
                  doctorImg,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: size * 0.02),
              Text(doctorName),
              SizedBox(height: size * 0.02),
              Text(doctorType),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.yellow, size: 15),
                  SizedBox(width: size * 0.01),
                  Text(doctorRating, style: AppBlackTextStyle.texth2),
                  SizedBox(width: size * 0.01),
                  Text(doctorlocation, style: AppBlackTextStyle.texth2),
                ],
              ),
              SizedBox(height: size * 0.02),
              Text(
                doctorDesc,textAlign: TextAlign.justify,),
              SizedBox(height: size * 0.02),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.to( AppointmentForm(),
                        arguments: {
                          //-------------------------------------------------
                          // these are argument from the model page that are being passed to the detailed screen
                          //---------------------------------------------------

                          // 'DoctorName': doctorName,
                          // 'DoctorType': doctorType,
                          
                          'DoctorImg': doctorImg,
                          
                        },
                        duration: const Duration(seconds: 1),
                        transition: Transition.native);
                  },
                  child: Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.blue,
                      child: Center(child: Text('Book Appoitment With $doctorName'))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
