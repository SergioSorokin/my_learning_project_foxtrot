import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:discounter/atomic/atoms/colors.dart';

class InputFieldBlock extends StatelessWidget {
  final bool autofocus;
  final String? hintText;
  final String? lableText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool readOnly;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  const InputFieldBlock({
    Key? key,
    this.hintText,
    this.lableText,
    this.suffixIcon,
    this.controller,
    this.readOnly = false,
    this.onTap,
    this.validator,
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          const BoxConstraints(minWidth: double.maxFinite, minHeight: 72),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lableText!,
                style: GoogleFonts.roboto(
                  color: Colors.red,
                  fontSize: 12,
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: TextFormField(
                  autofocus: autofocus,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: validator,
                  onTap: onTap,
                  readOnly: readOnly,
                  controller: controller,
                  autocorrect: false,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: GoogleFonts.roboto(
                        color: CustomColors.blackOpacity38, fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: CustomColors.blackOpacity12),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: CustomColors.blackOpacity12),
                    ),
                    suffixIcon: suffixIcon,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
