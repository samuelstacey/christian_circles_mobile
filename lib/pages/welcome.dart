import 'package:flutter/material.dart';
import 'package:flutter_azure_b2c/B2CConfiguration.dart';
import 'package:flutter_azure_b2c/B2COperationResult.dart';
import 'package:flutter_azure_b2c/flutter_azure_b2c.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with TickerProviderStateMixin {
  String _retdata = "";
  List<String>? _subjects;
  B2CConfiguration? _configuration;

  @override
  void initState() {
    super.initState();
    // It is possible to register callbacks in order to handle return values
    // from asynchronous calls to the plugin
    AzureB2C.registerCallback(B2COperationSource.INIT, (result) async {
      if (result.reason == B2COperationState.SUCCESS) {
        _configuration = await AzureB2C.getConfiguration();
      }
    });

    // Important: Remember to handle redirect states (if you want to support
    // the web platform with redirect method) and init the AzureB2C plugin
    // before the material app starts.
    AzureB2C.handleRedirectFuture()
        .then((_) => AzureB2C.init("b2c_config_template"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Christian Circles'),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text(
                "To Log in or join, click here:",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () async {
                    // you can just perform calls to the AzureB2C plugin to
                    // handle the B2C protocol (e.g. acquire, refresh tokens
                    // or sign out).
                    var data = await AzureB2C.policyTriggerInteractive(
                        _configuration!.defaultAuthority.policyName,
                        _configuration!.defaultScopes!,
                        null);
                    setState(() {
                      _retdata = data;
                    });
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Text("LogIn")),
            ],
          ),
          Row(
            children: [Text(_retdata)],
          ),
        ],
      )),
    );
  }
}
