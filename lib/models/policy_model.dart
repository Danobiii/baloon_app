import 'dart:ui';
import 'package:baloon_app/models/image_model.dart';
import 'package:flutter/material.dart';

final List<Map<String, dynamic>> recents = [
  {
    "twocars": AppImages.twocarsLogo,
    'third': "Collision with third party",
    "thirdColor": Color.fromRGBO(38, 79, 96, 1),
    "claimsDesc": "2017 Lexus RX 350",
    "platenumber": "EKY287FV",
    "submitDate": "Submited on 22/03/2021",
    "status": "In Review",
    "statusColor": Color.fromRGBO(255, 163, 79, 1),
    "containerColor": Color.fromRGBO(255, 163, 79, 1),
  },
  {
    "twocars": AppImages.twocarsLogo,
    'third': "Collision with third party",
    "thirdColor": Color.fromRGBO(38, 79, 96, 1),
    "claimsDesc": "2017 Lexus RX 350",
    "platenumber": "EKY287FV",
    "submitDate": "Submited on 22/03/2021",
    "status": "In Review",
    "statusColor": Color.fromRGBO(255, 163, 79, 1),
    "containerColor": Color.fromRGBO(86, 177, 146, 1),
  },
];

final List<Map<String, dynamic>> action = [
  {
    "image": AppImages.contractLogo,
    "label": "Contract",
    "color": Color.fromRGBO(68, 119, 206, 0.2),
    "textColor": Color.fromRGBO(68, 119, 206, 0.2),
  },
  {
    "image": AppImages.claimsLogo,
    "label": "Claims",
    "color": Color.fromRGBO(193, 38, 45, 0.2),
    "textColor": Color.fromRGBO(193, 38, 45, 0.2),
  },
  {
    "image": AppImages.messagesLogo,
    "label": "Messages",
    "color": Color.fromRGBO(0, 168, 158, 0.24),
    "textColor": Color.fromRGBO(0, 168, 158, 0.24),
  },
  {
    "image": AppImages.contactLogo,
    "label": "Contact Us",
    "color": Color.fromRGBO(224, 188, 0, 0.2),
    "textColor": Color.fromRGBO(224, 188, 0, 0.2),
  },
];

final List<PolicyCard> card = [
  PolicyCard(
    logo: AppImages.car,
    policy: "AUTOFLEX POLICY",
    active: "Active",
    description: "2017 Lexus RX 350",
    plateno: "EKY287FV",
    policyno: "Policy No",
    number: "212345",
    date: "22/03/2022",
    pro: "Protection ends",
  ),
  PolicyCard(
    logo: AppImages.car,
    policy: "AUTOFLEX POLICY",
    active: "Active",
    description: "2017 Lexus RX 350",
    plateno: "EKY287FV",
    policyno: "Policy No",
    number: "212345",
    date: "22/03/2022",
    pro: "Protection ends",
  ),
];

class PolicyCard {
  final String logo;
  final String policy;
  final String active;
  final String description;
  final String plateno;
  final String policyno;
  final String number;
  final String date;
  final String pro;

  PolicyCard({
    required this.logo,
    required this.policy,
    required this.active,
    required this.description,
    required this.plateno,
    required this.policyno,
    required this.number,
    required this.date,
    required this.pro,
  });
}
