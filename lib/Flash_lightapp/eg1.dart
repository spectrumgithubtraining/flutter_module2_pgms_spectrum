import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';

class FlashLightSample2 extends StatefulWidget {
  const FlashLightSample2({Key? key}) : super(key: key);

  @override
  State<FlashLightSample2> createState() => _FlashLightSample2State();
}

class _FlashLightSample2State extends State<FlashLightSample2> {
  bool isTorchAvailable = false;
  bool isTorchOn = false;

  @override
  void initState() {
    super.initState();
    _checkTorchAvailability();
  }

  Future<void> _checkTorchAvailability() async {
    try {
      final available = await TorchLight.isTorchAvailable();
      setState(() {
        isTorchAvailable = available;
      });
    } on Exception catch (_) {
      _showMessage('Could not check if the device has an available torch');
    }
  }

  Future<void> _toggleTorch() async {
    if (isTorchAvailable) {
      try {
        if (isTorchOn) {
          await TorchLight.disableTorch();
        } else {
          await TorchLight.enableTorch();
        }
        setState(() {
          isTorchOn = !isTorchOn;
        });
      } on Exception catch (_) {
        _showMessage('Could not toggle torch');
      }
    } else {
      _showMessage('No torch available.');
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flashlight app"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: ElevatedButton(
                child: Text(
                    isTorchAvailable ? 'Toggle Torch' : 'No Torch Available'),
                onPressed: _toggleTorch,
              ),
            ),
          ),
        ],
      ),
    );
  }
}