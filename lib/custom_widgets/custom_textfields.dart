import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final IconData prefixIcon;
  final String hintText;
  final bool obscureText;
  final double height;
  final double width;

  const CustomTextField({
    required this.prefixIcon,
    required this.hintText,
    required this.obscureText,
    required this.height,
    required this.width,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: TextFormField(
        obscureText: widget.obscureText && !_isPasswordVisible,
        style: const TextStyle(color: Color(0xff868889)),
        decoration: InputDecoration(

          prefixIcon: Icon(widget.prefixIcon, color: const Color(0xff868889)),
          suffixIcon: widget.obscureText
              ? IconButton(
            icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: const Color(0xff868889),
            ),
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          )
              : null,
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: Color(0xff868889)),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
