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
    if (value.length >= 4){
      _firstName=ValidationItem(value,null);
    } else {
      _firstName=ValidationItem(null, "Debe tener al menos 4 caracteres");
    }
    notifyListeners();
  }

    void changeLastName(String value){
    if (value.length >= 4){
      _lastName=ValidationItem(value,null);
    } else {
      _lastName=ValidationItem(null, "Debe tener al menos 4 caracteres");
    }
    notifyListeners();
  }

  void submitData(){
    print("Bienvenido usuario Nombre: ${firstName.value}, Apellido: ${lastName.value}");
  }


}