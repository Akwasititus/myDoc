import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cons.dart';
import 'home_detail.dart';
import 'home_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text('Good Morning, \n Asantewaa',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                          fontFamily: 'Ubuntu-Regular')),
                  Expanded(child: Container()),
                  ClipOval(
                    child: Image.network(
                      'assets/doctors/d6.png',
                      height: 30.5,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: size * 0.02),
            Container(
              margin: const EdgeInsets.all(10.0),
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
            SizedBox(height: size * 0.03),
            //-------------------------------------------------------------
            // Search view ends here
            //-------------------------------------------------------------

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Text('Top Doctors', style: AppBlackTextStyle.texth2),
                  Expanded(child: Container()),
                  Text('more',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                          fontFamily: 'Ubuntu-Regular')),
                ],
              ),
            ),

            SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: getDrInfo.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final doctor = getDrInfo[index];
                  return Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(Detail(),
                              arguments: {
                                //-------------------------------------------------
                                // these are argument from the model page that are being passed to the detailed screen
                                //---------------------------------------------------

                                'DoctorName': doctor.drName,
                                'DoctorType': doctor.drType,
                                'DoctorDesc': doctor.drDesc,
                                'DoctorImg': doctor.imageURL,
                                'DoctorRating': doctor.rating,
                                'Doctorlocation': doctor.location,
                              },
                              duration: const Duration(seconds: 1),
                              transition: Transition.native);
                        },
                        child: Container(
                          //margin: const EdgeInsets.all(10.0),
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            color: const Color(0xFFcbe6f6),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: GridTile(
                            footer: GridTileBar(
                              backgroundColor: Colors.black54,
                              title: Text(doctor.drName,
                                  style: AppWhiteTextStyle.texth1),
                              subtitle: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(doctor.drType,
                                      style: AppWhiteTextStyle.texth2),
                                  Row(
                                    children: [
                                      const Icon(Icons.star,
                                          color: Colors.yellow, size: 15),
                                      SizedBox(width: size * 0.01),
                                      Text(doctor.rating,
                                          style: AppWhiteTextStyle.texth2),
                                      SizedBox(width: size * 0.01),
                                      Text(doctor.location,
                                          style: AppWhiteTextStyle.texth2),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20.2),
                                  topRight:
                                      Radius.circular(20.0)), // Image border
                              child: Image.asset(
                                doctor.imageURL,
                                height: 20.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ));
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
            SizedBox(height: size * 0.05),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: getDrInfo2.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final doctor = getDrInfo2[index];
                  return Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(Detail(),
                              arguments: {
                                //-------------------------------------------------
                                // these are argument from the model page that are being passed to the detailed screen
                                //---------------------------------------------------

                                'DoctorName': doctor.drName,
                                'DoctorType': doctor.drType,
                                'DoctorDesc': doctor.drDesc,
                                'DoctorImg': doctor.imageURL,
                                'DoctorRating': doctor.rating,
                                'Doctorlocation': doctor.location,
                              },
                              duration: const Duration(seconds: 1),
                              transition: Transition.native);
                        },
                        child: Container(
                          //margin: const EdgeInsets.all(10.0),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: const Color(0xFFcbe6f6),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: GridTile(
                            footer: GridTileBar(
                              backgroundColor: Colors.black54,
                              title: Text(doctor.drName,
                                  style: AppWhiteTextStyle.texth1),
                              subtitle: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(doctor.drType,
                                      style: AppWhiteTextStyle.texth2),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 15),
                                      SizedBox(width: size * 0.01),
                                      Text(doctor.rating,
                                          style: AppWhiteTextStyle.texth2),
                                      SizedBox(width: size * 0.01),
                                      Text(doctor.location,
                                          style: AppWhiteTextStyle.texth2),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20.2),
                                  topRight:
                                      Radius.circular(20.0)), // Image border
                              child: Image.asset(
                                doctor.imageURL,
                                height: 20.5,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ));
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
