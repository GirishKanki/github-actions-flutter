import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NonadniPage extends StatefulWidget {
  const NonadniPage({super.key});

  @override
  State<NonadniPage> createState() => _NonadniPageState();
}

class _NonadniPageState extends State<NonadniPage> {
  final _formKey = GlobalKey<FormState>();
  final _bachatGatNameController = TextEditingController();
  final _gaonController = TextEditingController();
  final _talukaController = TextEditingController();
  final _jilhaController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _productsController = TextEditingController();
  final _establishmentController = TextEditingController();
  final _memberCountController = TextEditingController();

  String _expertRequired = 'No'; // 'Yes' or 'No'

  @override
  void dispose() {
    _bachatGatNameController.dispose();
    _gaonController.dispose();
    _talukaController.dispose();
    _jilhaController.dispose();
    _mobileNumberController.dispose();
    _productsController.dispose();
    _establishmentController.dispose();
    _memberCountController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('बचत गटाचे नाव: ${_bachatGatNameController.text}');
      print('गाव: ${_gaonController.text}');
      print('तालुका: ${_talukaController.text}');
      print('जिल्हा: ${_jilhaController.text}');
      print('मोबाईल नंबर: ${_mobileNumberController.text}');
      print('उत्पादने किंवा पीक: ${_productsController.text}');
      print('बचत गट स्थापना: ${_establishmentController.text}');
      print('बचत गट संख्या: ${_memberCountController.text}');
      print('तज्ञाची गरज आहे का?: $_expertRequired');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('फॉर्म यशस्वीरित्या जतन झाला!'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 25),
                const Text(
                  'बचत गट नोंदणी करण्यासाठी खालील माहिती भरा. ही माहिती सुरक्षित राहील आणि त्याचा उपयोग केवळ तुमच्या गटाच्या प्रगतीसाठी केला जाईल.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5D5145),
                    height: 1.5,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 15),

                _buildInputField('बचत गटाचे नाव', _bachatGatNameController),
                _buildInputField('गाव', _gaonController),
                _buildInputField('तालुका', _talukaController),
                _buildInputField('जिल्हा', _jilhaController),

                // ✅ Mobile number with 10-digit validation
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                    controller: _mobileNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "मोबाईल नंबर",
                      labelStyle: const TextStyle(color: Color(0xFF5D5145)),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 2),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                    ),
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'मोबाईल नंबर आवश्यक आहे';
                      } else if (value.length != 10) {
                        return 'कृपया 10 अंकी मोबाईल नंबर भरा';
                      }
                      return null;
                    },
                  ),
                ),

                _buildInputField('उत्पादने किंवा पीक', _productsController),
                _buildInputField('बचत गट स्थापना', _establishmentController),
                _buildInputField(
                  'बचत गट संख्या',
                  _memberCountController,
                  keyboardType: TextInputType.number,
                ),

                const SizedBox(height: 15),
                const Text(
                  'तुम्हाला तज्ञाची गरज आहे का ? :',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5D5145),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _buildRadioButton(),
                const SizedBox(height: 15),

                _buildSubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable input field
  Widget _buildInputField(
    String labelText,
    TextEditingController controller, {
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Color(0xFF5D5145)),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.green, width: 2),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'हे फील्ड आवश्यक आहे';
          }
          return null;
        },
      ),
    );
  }

  
  Widget _buildRadioButton() {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: const Text(
              'हो',
              style: TextStyle(color: Color(0xFF5D5145)),
            ),
            leading: Radio<String>(
              value: 'Yes',
              groupValue: _expertRequired,
              onChanged: (String? value) {
                setState(() {
                  _expertRequired = value!;
                });
              },
              activeColor: Colors.green,
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: const Text(
              'नाही',
              style: TextStyle(color: Color(0xFF5D5145)),
            ),
            leading: Radio<String>(
              value: 'No',
              groupValue: _expertRequired,
              onChanged: (String? value) {
                setState(() {
                  _expertRequired = value!;
                });
              },
              activeColor: Colors.green,
            ),
          ),
        ),
      ],
    );
  }

  // Submit button
  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: _submitForm,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: const Text(
        'जतन करा',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
