import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_button_layout.dart';
import 'package:projectcircles/presentation/core/widgets/layouts/dialog_layout.dart';

class NameFormPopUp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => Center(
              child: Padding(
                padding: const EdgeInsets.all(64.0),
                child: DialogLayout(

                    dialogType: DialogType.withButtons,
                    dialogButtonType: DialogButtonType.singleButton,
                    primaryButtonText: 'Save',
                    primaryOnTap: () => _formKey.currentState.save(),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Form(
                            key: _formKey,
                            child: TextFormField(
                              autofocus: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Name',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .color
                                          .withOpacity(0.25),
                                    ),
                              ),
                              onSaved: (String name) {
                                context.read<SettingsBloc>().add(
                                      SettingsEvent.nameChanged(
                                        Name(name),
                                      ),
                                    );
                                ExtendedNavigator.of(context).pop();
                              },
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ));
  }
}
