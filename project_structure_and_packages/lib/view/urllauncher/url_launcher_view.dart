import 'package:flutter/material.dart';
import 'package:project_structure_and_packages/util/dimensions.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherView extends StatefulWidget {
  const UrlLauncherView({super.key});

  @override
  State<UrlLauncherView> createState() => _UrlLauncherViewState();
}

class _UrlLauncherViewState extends State<UrlLauncherView> {
  bool _hasCallSupport = false;
  Future<void>? _launched;
  String _phone = '911';

  @override
  void initState() {
    super.initState();
    // Check for phone call support.
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    final Uri toLaunch = Uri(scheme: 'https', host: 'www.flutter.dev');
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: Dimensions.NORMAL_MARGIN,
          ),
          ElevatedButton(
            onPressed: _hasCallSupport
                ? () => setState(() {
                      _launched = _makePhoneCall(_phone);
                    })
                : null,
            child: _hasCallSupport
                ? const Text('Call 911')
                : const Text('Calling not supported'),
          ),
          const SizedBox(
            height: Dimensions.NORMAL_MARGIN,
          ),
          ElevatedButton(
            onPressed: () => setState(() {
              _launched = _launchInBrowser(toLaunch);
            }),
            child: const Text('Open Flutter Site'),
          ),
        ],
      ),
    );
  }
}
