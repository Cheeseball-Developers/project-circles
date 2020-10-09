import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectcircles/application/settings/settings_bloc.dart';
import 'package:projectcircles/domain/core/value_objects.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';

class NameFormPopUp extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) => Center(
              child: Padding(
                padding: const EdgeInsets.all(64.0),
                child: Material(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Theme.of(context).cardColor,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Form(
                            key: _formKey,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Name',
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    .copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          .color
                                          .withOpacity(0.25),
                                    ),
                              ),
                              onSaved: (String name) {
                                context.bloc<SettingsBloc>().add(
                                      SettingsEvent.nameChanged(
                                        Name(name),
                                      ),
                                    );
                                ExtendedNavigator.of(context).pop();
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              bottom: 8.0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyTextButton(
                                  type: ButtonType.primary,
                                  text: 'Save',
                                  onTap: () => _formKey.currentState.save())
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ));
  }
}
