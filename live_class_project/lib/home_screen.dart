import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _firstNumTEController = TextEditingController();
  final TextEditingController _secondNumTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  double _result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculate'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _firstNumTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'First number',
                  labelText: 'First number',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a value';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _secondNumTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Second number',
                  labelText: 'Second number',
                ),
                validator: (String? value) {
                  if (value?.isEmpty ?? true) {
                    return 'Enter a value';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              _buildButtonBar(),
              const SizedBox(height: 24),
              Text(
                'Result : ${_result.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonBar() {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: _onTapAddButton,
          icon: const Icon(Icons.add),
        ),
        IconButton(
          onPressed: _onTapSubtractButton,
          icon: const Icon(Icons.remove),
        ),
        TextButton(
          onPressed: _onTapDivideButton,
          child: const Text(
            '/',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        TextButton(
          onPressed: _onTapMultiplyButton,
          child: const Text(
            '*',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ],
    );
  }

  void _onTapAddButton() {
    if (_formKey.currentState!.validate()) {
      double firstNum = double.tryParse(_firstNumTEController.text) ?? 0;
      double secondNum = double.tryParse(_secondNumTEController.text) ?? 0;
      _result = firstNum + secondNum;
      setState(() {});
    }
  }

  void _onTapSubtractButton() {
    if (_formKey.currentState!.validate() == false) {
      return;
    }
    double firstNum = double.tryParse(_firstNumTEController.text) ?? 0;
    double secondNum = double.tryParse(_secondNumTEController.text) ?? 0;
    _result = firstNum - secondNum;
    setState(() {});
  }

  void _onTapDivideButton() {
    if (_formKey.currentState!.validate() == false) {
      return;
    }
    double firstNum = double.tryParse(_firstNumTEController.text) ?? 0;
    double secondNum = double.tryParse(_secondNumTEController.text) ?? 0;
    _result = firstNum / secondNum;
    setState(() {});
  }

  void _onTapMultiplyButton() {
    if (_formKey.currentState!.validate() == false) {
      return;
    }

    double firstNum = double.tryParse(_firstNumTEController.text) ?? 0;
    double secondNum = double.tryParse(_secondNumTEController.text) ?? 0;
    _result = firstNum * secondNum;
    setState(() {});
  }

  bool _validateTextFields() {
    if (_firstNumTEController.text.isEmpty) {
      return false;
    }
    if (_secondNumTEController.text.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  void dispose() {
    _firstNumTEController.dispose();
    _secondNumTEController.dispose();
    super.dispose();
  }
}
