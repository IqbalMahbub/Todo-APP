import 'package:flutter/material.dart';
InputDecoration inputStyling (label){
  return InputDecoration(
    labelText: label,
    labelStyle: TextStyle(
      color: Colors.grey
    ),
    hintText: "Add task",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0), // Rounded corners
  borderSide: BorderSide(
  color: Colors.blue, // Border color
  ),
  ),
  focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(
  color: Colors.green, // Border color when focused
  width: 2.0, // Border thickness
  ),
  ),

  );
}
ButtonStyle buttonStyle (){
  return ElevatedButton.styleFrom(
    //padding: EdgeInsets.only(left: 40,right: 40),

    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(5))
    ),
  );
}

