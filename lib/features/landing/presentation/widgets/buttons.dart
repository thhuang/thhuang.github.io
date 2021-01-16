import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;

  const ImageButton({
    Key key,
    this.child,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      constraints: BoxConstraints(minWidth: 10.0, minHeight: 10.0),
      child: child,
      onPressed: onPressed,
    );
  }
}

class RoundedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final void Function() onPressed;

  const RoundedButton({
    Key key,
    this.child,
    @required this.onPressed,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: child,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(color: color, width: 1.2),
      ),
      hoverColor: Colors.white12,
    );
  }
}
