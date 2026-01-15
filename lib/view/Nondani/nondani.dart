import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

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

  String _expertRequired = 'No';
  bool _isLoading = false;

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

  Future<void> _submitForm() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    final String emailBody = '''
बचत गटाचे नाव: ${_bachatGatNameController.text}
गाव: ${_gaonController.text}
तालुका: ${_talukaController.text}
जिल्हा: ${_jilhaController.text}
मोबाईल नंबर: ${_mobileNumberController.text}
उत्पादने / पीक: ${_productsController.text}
स्थापना वर्ष: ${_establishmentController.text}
सदस्य संख्या: ${_memberCountController.text}
तज्ञाची गरज: ${_expertRequired == 'Yes' ? 'हो' : 'नाही'}
''';

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'ashitosh.avertatech@gmail.com',
      queryParameters: {
        'subject': 'नवीन बचत गट नोंदणी',
        'body': emailBody,
      },
    );

    await Future.delayed(const Duration(seconds: 2));

    if (await launchUrl(emailUri)) {
      _clearForm();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('माहिती यशस्वीरित्या पाठवली गेली आहे!'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('ईमेल पाठवता आला नाही'),
          backgroundColor: Colors.red,
        ),
      );
    }

    setState(() => _isLoading = false);
  }

  void _clearForm() {
    _bachatGatNameController.clear();
    _gaonController.clear();
    _talukaController.clear();
    _jilhaController.clear();
    _mobileNumberController.clear();
    _productsController.clear();
    _establishmentController.clear();
    _memberCountController.clear();
    _expertRequired = 'No';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F6F2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
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

                _buildInputField(
                  'बचत गटाचे नाव',
                  _bachatGatNameController,
                  icon: Icons.groups,
                ),
                _buildInputField(
                  'गाव',
                  _gaonController,
                  icon: Icons.location_city,
                ),
                _buildInputField(
                  'तालुका',
                  _talukaController,
                  icon: Icons.map,
                ),
                _buildInputField(
                  'जिल्हा',
                  _jilhaController,
                  icon: Icons.location_on,
                ),

                _buildMobileField(),

                _buildInputField(
                  'उत्पादने किंवा पीक',
                  _productsController,
                  icon: Icons.agriculture,
                ),
                _buildInputField(
                  'बचत गट स्थापना',
                  _establishmentController,
                  icon: Icons.calendar_today,
                ),
                _buildInputField(
                  'बचत गट संख्या',
                  _memberCountController,
                  keyboardType: TextInputType.number,
                  icon: Icons.people,
                ),

                const SizedBox(height: 15),
                const Text(
                  'तुम्हाला तज्ञाची गरज आहे का?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                _buildRadioButton(),
                const SizedBox(height: 20),

                _buildSubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(
    String label,
    TextEditingController controller, {
    TextInputType keyboardType = TextInputType.text,
    required IconData icon,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: _inputDecoration(label, icon),
        validator: (v) => v == null || v.isEmpty ? 'हे फील्ड आवश्यक आहे' : null,
      ),
    );
  }

  Widget _buildMobileField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: _mobileNumberController,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: _inputDecoration('मोबाईल नंबर', Icons.phone_android),
        validator: (v) =>
            v == null || v.length != 10 ? '10 अंकी मोबाईल नंबर भरा' : null,
      ),
    );
  }

  InputDecoration _inputDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.green),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.green, width: 2),
      ),
      contentPadding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    );
  }

  Widget _buildRadioButton() {
    return Row(
      children: [
        Expanded(
          child: RadioListTile(
            title: const Text('हो'),
            value: 'Yes',
            groupValue: _expertRequired,
            onChanged: (v) => setState(() => _expertRequired = v!),
            activeColor: Colors.green,
          ),
        ),
        Expanded(
          child: RadioListTile(
            title: const Text('नाही'),
            value: 'No',
            groupValue: _expertRequired,
            onChanged: (v) => setState(() => _expertRequired = v!),
            activeColor: Colors.green,
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: _isLoading ? null : _submitForm,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: _isLoading
          ? const SizedBox(
              height: 22,
              width: 22,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2.5,
              ),
            )
          : const Text('जतन करा', style: TextStyle(fontSize: 18)),
    );
  }
}
