import 'package:covid_tracking_app/base/theme/app_colors.dart';
import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoBorderTextField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String text) onChanged;
  final Function(bool focus)? onFocus;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  final bool isPassword;
  final bool? isShowPrefix;
  final bool? hasCurrentInput;
  final bool? enable;
  final FocusNode? focusNode;
  final int maxLine;
  final TextInputType? keyboardType;
  final Color textColor;
  final TextStyle? textStyle;
  final int? maxLength;

  const NoBorderTextField({
    this.keyboardType,
    this.isPassword = false,
    this.textColor = AppColors.gray,
    this.enable = true,
    this.inputFormatters,
    this.focusNode,
    this.onFocus,
    this.hasCurrentInput,
    this.textStyle,
    this.maxLength,
    this.hintText,
    required this.controller,
    required this.onChanged,
    this.maxLine = 1,
    this.isShowPrefix,
  });

  @override
  _NoBorderTextFieldState createState() => _NoBorderTextFieldState();
}

class _NoBorderTextFieldState extends State<NoBorderTextField> {
  late bool hasText;

  @override
  void didUpdateWidget(covariant NoBorderTextField oldWidget) {
    if (widget.isShowPrefix != null) {
      hasText = widget.isShowPrefix!;
      return;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    hasText = widget.controller.text.isNotEmpty;
    super.initState();
  }

  void _showXIcon() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        if (!mounted) return;
        hasText = widget.controller.text.trim().isNotEmpty;
      });
    });
  }

  void _clearText() {
    widget.controller.clear();
    widget.onChanged('');
    setState(() {
      if (!mounted) return;
      hasText = false;
    });
  }

  void _setTextValue(bool value) {
    if (!(widget.hasCurrentInput ?? true)) return;
    if (widget.onFocus != null) {
      widget.onFocus!(value);
    }
    try {
      // if (value) {
      //   oldValue = widget.controller.text.replaceAll(',', '');
      // } else {
      //   oldValue = widget.controller.text.convert8;
      // }
      widget.controller.value = TextEditingValue(
        text: widget.controller.text,
        selection: TextSelection.fromPosition(
          TextPosition(offset: widget.controller.text.length),
        ),
      );
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Focus(
            onFocusChange: _setTextValue,
            child: TextField(
              focusNode: widget.focusNode,
              keyboardType: widget.keyboardType,
              obscureText: widget.isPassword,
              controller: widget.controller,
              enabled: widget.enable,
              style: widget.textStyle ??
                  AppTextStyle.w500(
                    context,
                    size: 22,
                    color: widget.textColor,
                  ),
              maxLines: widget.maxLine,
              onChanged: (v) {
                _showXIcon();
                widget.onChanged(v);
              },
              inputFormatters: [
                ...?widget.inputFormatters,
                LengthLimitingTextInputFormatter(widget.maxLength),
              ],
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                isCollapsed: true,
                labelStyle: AppTextStyle.w500(
                  context,
                  size: 22,
                ),
                hintText: widget.hintText ?? "",
                hintStyle: AppTextStyle.w500(
                  context,
                  color: AppColors.gray,
                  size: 16,
                ),
              ),
            ),
          ),
        ),
        hasText ? GestureDetector(
          onTap: () => _clearText(),
          child: Icon(Icons.clear_rounded),
        ) : SizedBox.shrink(),
        // AnimatedContainer(
        //   duration: const Duration(milliseconds: 300),
        //   height: hasText ? 12 : 0,
        //   width: hasText ? 12 : 0,
        //   child: GestureDetector(
        //     onTap: () => _clearText(),
        //     child: Icon(Icons.clear_rounded),
        //   ),
        // ),
      ],
    );
  }
}
