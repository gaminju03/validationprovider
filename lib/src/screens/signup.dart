import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../validation/signup_validation.dart';


class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<SignupValidation>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Nombre",
                errorText: validationService.firstName.error,
              ),
              onChanged: (String value) {
                validationService.changeFirstName(value);
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Primer Apellido",
                errorText: validationService.lastName.error,
              ),
              onChanged: (String value) {
                validationService.changeLastName(value);
              },
            ),
            
            RaisedButton( 
              child: Text('Enviar'),
              onPressed:  (!validationService.isValid) ? null : validationService.submitData,
            )
          ],
        ),
      ),
    );
  }
}
