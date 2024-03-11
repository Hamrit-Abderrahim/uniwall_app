import 'package:flutter/material.dart';
import 'package:uniwal_app/core/utils/styles.dart';

class FormFieledComponent extends StatelessWidget {
  final TextEditingController? controller;
  final bool isPassword;
  final FormFieldValidator<String>? validate;
  final Function(String)? onChanged;
  final String? label;
  final Widget? prefix;
  final Widget? suffix;
  final TextInputType? type;
  final bool isClickable = true;
  final int? maxLength;
  final int maxLines;
  final int? minLines;
  final Color fillColor;
  final Function()? onTap;

  final Color textColorDark = Colors.white;
  final Color enableBoderColor;
  final bool enabled;
  final bool readOnly;
  final String? hint;
  final FocusNode? focusNode;
  final String? initial;
  final Function(PointerDownEvent)? onTapOutside;
  const FormFieledComponent(
      {Key? key,
      this.controller,
      this.validate,
      this.onTap,
      this.onChanged,
      this.label,
      this.enableBoderColor = const Color(0xFF6183E4),
      this.prefix,
      this.fillColor = const Color(0xffffffff),
      this.maxLines = 1,
      this.isPassword = false,
      this.suffix,
      this.initial,
      this.type,
      this.onTapOutside,
      this.maxLength,
      this.enabled = true,
      this.minLines,
      this.hint,
      this.readOnly = false,
      this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      focusNode: focusNode,
      onTapOutside: onTapOutside,
      onChanged: onChanged,
      readOnly: readOnly,
      initialValue: initial,
      enabled: enabled,
      style: const TextStyle(fontSize: 16),
      keyboardType: type,
      validator: validate,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enableBoderColor, width: 1.0),
        ),
        errorStyle: const TextStyle(fontSize: 14),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF6183E4), width: 1.0),
        ),
        contentPadding: const EdgeInsets.all(10),
        labelText: label,
        suffixIcon: suffix,
        labelStyle: Styles.style14.copyWith(
          fontWeight: FontWeight.w400,
          color: const Color(0xFFAFAAC2),
        ),
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color(0xFFA0A7B0),
        ),
        hintText: hint,
        prefixIcon: prefix,
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
  }
}
