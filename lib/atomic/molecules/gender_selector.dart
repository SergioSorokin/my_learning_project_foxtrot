import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:discounter/atomic/atoms/gender_check_box.dart';
import 'package:discounter/generated/l10n.dart';

class GenderSelector extends StatefulWidget {
  final bool showMessage;
  final Genders? groupValue;
  final void Function(Genders?) onTap;
  final String? Function(Object?) validator;
  const GenderSelector(
      {Key? key,
      required this.showMessage,
      this.groupValue,
      required this.onTap,
      required this.validator})
      : super(key: key);

  @override
  _GenderSelectorState createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  Genders? localGroupValue;
  String? errorMessage;
  @override
  void initState() {
    localGroupValue = widget.groupValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      initialValue: localGroupValue,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      builder: (formState) {
        return ConstrainedBox(
          constraints:
              const BoxConstraints(minWidth: double.maxFinite, minHeight: 72),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      S.of(context).gender,
                      style: GoogleFonts.roboto(
                        color: Colors.red,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GenderCheckBox(
                            title: S.of(context).male,
                            value: Genders.man,
                            groupValue: localGroupValue,
                            onTap: (gender) {
                              localGroupValue = gender;
                              formState.didChange(gender);
                              formState.validate();
                              widget.onTap(gender);
                              setState(() {});
                            }),
                      ),
                      Expanded(
                        child: GenderCheckBox(
                            title: S.of(context).female,
                            value: Genders.woman,
                            groupValue: localGroupValue,
                            onTap: (gender) {
                              localGroupValue = gender;
                              formState.didChange(gender);
                              formState.validate();
                              widget.onTap(gender);
                              setState(() {});
                            }),
                      ),
                    ],
                  ),
                  if (formState.hasError)
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        formState.errorText!,
                        style: TextStyle(
                            color: Theme.of(context).errorColor, fontSize: 12),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
