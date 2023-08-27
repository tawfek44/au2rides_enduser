import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class XX extends StatefulWidget {
  const XX({super.key});

  @override
  State<XX> createState() => _XXState();
}

class _XXState extends State<XX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntlPhoneField(
        decoration: const InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
        initialCountryCode: 'EG',
        onChanged: (phone) {
          print(phone.completeNumber);
        },
      ),
    );
  }
}
