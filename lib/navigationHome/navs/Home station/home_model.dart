import 'package:intl/intl.dart';

class DrInfo {
  String imageURL;
  String drName;
  String drDesc;
  String drType;
  String location;
  String rating;

  DrInfo({
    required this.imageURL,
    required this.drName,
    required this.drDesc,
    required this.drType,
    required this.location,
    required this.rating,
  });
}

List<DrInfo> getDrInfo = [
  DrInfo(
    imageURL: 'assets/doctors/d1.png',
    drName: 'Dr. Thomas Sarpong',
    drDesc:
        "Life's most precious moments begin in the skilled hands of Dr. Thomas Sarpong, a dedicated obstetrician whose compassion and expertise have touched countless lives. With a profound commitment to maternal and fetal health, Dr. Sarpong has become a beacon of hope for expectant mothers and families in our community.\n\nBeyond his clinical practice, Dr. Sarpong is deeply committed to community outreach and education. He actively participates in maternal health awareness programs, speaking at schools, community centers, and healthcare events to empower women with knowledge about their reproductive health. \n Dr. Sarpong is not only a practitioner of the highest caliber but also a tireless advocate for innovation in obstetrics. He stays at the forefront of medical advancements and technologies, incorporating the latest techniques and approaches to ensure the safety and well-being of both mother and baby during pregnancy, labor, and delivery. \n Dr. Sarpong's passion for women's health and obstetrics led him to specialize in this field. He trained under some of the most esteemed obstetricians, gaining invaluable experience in delivering babies and providing comprehensive care to expectant mothers. His relentless pursuit of excellence earned him recognition as a rising star in the realm of obstetrics.",
    drType: 'Obstetricians',
    location: 'Accra',
    rating: '2.5',
  ),
  DrInfo(
    imageURL: 'assets/doctors/d2.png',
    drName: 'Dr. Kofi Sarpong',
    drDesc:
        'Lorem ipsum dolor sit amet consectetur. Rhoncus dapibus id vulputate et bibendum tempus quis fusce. Pharetra ut cursus phasellus mi. Nulla consectetur amet in dignissim sem. Sit duis praesent non velit sagittis sollicitudin scelerisque.',
    drType: 'Obstetricians',
    location: 'Accra',
    rating: '2.5',
  ),
  DrInfo(
    imageURL: 'assets/doctors/d3.png',
    drName: 'Dr. Thomas Atamarra',
    drDesc:
        "Dr. Docas Atamarra is a distinguished name in the realm of cardiology, renowned for his unwavering commitment to the well-being of the human heart. With a career spanning over three decades, he has become a beacon of hope for countless individuals grappling with cardiovascular challenges. \n\n Born with a passion for healing and an innate curiosity about the intricacies of the cardiovascular system, Dr. Atamarra embarked on his journey to become a cardiologist from a young age. His unwavering dedication led him to excel academically, earning a Bachelor of Science degree in Biology with honors. He continued to hone his medical prowess, graduating at the top of his class from the prestigious Medical School of Excellence.\n Dr. Atamarra's unwavering commitment to his field propelled him into a specialized residency in cardiology, where he quickly earned a reputation for his exceptional diagnostic skills and compassionate patient care. Over the years, he has continually expanded his knowledge through groundbreaking research and innovative treatments, cementing his status as a leader in the field.",
    drType: 'Cardiologist',
    location: 'London',
    rating: '4.5',
  ),
  DrInfo(
    imageURL: 'assets/doctors/d4.png',
    drName: 'Dr. Boti Dennis',
    drDesc:
        "Dr. Boti Dannis, a distinguished Dermatologist, has spent years honing her expertise in the realm of skin health. Armed with a profound understanding of dermatological conditions and treatment options, Dr. Dannis is committed to helping patients look and feel their best. Her compassionate approach to patient care and unwavering dedication to staying at the forefront of dermatological advancements have earned her a reputation as a leading figure in the field. Dr. Dannis not only diagnoses and treats skin conditions but also empowers her patients with knowledge and personalized solutions, making her an esteemed and trusted Dermatologist.",
    drType: 'Dermatologist',
    location: 'London',
    rating: '3.5',
  ),
  DrInfo(
    imageURL: 'assets/doctors/d5.png',
    drName: 'Dr. Yaihard Francis',
    drDesc:
        "Dr. Yaihard Francis is a dedicated and compassionate pediatrician with a passion for children's health and well-being. With years of experience in the field, Dr. Francis has earned a reputation for providing top-notch medical care to young patients. Known for their friendly demeanor and expertise, Dr. Francis is committed to ensuring that every child they treat receives the best possible care and attention. Their unwavering dedication to the field of pediatrics makes them a trusted and respected healthcare professional in their community.",
    drType: 'pediatrucian',
    location: 'UK',
    rating: '5.0',
  ),
  DrInfo(
    imageURL: 'assets/doctors/d6.png',
    drName: 'Dr. Thomas Thightus',
    drDesc:
        "Dr. Thomas Thightus is a renowned orthopedic specialist with a passion for enhancing the mobility and quality of life for his patients. With years of dedicated experience in the field, Dr. Thightus has become a trusted name in orthopedic medicine. His expertise lies in diagnosing and treating a wide range of musculoskeletal conditions, from sports injuries to degenerative joint diseases. Dr. Thightus is committed to providing compassionate care and cutting-edge treatments to help his patients regain their strength and mobility. His dedication to orthopedics has earned him a reputation as a leading expert in the field, making him a go-to choice for those seeking top-notch orthopedic care.",
    drType: 'Othopedic',
    location: 'Germani',
    rating: '4.5',
  ),
];

class DrInfo2 {
  String imageURL;
  String drName;
  String drDesc;
  String drType;
  String location;
  String rating;

  DrInfo2({
    required this.imageURL,
    required this.drName,
    required this.drDesc,
    required this.drType,
    required this.location,
    required this.rating,
  });
}

List<DrInfo2> getDrInfo2 = [
  DrInfo2(
    imageURL: 'assets/doctors/d3.png',
    drName: 'Dr. Thomas Atamarra',
    drDesc:
        "Dr. Docas Atamarra is a distinguished name in the realm of cardiology, renowned for his unwavering commitment to the well-being of the human heart. With a career spanning over three decades, he has become a beacon of hope for countless individuals grappling with cardiovascular challenges. \n\n Born with a passion for healing and an innate curiosity about the intricacies of the cardiovascular system, Dr. Atamarra embarked on his journey to become a cardiologist from a young age. His unwavering dedication led him to excel academically, earning a Bachelor of Science degree in Biology with honors. He continued to hone his medical prowess, graduating at the top of his class from the prestigious Medical School of Excellence.\n Dr. Atamarra's unwavering commitment to his field propelled him into a specialized residency in cardiology, where he quickly earned a reputation for his exceptional diagnostic skills and compassionate patient care. Over the years, he has continually expanded his knowledge through groundbreaking research and innovative treatments, cementing his status as a leader in the field.",
    drType: 'Cardiologist',
    location: 'London',
    rating: '4.5',
  ),
  DrInfo2(
    imageURL: 'assets/doctors/d4.png',
    drName: 'Dr. Boti Dennis',
    drDesc:
        "Dr. Boti Dannis, a distinguished Dermatologist, has spent years honing her expertise in the realm of skin health. Armed with a profound understanding of dermatological conditions and treatment options, Dr. Dannis is committed to helping patients look and feel their best. Her compassionate approach to patient care and unwavering dedication to staying at the forefront of dermatological advancements have earned her a reputation as a leading figure in the field. Dr. Dannis not only diagnoses and treats skin conditions but also empowers her patients with knowledge and personalized solutions, making her an esteemed and trusted Dermatologist.",
    drType: 'Dermatologist',
    location: 'London',
    rating: '3.5',
  ),
  DrInfo2(
    imageURL: 'assets/doctors/d1.png',
    drName: 'Dr. Thomas Sarpong',
    drDesc:
        "Life's most precious moments begin in the skilled hands of Dr. Thomas Sarpong, a dedicated obstetrician whose compassion and expertise have touched countless lives. With a profound commitment to maternal and fetal health, Dr. Sarpong has become a beacon of hope for expectant mothers and families in our community.\n\nBeyond his clinical practice, Dr. Sarpong is deeply committed to community outreach and education. He actively participates in maternal health awareness programs, speaking at schools, community centers, and healthcare events to empower women with knowledge about their reproductive health. \n Dr. Sarpong is not only a practitioner of the highest caliber but also a tireless advocate for innovation in obstetrics. He stays at the forefront of medical advancements and technologies, incorporating the latest techniques and approaches to ensure the safety and well-being of both mother and baby during pregnancy, labor, and delivery. \n Dr. Sarpong's passion for women's health and obstetrics led him to specialize in this field. He trained under some of the most esteemed obstetricians, gaining invaluable experience in delivering babies and providing comprehensive care to expectant mothers. His relentless pursuit of excellence earned him recognition as a rising star in the realm of obstetrics.",
    drType: 'Obstetricians',
    location: 'Accra',
    rating: '2.5',
  ),
  DrInfo2(
    imageURL: 'assets/doctors/d6.png',
    drName: 'Dr. Thomas Thightus',
    drDesc:
        "Dr. Thomas Thightus is a renowned orthopedic specialist with a passion for enhancing the mobility and quality of life for his patients. With years of dedicated experience in the field, Dr. Thightus has become a trusted name in orthopedic medicine. His expertise lies in diagnosing and treating a wide range of musculoskeletal conditions, from sports injuries to degenerative joint diseases. Dr. Thightus is committed to providing compassionate care and cutting-edge treatments to help his patients regain their strength and mobility. His dedication to orthopedics has earned him a reputation as a leading expert in the field, making him a go-to choice for those seeking top-notch orthopedic care.",
    drType: 'Othopedic',
    location: 'Germani',
    rating: '4.5',
  ),
  DrInfo2(
    imageURL: 'assets/doctors/d5.png',
    drName: 'Dr. Yaihard Francis',
    drDesc:
        "Dr. Yaihard Francis is a dedicated and compassionate pediatrician with a passion for children's health and well-being. With years of experience in the field, Dr. Francis has earned a reputation for providing top-notch medical care to young patients. Known for their friendly demeanor and expertise, Dr. Francis is committed to ensuring that every child they treat receives the best possible care and attention. Their unwavering dedication to the field of pediatrics makes them a trusted and respected healthcare professional in their community.",
    drType: 'pediatrucian',
    location: 'UK',
    rating: '5.0',
  ),
  DrInfo2(
    imageURL: 'assets/doctors/d2.png',
    drName: 'Dr. Kofi Sarpong',
    drDesc:
        'Lorem ipsum dolor sit amet consectetur. Rhoncus dapibus id vulputate et bibendum tempus quis fusce. Pharetra ut cursus phasellus mi. Nulla consectetur amet in dignissim sem. Sit duis praesent non velit sagittis sollicitudin scelerisque.',
    drType: 'Obstetricians',
    location: 'Accra',
    rating: '2.5',
  ),
];

class DrInfo3 {
  String imageURL;
  String drName;
  String drDesc;
  String drType;
  String location;
  String rating;

  DrInfo3({
    required this.imageURL,
    required this.drName,
    required this.drDesc,
    required this.drType,
    required this.location,
    required this.rating,
  });
}

List<DrInfo3> getDrInfo3 = [
  
  DrInfo3(
    imageURL: 'assets/doctors/d6.png',
    drName: 'Dr. Thomas Thightus',
    drDesc:
        "Dr. Thomas Thightus is a renowned orthopedic specialist with a passion for enhancing the mobility and quality of life for his patients. With years of dedicated experience in the field, Dr. Thightus has become a trusted name in orthopedic medicine. His expertise lies in diagnosing and treating a wide range of musculoskeletal conditions, from sports injuries to degenerative joint diseases. Dr. Thightus is committed to providing compassionate care and cutting-edge treatments to help his patients regain their strength and mobility. His dedication to orthopedics has earned him a reputation as a leading expert in the field, making him a go-to choice for those seeking top-notch orthopedic care.",
    drType: 'Othopedic',
    location: 'Germani',
    rating: '4.5',
  ),
  DrInfo3(
    imageURL: 'assets/doctors/d5.png',
    drName: 'Dr. Yaihard Francis',
    drDesc:
        "Dr. Yaihard Francis is a dedicated and compassionate pediatrician with a passion for children's health and well-being. With years of experience in the field, Dr. Francis has earned a reputation for providing top-notch medical care to young patients. Known for their friendly demeanor and expertise, Dr. Francis is committed to ensuring that every child they treat receives the best possible care and attention. Their unwavering dedication to the field of pediatrics makes them a trusted and respected healthcare professional in their community.",
    drType: 'pediatrucian',
    location: 'UK',
    rating: '5.0',
  ),

  DrInfo3(
    imageURL: 'assets/doctors/d3.png',
    drName: 'Dr. Thomas Atamarra',
    drDesc:
        "Dr. Docas Atamarra is a distinguished name in the realm of cardiology, renowned for his unwavering commitment to the well-being of the human heart. With a career spanning over three decades, he has become a beacon of hope for countless individuals grappling with cardiovascular challenges. \n\n Born with a passion for healing and an innate curiosity about the intricacies of the cardiovascular system, Dr. Atamarra embarked on his journey to become a cardiologist from a young age. His unwavering dedication led him to excel academically, earning a Bachelor of Science degree in Biology with honors. He continued to hone his medical prowess, graduating at the top of his class from the prestigious Medical School of Excellence.\n Dr. Atamarra's unwavering commitment to his field propelled him into a specialized residency in cardiology, where he quickly earned a reputation for his exceptional diagnostic skills and compassionate patient care. Over the years, he has continually expanded his knowledge through groundbreaking research and innovative treatments, cementing his status as a leader in the field.",
    drType: 'Cardiologist',
    location: 'London',
    rating: '4.5',
  ),
  DrInfo3(
    imageURL: 'assets/doctors/d4.png',
    drName: 'Dr. Boti Dennis',
    drDesc:
        "Dr. Boti Dannis, a distinguished Dermatologist, has spent years honing her expertise in the realm of skin health. Armed with a profound understanding of dermatological conditions and treatment options, Dr. Dannis is committed to helping patients look and feel their best. Her compassionate approach to patient care and unwavering dedication to staying at the forefront of dermatological advancements have earned her a reputation as a leading figure in the field. Dr. Dannis not only diagnoses and treats skin conditions but also empowers her patients with knowledge and personalized solutions, making her an esteemed and trusted Dermatologist.",
    drType: 'Dermatologist',
    location: 'London',
    rating: '3.5',
  ),
  DrInfo3(
    imageURL: 'assets/doctors/d1.png',
    drName: 'Dr. Thomas Sarpong',
    drDesc:
        "Life's most precious moments begin in the skilled hands of Dr. Thomas Sarpong, a dedicated obstetrician whose compassion and expertise have touched countless lives. With a profound commitment to maternal and fetal health, Dr. Sarpong has become a beacon of hope for expectant mothers and families in our community.\n\nBeyond his clinical practice, Dr. Sarpong is deeply committed to community outreach and education. He actively participates in maternal health awareness programs, speaking at schools, community centers, and healthcare events to empower women with knowledge about their reproductive health. \n Dr. Sarpong is not only a practitioner of the highest caliber but also a tireless advocate for innovation in obstetrics. He stays at the forefront of medical advancements and technologies, incorporating the latest techniques and approaches to ensure the safety and well-being of both mother and baby during pregnancy, labor, and delivery. \n Dr. Sarpong's passion for women's health and obstetrics led him to specialize in this field. He trained under some of the most esteemed obstetricians, gaining invaluable experience in delivering babies and providing comprehensive care to expectant mothers. His relentless pursuit of excellence earned him recognition as a rising star in the realm of obstetrics.",
    drType: 'Obstetricians',
    location: 'Accra',
    rating: '2.5',
  ),
  DrInfo3(
    imageURL: 'assets/doctors/d2.png',
    drName: 'Dr. Kofi Sarpong',
    drDesc:
        'Lorem ipsum dolor sit amet consectetur. Rhoncus dapibus id vulputate et bibendum tempus quis fusce. Pharetra ut cursus phasellus mi. Nulla consectetur amet in dignissim sem. Sit duis praesent non velit sagittis sollicitudin scelerisque.',
    drType: 'Obstetricians',
    location: 'Accra',
    rating: '2.5',
  ),
];
