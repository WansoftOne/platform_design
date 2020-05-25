import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// PlatformAlertDialog class.
/// This class provides an easy way to create an AlertDialog on both platforms
/// (Android and IOS)
class PlatformAlertDialog extends StatelessWidget{
  
  final Text title;
  final Text message;
  final List<Widget> actions;

  /// Constructor method.
  /// [title] parameter is required.
  /// [message] parameter is required.
  /// [actions] parameter is optional, usually it contains button widgets
  PlatformAlertDialog({
    @required this.title,
    @required this.message,
    this.actions
  });

  @override
  Widget build(BuildContext context) {
    return (Platform.isIOS) ? _cupertinoDialog(): _materialDialog();
  }

  /// returns a [AlertDialog] instance
  /// based on the parameters of the current [PlatformAlertDialog] instance.
  /// This method is used with Android platform.
  _materialDialog() => AlertDialog(
    title: title,
    content: SingleChildScrollView(
      child: message
    ),
    actions: actions,
  );
  
  /// returns [CupertinoAlertDialog] instance
  /// based on the parameter of the current [PlatformAlertDialog] instance.
  /// This mehtos is used with IOS platform.
  _cupertinoDialog() => CupertinoAlertDialog(
    title: title,
    content: SingleChildScrollView(
      child: message,
    ),
    actions: actions
  );
}