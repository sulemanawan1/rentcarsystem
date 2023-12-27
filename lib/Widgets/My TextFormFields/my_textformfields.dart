import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentcarsystem/colors.dart';
import 'package:rentcarsystem/colors.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final int? maxLength;
  final EdgeInsetsGeometry? padding;
  final bool? fill;
  final bool? readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? contentPadding;
  final double? fontSize;
  final int? maxLines;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final Color? textColor;
  final Color? fillColor;
  final TextInputType? textInputType;

  final String? Function(String?)? validator;
  final void Function()? onTap;
  const MyTextFormField({
    super.key,
    this.maxLines,
    this.textAlign,
    this.padding,
    this.readOnly,
    this.textColor,
    this.textInputType,
    this.contentPadding,
    this.prefixIcon,
    this.suffixIcon,
    this.fontWeight,
    this.fill,
    this.fontSize,
    this.onTap,
    this.width,
    this.height,
    this.maxLength,
    this.controller,
    this.fillColor,
    this.validator,
    required this.hintText,
    this.labelTextColor,
    this.hintTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 23),
      child: SizedBox(
        width: width ?? double.infinity,
        // height: height ?? 43.w,
        child: TextFormField(
          style: GoogleFonts.ubuntu(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              letterSpacing: 0.05,
              color: textColor),
          keyboardType: textInputType,
          textAlign: textAlign ?? TextAlign.start,
          onTap: onTap,
          validator: validator,
          maxLines: maxLines ?? 1,
          controller: controller,
          maxLength: maxLength,
          cursorColor: primaryColor,
          readOnly: readOnly ?? false,
          decoration: InputDecoration(
            errorStyle: GoogleFonts.ubuntu(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.red, width: 1.5),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primaryColor, width: 1.5),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding:
                contentPadding ?? const EdgeInsets.fromLTRB(25, 13, 0, 13),
            filled: fill ?? true,
            labelStyle: GoogleFonts.ubuntu(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: labelTextColor ?? const Color(0xff555555)),
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              color: hintTextColor ?? const Color(0xff555555),
            ),
            hintText: hintText,
            fillColor: fillColor ?? Color.fromRGBO(238, 238, 238, 1),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primaryColor, width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:
                  const BorderSide(color: Color(0xffEEEEEE), width: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
