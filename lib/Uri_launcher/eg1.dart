import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherSample extends StatefulWidget {
  const UrlLauncherSample({super.key});

  @override
  State<UrlLauncherSample> createState() => _UrlLauncherSampleState();
}

class _UrlLauncherSampleState extends State<UrlLauncherSample> {
  openMapApp() async {
    const String lat = "9.9640985";
    const String lng = "76.2833322";
    const String mapUrl = "geo:$lat,$lng";
    await launchUrl(Uri.parse(mapUrl));
  }

  openSmsApp() async {
    String telephoneNumber = '8129625023';
    String telephoneUrl = "sms:$telephoneNumber";
    await launchUrl(Uri.parse(telephoneUrl));
  }

  openGmailApp() async {
    String email = 'akashvs64731@gmail.com';
    String subject = 'This is a test email';
    String body = 'This is a test email body';
    String emailUrl = "mailto:$email?subject=$subject&body=$body";
    await launchUrl(Uri.parse(emailUrl));
  }

  showWebpage() async {
    var url = "https://blog.logrocket.com";
    await launchUrl(Uri.parse(url));
  }

  openPhoneAPP() async {
    String telephoneNumber = '+2347012345678';
    String telephoneUrl = "tel:$telephoneNumber";
    await launchUrl(Uri.parse(telephoneUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    showWebpage();
                  });
                },
                child: const Text("Show webpage")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    openPhoneAPP();
                  });
                },
                child: const Text("Phone")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    openGmailApp();
                  });
                },
                child: const Text("Gmail")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    openSmsApp();
                  });
                },
                child: const Text("sms")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    openMapApp();
                  });
                },
                child: const Text("map"))
          ],
        ),
      ),
    );
  }
}