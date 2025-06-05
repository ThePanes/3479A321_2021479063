import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferencia extends StatefulWidget {
  const Preferencia({super.key});

  @override
  State<Preferencia> createState() => _PreferenciaState();
}

class _PreferenciaState extends State<Preferencia> {

  bool _isResetEnabled = false;

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
    _isResetEnabled = prefs.getBool('isResetEnabled') ?? false;
    });
  }
  Future<void> _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isResetEnabled', _isResetEnabled);
  }

  @override
    void initState() {
    super.initState();
    _loadPreferences();
  }

  @override
    void dispose(){
    _savePreferences();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preferencia')),
      body: Center(
        child: 
          Row(
            children: [
              ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
                child: const Text('Go back!'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isResetEnabled = !_isResetEnabled; 
                  });
                  _savePreferences();
                },
                child: Text(_isResetEnabled ? 'Desactivar reinicio contador': 'Permitir reinicio contador'),
              ),

            ],
          ),
      ),
    );
  }
}