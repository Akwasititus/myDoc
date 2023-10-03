import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cons.dart';



// class AppointmentForm extends StatefulWidget {
//   const AppointmentForm({super.key});

//   @override
//   _AppointmentFormState createState() => _AppointmentFormState();
// }

// class _AppointmentFormState extends State<AppointmentForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _selectedDateController = TextEditingController();
//   final TextEditingController _selectedTimeController = TextEditingController();

//   DateTime _selectedDate = DateTime.now();
//   TimeOfDay _selectedTime = TimeOfDay.now();

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime(2022),
//       lastDate: DateTime(2030),
//     );
//     if (picked != null && picked != _selectedDate)
//       setState(() {
//         _selectedDate = picked;
//         _selectedDateController.text = picked.toString();
//       });
//   }

//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: _selectedTime,
//     );
//     if (picked != null && picked != _selectedTime)
//       setState(() {
//         _selectedTime = picked;
//         _selectedTimeController.text = picked.format(context);
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Book an Appointment'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: <Widget>[
//               TextFormField(
//                 controller: _nameController,
//                 decoration: const InputDecoration(labelText: 'Name'),
//                 validator: (value) {
//                   if (value == '') {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 decoration: const InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value == '') {
//                     return 'Please enter your email';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _phoneController,
//                 decoration: const InputDecoration(labelText: 'Phone'),
//                 validator: (value) {
//                   if (value == '') {
//                     return 'Please enter your phone number';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _selectedDateController,
//                 decoration: const InputDecoration(labelText: 'Select Date'),
//                 onTap: () {
//                   _selectDate(context);
//                 },
//               ),
//               TextFormField(
//                 controller: _selectedTimeController,
//                 decoration: const InputDecoration(labelText: 'Select Time'),
//                 onTap: () {
//                   _selectTime(context);
//                 },
//               ),
//               const SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // Handle appointment booking here
//                     String name = _nameController.text;
//                     String email = _emailController.text;
//                     String phone = _phoneController.text;
//                     String selectedDate = _selectedDateController.text;
//                     String selectedTime = _selectedTimeController.text;

//                     // Send the appointment data to a backend service or store it locally
//                     // Implement your booking logic here
//                     // For a real app, you would likely make an API request to a server

//                     // After successful booking, you can navigate to a confirmation page
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => AppointmentConfirmation(
//                           name: name,
//                           email: email,
//                           phone: phone,
//                           selectedDate: selectedDate,
//                           selectedTime: selectedTime,
//                         ),
//                       ),
//                     );
//                   }
//                 },
//                 child: const Text('Book Appointment'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AppointmentConfirmation extends StatelessWidget {
//   final String name;
//   final String email;
//   final String phone;
//   final String selectedDate;
//   final String selectedTime;

//   const AppointmentConfirmation({super.key, 
//     required this.name,
//     required this.email,
//     required this.phone,
//     required this.selectedDate,
//     required this.selectedTime,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Appointment Confirmation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const Text('Appointment Details:'),
//             const SizedBox(height: 8.0),
//             Text('Name: $name'),
//             Text('Email: $email'),
//             Text('Phone: $phone'),
//             Text('Date: $selectedDate'),
//             Text('Time: $selectedTime'),
//           ],
//         ),
//       ),
//     );
//   }
// }


class AppointmentForm extends StatefulWidget {
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _selectedDateController = TextEditingController();
  final TextEditingController _selectedTimeController = TextEditingController();
  final TextEditingController _procedureController = TextEditingController();
  bool _appliedBefore = false;

  DateTime _selectedDate = DateTime.now();
  DateTime _selectedDateOfBirth = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  final List<String> _procedures = [
    'Medical Examination',
    'Doctor Check',
    'Result Analysis',
    'Check-ups',
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2022),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _selectedDateController.text = picked.toString();
      });
    }
  }

  Future<void> _selectDateOfBirth(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDateOfBirth,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDateOfBirth) {
      setState(() {
        _selectedDateOfBirth = picked;
        _dobController.text = picked.toLocal().toString().split(' ')[0];
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
        _selectedTimeController.text = picked.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final doctor = Get.arguments;

    // final doctorName = doctor['DoctorName'];
    // final doctorType = doctor['DoctorType'];
    
    final doctorImg = doctor['DoctorImg'];
    return Scaffold(
      backgroundColor: const Color(0xFFcbe6f6),
      appBar: AppBar(
        title: Text('Book an Appointment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Image.asset(
                  doctorImg,
                  fit: BoxFit.cover,
                ),
              // ListTile(
              //   leading: ClipRRect(
              //           borderRadius: BorderRadius.circular(5),
              //           child: Image.network(
              //             doctorImg, // Replace with your image path
              //             width: 30,
              //             height: 30,
              //           ),
              //         ),
              //   title: Text(doctorName, style: AppBlackTextStyle.texth2),
              //   trailing: const Text('ONLINE',style: AppBlackTextStyle.texth2),
              //   subtitle: Text(doctorType, style: AppBlackTextStyle.texth2)
              // ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == "") {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == "") {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone'),
                validator: (value) {
                  if (value == "") {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _dobController,
                decoration: InputDecoration(labelText: 'Date of Birth'),
                onTap: () {
                  _selectDateOfBirth(context);
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
              ),
              TextFormField(
                controller: _cityController,
                decoration: InputDecoration(labelText: 'City'),
              ),
              TextFormField(
                controller: _selectedDateController,
                decoration: InputDecoration(labelText: 'Select Date'),
                onTap: () {
                  _selectDate(context);
                },
              ),
              TextFormField(
                controller: _selectedTimeController,
                decoration: InputDecoration(labelText: 'Select Time'),
                onTap: () {
                  _selectTime(context);
                },
              ),
              DropdownButtonFormField<String>(
  value: _procedureController.text.isNotEmpty ? _procedureController.text : null,
  items: _procedures.map((String procedure) {
    return DropdownMenuItem<String>(
      value: procedure,
      child: Text(procedure),
    );
  }).toList(),
  onChanged: (String? value) {
    setState(() {
      _procedureController.text = value!;
    });
  },
  decoration: InputDecoration(labelText: 'Procedure'),
),

              Row(
                children: <Widget>[
                  Text('Have you ever applied to our facility before? \n'),
                  Radio(
                    value: true,
                    groupValue: _appliedBefore,
                    onChanged: (bool? value) {
                      setState(() {
                        _appliedBefore = value!;
                      });
                    },
                  ),
                  Text('Yes'),
                  Radio(
                    value: false,
                    groupValue: _appliedBefore,
                    onChanged: (bool? value) {
                      setState(() {
                        _appliedBefore = value!;
                      });
                    },
                  ),
                  Text('No'),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle appointment booking here
                    String name = _nameController.text;
                    String email = _emailController.text;
                    String phone = _phoneController.text;
                    String dob = _dobController.text;
                    String address = _addressController.text;
                    String city = _cityController.text;
                    String selectedDate = _selectedDateController.text;
                    String selectedTime = _selectedTimeController.text;
                    String procedure = _procedureController.text;

                    // Send the appointment data to a backend service or store it locally
                    // Implement your booking logic here
                    // For a real app, you would likely make an API request to a server

                    // After successful booking, you can navigate to a confirmation page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppointmentConfirmation(
                          name: name,
                          email: email,
                          phone: phone,
                          dob: dob,
                          address: address,
                          city: city,
                          selectedDate: selectedDate,
                          selectedTime: selectedTime,
                          procedure: procedure,
                          appliedBefore: _appliedBefore,
                        ),
                      ),
                    );
                  }
                },
                child: Text('Book Appointment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppointmentConfirmation extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String dob;
  final String address;
  final String city;
  final String selectedDate;
  final String selectedTime;
  final String procedure;
  final bool appliedBefore;

  AppointmentConfirmation({
    required this.name,
    required this.email,
    required this.phone,
    required this.dob,
    required this.address,
    required this.city,
    required this.selectedDate,
    required this.selectedTime,
    required this.procedure,
    required this.appliedBefore,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Confirmation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Appointment Details:'),
            SizedBox(height: 8.0),
            Text('Name: $name'),
            Text('Email: $email'),
            Text('Phone: $phone'),
            Text('Date of Birth: $dob'),
            Text('Address: $address'),
            Text('City: $city'),
            Text('Date: $selectedDate'),
            Text('Time: $selectedTime'),
            Text('Procedure: $procedure'),
            Text('Applied Before: ${appliedBefore ? 'Yes' : 'No'}'),
          ],
        ),
      ),
    );
  }
}