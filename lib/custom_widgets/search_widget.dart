import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchButton extends StatefulWidget {
  final IconData icon;
  final String? hintText;
  final Widget? trailing;
  final double width;
  final double height;

  const SearchButton({
    Key? key,
    required this.icon,
    this.hintText,
    this.trailing,
    this.width = 239,
    this.height = 48,
  }) : super(key: key);

  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(widget.icon),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
              ),
            ),
          ),
          if (widget.trailing != null) widget.trailing!,

          SizedBox(width: 7.w),
        ],

      ),
    );
  }
}
