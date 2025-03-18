import 'package:flutter/material.dart';
import 'package:muhimat_app/constants.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.hintTxt = '',
    this.maxLines = 1,
    this.onSaved,
    this.onChange,
    this.prefixIcon,
  });
  final String hintTxt;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChange;
  final IconData? prefixIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChange,
      onSaved: widget.onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this field is required';
        }
        return null;
      },
      cursorColor: kPrimaryColor,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        prefixIcon: Icon(widget.prefixIcon),
        hintText: widget.hintTxt,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: color ?? Colors.white, width: 2),
    );
  }
}
