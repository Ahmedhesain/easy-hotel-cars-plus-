import 'package:easy_hotel/app/components/text_widget.dart';
import 'package:easy_hotel/app/core/values/app_colors.dart';
import 'package:easy_hotel/app/core/values/app_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class DropDownWidget extends StatelessWidget {

  final List<DropdownMenuItem<dynamic>>? items;
  final String? hint;
  final dynamic value;
  final ValueChanged<dynamic>? onChanged;
  final double? rightPadding;
  final double? leftPadding;
  final double? topPadding;
  final bool isDense;
  final bool expanded;
  final bool hideErrorText;
  final String? Function(dynamic)? validator;

  const DropDownWidget({
    Key? key,
    this.hint,
    this.onChanged,
    this.value,
    this.leftPadding,
    this.rightPadding,
    this.topPadding,
    this.items,
    this.validator,
    this.isDense = false,
    this.expanded = false,
    this.hideErrorText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppConstants.radius/2),
      borderSide: BorderSide(color: AppColors.fieldBorderColor),
    );
    final decoration = InputDecoration(
      border: border,
      isDense: isDense,
      errorStyle: hideErrorText?TextStyle(height: 0,color: Colors.transparent):null,
      disabledBorder: border,
      enabledBorder: border,
      fillColor: Colors.white,
      focusedBorder: border,
      contentPadding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
    );
    return Padding(
      padding: EdgeInsets.only(top: topPadding ?? 0, right: rightPadding ?? 0, left: leftPadding ?? 0),
      child: DropdownButtonFormField<dynamic>(
        value: value,
        validator: validator,
        decoration: decoration,
        isDense: true,
        hint: TextWidget(hint??""),
        icon: Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Theme.of(context).primaryColor,
        ),
        elevation: 16,
        style: TextStyle(color: AppColors.text, fontSize: 18.sp),
        onChanged: onChanged,
        isExpanded: expanded,
        items: items,
      ),
    );
  }
}
