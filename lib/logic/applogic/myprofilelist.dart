import 'package:flutter/material.dart';

class Myprofilelist extends ChangeNotifier {
  final List _transectionfeatures = [
    {"icon": "assets/icons/opentap.png", "text": "One-Tap Transection"},
    {"icon": "assets/icons/nfc.png", "text": "bKash NFC"},
    {"icon": "assets/icons/cards.png", "text": "Saved cards"},
    {"icon": "assets/icons/linked.png", "text": "Linked Apps"},
    {"icon": "assets/icons/Face_ID_logo.svg.png", "text": "Touch/Face ID"},
  ];
  get transectionfeatures => _transectionfeatures;

  final List _preferences = [
    {"icon": "assets/icons/theme.png", "text": "Select Theme"},
    {
      "icon": "assets/icons/notification.png",
      "text": "Notification Management",
    },
  ];
  get preferences => _preferences;

  final List _manageaccount = [
    {"icon": "assets/icons/profile.png", "text": "Update bKash Number"},
    {"icon": "assets/icons/others.png", "text": "Others"},
  ];
  get manageaccount => _manageaccount;
}
