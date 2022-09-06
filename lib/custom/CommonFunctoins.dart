import 'dart:io';
import 'package:active_flutter_delivery_app/helpers/shared_value_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonFunctions{
  BuildContext context;

  CommonFunctions(this.context);

  appExitDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            content: Text('Do you want to close the app?'),
            actions: [
              FlatButton(
                  onPressed: () {
                    Platform.isAndroid ? SystemNavigator.pop() : exit(0);
                  },
                  child: Text('Yes')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('No')),
            ],
          ),
        );
  }
}