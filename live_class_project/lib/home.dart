import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _descriptionTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        // backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                enabled: true,
                decoration: InputDecoration(
                  label: Text('Name'),
                  labelStyle: TextStyle(fontSize: 16),
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.green.shade200),
                  icon: Icon(Icons.add),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: TextButton(
                    child: Text('Search'),
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                      BorderSide(color: Colors.blueAccent, width: 2)),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _descriptionTEController,
                enabled: true,
                maxLines: 5,
                maxLength: 200,
                onTap: () {
                  print('Tapped on textfield');
                },
                onChanged: (String value) {
                  print(value);
                },
                decoration: InputDecoration(
                  label: Text('Description'),
                  labelStyle: TextStyle(fontSize: 16),
                  hintText: 'Enter your description',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                enabled: true,
                onChanged: (String value) {
                  print(value);
                },
                obscureText: true,
                controller: TextEditingController(),
                decoration: InputDecoration(
                  label: Text('Password'),
                  labelStyle: TextStyle(fontSize: 16),
                  hintText: 'Enter your password',
                ),
              ),
              SizedBox(height: 16),
              TextField(),
              TextButton(
                onPressed: () {
                  // _descriptionTEController.text = 'clear';
                  _descriptionTEController.clear();
                },
                child: Text(
                  'Clear description',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w100,
                      letterSpacing: 0.5
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
