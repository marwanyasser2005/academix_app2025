import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'create_pin_screen.dart';

class FillYourProfile extends StatefulWidget {
  const FillYourProfile({super.key});

  @override
  _FillYourProfileState createState() => _FillYourProfileState();
}

class _FillYourProfileState extends State<FillYourProfile> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _nickNameController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String? _gender;

  final _formKey = GlobalKey<FormState>();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _saveProfileToFirebase() async {
    try {
      await _firestore.collection('users').add({
        'fullName': _fullNameController.text,
        'nickName': _nickNameController.text,
        'dateOfBirth': _dateOfBirthController.date,
        'email': _emailController.text,
        'phone': _phoneController.text,
        'gender': _gender,
        'timestamp': FieldValue.serverTimestamp(),
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CreatePinScreen()),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save profile: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFC13333), Color(0x003145AC)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  const Text(
                    'Fill Your Profile',
                    style: TextStyle(
                      color: Color(0xFF202244),
                      fontSize: 21,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xFFE8F1FF),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(
                                "https://via.placeholder.com/90x90"),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              // Handle camera action
                            },
                            child: const CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xFF167F71),
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  _buildTextField('Full Name', _fullNameController),
                  _buildTextField('Nick Name', _nickNameController),
                  _buildTextFieldWithIcon(
                    'Date of Birth',
                    _dateOfBirthController,
                    Icons.calendar_today,
                  ),
                  _buildTextFieldWithIcon(
                    'Email',
                    _emailController,
                    Icons.email,
                  ),
                  _buildTextFieldWithIcon(
                    'Phone Number',
                    _phoneController,
                    Icons.phone,
                  ),
                  _buildDropdown('Gender', ['Male', 'Female']),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _saveProfileToFirebase();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0961F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 40,
                        ),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: _inputDecoration(label),
        validator: (value) => value!.isEmpty ? 'Please enter $label' : null,
      ),
    );
  }

  Widget _buildTextFieldWithIcon(
      String label, TextEditingController controller, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: _inputDecoration(label).copyWith(
          prefixIcon: Icon(icon, color: const Color(0xFF505050)),
        ),
        validator: (value) => value!.isEmpty ? 'Please enter $label' : null,
      ),
    );
  }

  Widget _buildDropdown(String label, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: _inputDecoration(label),
        value: _gender,
        items: items.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (newValue) => setState(() => _gender = newValue),
        validator: (value) => value == null ? 'Please select your $label' : null,
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: Colors.white,
      labelText: label,
      labelStyle: const TextStyle(
        color: Color(0xFF505050),
        fontSize: 14,
        fontFamily: 'Mulish',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

extension on TextEditingController {
  get date => TimeOfDay.fromDateTime(DateTime.timestamp());
}
