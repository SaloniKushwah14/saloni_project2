import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentRagistration extends StatefulWidget {
  @override
  State<StudentRagistration> createState() => StudentRagistrationState();
}

class StudentRagistrationState extends State<StudentRagistration> {
  final formKey = GlobalKey<FormState>();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String gender = 'Male';
  List<String> selectedHobbies = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Registration'),
      ),
      body: Center(
        child: Container(
          height: 1100,
          width: 420,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      "Student Registration",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: firstNameController,
                            decoration: InputDecoration(
                              labelText: 'First Name',
                              border: OutlineInputBorder(),
                              fillColor: Colors.blue,filled: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your first name';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: TextFormField(
                            controller: lastNameController,
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              border: OutlineInputBorder(),
                              fillColor: Colors.blue,filled: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your last name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                              fillColor: Colors.blue,filled: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              // Email regex
                              String pattern =
                                  r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\b';
                              RegExp regex = RegExp(pattern);
                              if (!regex.hasMatch(value)) {
                                return 'Enter a valid email';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: TextFormField(
                            controller: phoneController,
                            decoration: InputDecoration(
                              labelText: 'Phone',
                              border: OutlineInputBorder(),
                              fillColor: Colors.blue,filled: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your phone number';
                              }
                              String pattern = r'^[0-9]{10}$'; // Simple phone regex
                              RegExp regex = RegExp(pattern);
                              if (!regex.hasMatch(value)) {
                                return 'Enter a valid phone number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: cityController,
                            decoration: InputDecoration(
                              labelText: 'City',
                              border: OutlineInputBorder(),
                              fillColor: Colors.blue,filled: true,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your city';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0),
                  Divider(thickness: 2, color: Colors.black12),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "Gender",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'Male',
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Text("Male"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'Female',
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Text("Female"),
                    ],
                  ),
                  Divider(thickness: 2, color: Colors.black12),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("Hobbies",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: selectedHobbies.contains("Cricket"),
                            onChanged: (value) {
                              setState(() {
                                value!
                                    ? selectedHobbies.add("Cricket")
                                    : selectedHobbies.remove("Cricket");
                              });
                            },
                          ),
                          Text("Cricket"),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: selectedHobbies.contains("Football"),
                            onChanged: (value) {
                              setState(() {
                                value!
                                    ? selectedHobbies.add("Football")
                                    : selectedHobbies.remove("Football");
                              });
                            },
                          ),
                          Text("Football"),
                        ],
                      ),
                    ],
                  ),
                  Divider(thickness: 2, color: Colors.black12),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true, // For hiding password text
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              fillColor: Colors.blue,filled: true,
                            ),

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: _submitForm,
                      child: Text("Register"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }

  void _submitForm() {
    if (formKey.currentState?.validate() ??false ) {
      // Form is valid, perform registration logic
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Processing Registration')),
      );
    } else {
      // Form is invalid
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fix the errors')),
      );
    }
  }
}
