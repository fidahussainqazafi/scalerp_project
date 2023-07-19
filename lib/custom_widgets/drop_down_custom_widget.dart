import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scalerp/conts/const.dart';

class DropDownField extends StatefulWidget {
  final String? text1;
  final Icon? icon;
  final String? text2;
  final TextStyle? textStyle;
  final double width;
  final double height;
  final List<String>? dropdownItems;
  final String? selectedDropdownItem;
  final String? dropdownHintText;

  const DropDownField({
    Key? key,
    this.text1,
    this.icon,
    this.text2,
    this.width = 342,
    this.height = 50,
    this.dropdownItems,
    this.selectedDropdownItem,
    this.dropdownHintText,
    this.textStyle,
  }) : super(key: key);

  @override
  State<DropDownField> createState() => _DropDownFieldState();
}

class _DropDownFieldState extends State<DropDownField> {
  String? valueChoose;
  List<String> listItems = ["item1", "item2", "item3"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                if (widget.icon != null) widget.icon!,
                Text(widget.text1 !, style: tittleTextStyle()),
              ],
            ),
          ),
          if (widget.text2 != null)
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Text(widget.text2!, style: dTextStyle()),
            ),
          if (widget.dropdownItems != null)
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: DropdownButton<String>(
                underline: Container(),
                hint: widget.dropdownHintText != null ? Text(widget.dropdownHintText!) : null,
                icon: Icon(Icons.arrow_drop_down),
                isExpanded: true,
                iconSize: 30,
                style: TextStyle(color: Colors.black),
                dropdownColor: Colors.grey,
                value: valueChoose,
                onChanged: (newValue) {
                  setState(() {
                    valueChoose = newValue;
                  });
                },
                items: listItems.map((valueItem) {
                  return DropdownMenuItem<String>(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
