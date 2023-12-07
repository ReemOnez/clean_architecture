import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode? textFocusNode;
  final bool enabled;
  final String? hint;
  final Widget? suffixIcon;
  final Color? color;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final bool? autofocus;
  final int? maxLines;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? enableInteractiveSelection;
  final bool? shouldShowLabel;
  final String? label;
  final TextStyle? labelTextStyle,hintStyle;
  final TextCapitalization? textCapitalization;
  final int? maxCounterNumber,errorMaxLines;
  final String? counterText;
  final Color? counterTextColor;

  const CustomTextField({
    Key? key,
    required this.textEditingController,
    this.textFocusNode,
    this.hint,
    this.suffixIcon,
    this.onTap,
    this.color,
    this.onChanged,
    required this.enabled,
    this.autofocus,
    this.maxLines,
    this.validator,
    this.keyboardType,
    this.enableInteractiveSelection,
    required this.shouldShowLabel,
    this.label,
    this.labelTextStyle,
    this.textCapitalization,
    this.maxCounterNumber,
    this.counterText,
    this.counterTextColor,
    this.hintStyle,
    this.errorMaxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if ((shouldShowLabel ?? false) && label != null)
          Text(label!, style: labelTextStyle ?? Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.surface)),
        if ((shouldShowLabel ?? false) && label != null) SizedBox(height: 6.h),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator ??
                  (value) {
                if (value!.trim().isEmpty) {
                  return 'The field is Empty';
                }
                return null;
              },
          keyboardType: keyboardType,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          enableInteractiveSelection: enableInteractiveSelection,
          controller: textEditingController,
          focusNode: textFocusNode,
          textAlignVertical: TextAlignVertical.center,
          textAlign: TextAlign.start,
          cursorColor: Theme.of(context).colorScheme.secondary,
          readOnly: !enabled,
          maxLines: maxLines ?? 1,
          autofocus: autofocus ?? false,
          onTap: () {
            if (textEditingController.selection == TextSelection.fromPosition(TextPosition(offset: textEditingController.text.length - 1))) {
              textEditingController.selection = TextSelection.fromPosition(TextPosition(offset: textEditingController.text.length));
            }
            if (onTap != null) {
              onTap!();
            }
          },
          onChanged: onChanged,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: color ?? Theme.of(context).colorScheme.primary,
            overflow: TextOverflow.ellipsis,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: hintStyle ?? Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).hintColor),
            fillColor: Theme.of(context).colorScheme.surfaceVariant,
            filled: true,
            isDense: true,
            errorStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.error),
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 14.h),
            focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.r), borderSide: BorderSide(color: Theme.of(context).colorScheme.error, width: 2.h)),
            errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.r), borderSide: BorderSide(color: Theme.of(context).colorScheme.error, width: 2.h)),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.r), borderSide: BorderSide(color: Theme.of(context).colorScheme.surfaceVariant, width: 2.h)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6.r), borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 2.h)),
            suffixIcon: suffixIcon,
            counterText: counterText,
            counterStyle: TextStyle(color: counterTextColor ?? Theme.of(context).colorScheme.outline),
            errorMaxLines: errorMaxLines,
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(maxCounterNumber),
          ],
        ),
      ],
    );
  }
}
