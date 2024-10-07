import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web_pushnotifications/utils/responsive_view.dart';

class InputTextField extends StatefulWidget {
  const InputTextField({
    Key? key,
    this.textInputFormatter,
    this.onChanged,
    this.validator,
    this.controller,
    this.hintText,
    this.labelText,
    this.obscureText,
    this.onTap,
    this.readOnly = false,
    this.maxLine,
    this.keyBoardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.words,
    this.suffixIcon,
    this.initialValue,
    this.textInputAction = TextInputAction.next,
    this.height,
    this.mobileBorderColor = const Color(0xff809298),
    this.style,
    this.maxLength = 500,
    this.inputDecoration,
    this.prefixIcon,
    this.autoValidateMode = AutovalidateMode.disabled,
  }) : super(key: key);

  final TextEditingController? controller;
  final int maxLength;
  final String? Function(String?)? validator;
  final String? hintText;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? textInputFormatter;
  final String? labelText;
  final String? initialValue;
  final Function()? onTap;
  final bool readOnly;
  final int? maxLine;
  final TextInputType keyBoardType;
  final TextCapitalization textCapitalization;
  final IconButton? suffixIcon;
  final IconButton? prefixIcon;
  final bool? obscureText;
  final TextInputAction textInputAction;
  final double? height;
  final Color mobileBorderColor;
  final TextStyle? style;
  final InputDecoration? inputDecoration;
  final AutovalidateMode? autoValidateMode;

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextFormField(
        autovalidateMode: widget.autoValidateMode,
        maxLength: widget.maxLength,
        controller: widget.controller,
        focusNode: focusNode,
        keyboardType: widget.keyBoardType,
        cursorWidth: 1.0,
        onChanged: widget.onChanged,
        inputFormatters: widget.textInputFormatter,
        textInputAction: widget.textInputAction,
        readOnly: widget.readOnly,
        maxLines: widget.maxLine,
        textAlignVertical: TextAlignVertical.center,
        style: widget.style,
        cursorColor: Theme.of(context).dividerColor,
        validator: widget.validator,
        onTap: widget.onTap,
        obscureText: widget.obscureText ?? false,
        textCapitalization: widget.textCapitalization,
        decoration: widget.inputDecoration ??
            InputDecoration(
              counterText: '',
              // contentPadding:Edge,
              isDense: true,
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon,
              labelText: widget.labelText,
              // labelStyle: Theme.of(context).textThemeopyWith(
              //       fontSize: 12,
              //       color: const Color(0xff245161),
              //     ),
              filled: !Responsive.isMobile(context) ? true : false,
              hintText: widget.hintText,
              fillColor: const Color(0xffF8F8F8),
              focusedErrorBorder: Responsive.isMobile(context)
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.mobileBorderColor, width: 1.5))
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(36),
                      borderSide: BorderSide.none),
              errorBorder: Responsive.isMobile(context)
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.mobileBorderColor, width: 1.5))
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(36),
                      borderSide: BorderSide.none),
              // hintStyle: Theme.of(context).textTheme.subtitle1,
              enabledBorder: Responsive.isMobile(context)
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.mobileBorderColor, width: 1.5))
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(36),
                      borderSide: BorderSide.none),
              focusedBorder: Responsive.isMobile(context)
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: widget.mobileBorderColor, width: 1.5))
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(36),
                      borderSide: BorderSide.none),
            ),
      ),
    );
  }
}
