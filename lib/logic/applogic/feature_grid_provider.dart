import 'package:flutter/material.dart';

class FeatureGridProvider extends ChangeNotifier {
  final List _featuregriditems = [
    {"name": "Send Money", "image": "assets/icons/01-send-money_1666154832042.webp"},
    {"name": "Mobile Recharge", "image": "assets/icons/02-mobile-recharge_1666155167971.webp"},
    {"name": "Cash Out", "image": "assets/icons/03-cash-out_1666158620022.webp"},
    {"name": "Make Payment", "image": "assets/icons/04-payment_1666159400113.webp"},
    {"name": "Add Money", "image": "assets/icons/05-add-money_1666160847291.webp"},
    {"name": "Pay Bill", "image": "assets/icons/06-pay-bill_1703790805248.webp"},
    {"name": "Savings", "image": "assets/icons/savings-icon-web_1727696283394.webp"},
    {"name": "Loan", "image": "assets/icons/08-loan_1669656798833.webp"},
    {"name": "Insurance", "image": "assets/icons/14_1673328772329.webp"},
    {"name": "bKash to Bank", "image": "assets/icons/10-transfer-money_1666169481952.webp"},
    {"name": "Education Fee", "image": "assets/icons/11-education_1703797436136.webp"},
    {"name": "Microfinance", "image": "assets/icons/12-NGO_1669658036501.webp"},
    {"name": "Toll", "image": "assets/icons/toll.png"},
    {"name": "Request Money", "image": "assets/icons/rq-140px-x-140px_1701968485695.webp"},
    {"name": "Remittance", "image": "assets/icons/09-remittance_1666168732360.webp"},
    {"name": "Donation", "image": "assets/icons/13_1669034799648.webp"},
  ];

  get featuregriditems => _featuregriditems;
}
