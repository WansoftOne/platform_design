import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// PlatformFlatButton class.
/// This class provides an easy way to create an simple FlatButton on both platforms.
/// Android[FlatButton] and IOS[CupertinoDialogAction].
class PlatformFlatButton extends StatelessWidget{
  
  final VoidCallback onPressed;
  final Widget child;

  /// Constructor method.
  /// [onPressed] parameter is required.
  /// [child] parameter is required.
  PlatformFlatButton({
    @required this.onPressed,
    @required this.child
  });

  @override
  Widget build(BuildContext context) {
    return (Platform.isIOS) ? _cupertinoDialogAction() : _materialFlatButton();
  }

  /// Create a button instance of [FlatButton]
  /// based on the current [PlatformFlatButton] instance.
  _materialFlatButton() => FlatButton(
    onPressed: this.onPressed,
    child: this.child,
  );

  /// Crrate a button instance of [CupertinoDialogAction] 
  /// based on the current [PlatformFlatButton] instance.
  _cupertinoDialogAction() => CupertinoDialogAction(
    onPressed: this.onPressed,
    child: this.child,
  );
}