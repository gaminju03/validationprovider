import 'package:flutter/material.dart';
import './validation_item.dart';


class SignupValidation with ChangeNotifier {

  ValidationItem _firstName = ValidationItem(null,null);
  ValidationItem _lastName = ValidationItem(null,null);

  //Getters
  ValidationItem get firstName => _firstName;
  ValidationItem get lastName => _lastName;

  bool get isValid {
    if (_lastName.value != null && _firstName.value != null){
      return true;
    } else {
      return false;
    }
  }

  //Setters
  void changeFirstName(String value){
    if (value.length >= 3){
      _firstName=ValidationItem(value,null);
    } else {
      _firstName=ValidationItem(null, "Must be at least 3 characters");
    }
    notifyListeners();
  }

    void changeLastName(String value){
    if (value.length >= 3){
      _lastName=ValidationItem(value,null);
    } else {
      _lastName=ValidationItem(null, "Must be at least 3 characters");
    }
    notifyListeners();
  }

  void submitData(){
    //print("Nombre: ${firstName.value}, Apellido: ${lastName.value}");
            Text(
            firstName.value,
            style: TextStyle(fontSize: 30.0,),
        );

  }


}