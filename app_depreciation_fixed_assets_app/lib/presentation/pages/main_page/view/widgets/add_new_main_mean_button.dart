import 'package:flutter/material.dart';

class AddNewMainMeanButton extends StatelessWidget {
  final VoidCallback callback;
  final Icon? icon;

  const AddNewMainMeanButton({Key? key, required this.callback, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        onPressed: callback,
        child: icon ?? const Icon(Icons.add),
      );
}
