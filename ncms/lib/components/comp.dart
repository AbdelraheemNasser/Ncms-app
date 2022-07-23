import 'package:flutter/material.dart';

class inputfield extends TextFormField {
  inputfield(
    controller,
    label,
  ) {
    controller:
    this.controller;
    decoration:
    InputDecoration(
      fillColor: Colors.grey.shade100,
      filled: true,
      labelText: "$label",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
