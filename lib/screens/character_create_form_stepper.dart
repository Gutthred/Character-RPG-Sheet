import 'package:character_sheet/components/character/character_account_form.dart';
import 'package:character_sheet/components/character/character_skills_scores.dart';
import 'package:character_sheet/components/character/character_stats.dart';
import 'package:character_sheet/models/styles.dart';
import 'package:flutter/material.dart';


class CharacterCreationForm extends StatefulWidget {
  const CharacterCreationForm({Key? key}) : super(key: key);

  @override
  _CharacterCreationFormState createState() => _CharacterCreationFormState();
}

class _CharacterCreationFormState extends State<CharacterCreationForm> {
  int _currentStep = 0;

  List<Step> getStep() => [
        Step(
          state: _currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 0,
          title: const Text('Character'),
          content: const CharacterAccountForm(),
        ),
        Step(
          state: _currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: _currentStep >= 1,
          title: const Text('Stats'),
          content: const CharacterStats(),
        ),
        Step(
          isActive: _currentStep >= 2,
          title: const Text('Traits'),
          content: const CharacterSkillsScores(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.cyan.shade800,
        title: Text(
          'Create your character',
          style: cpAppbarTextFieldStyle(),
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(primary: Colors.cyan.shade800),
        ),
        child: Stepper(
          type: StepperType.horizontal,
          steps: getStep(),
          currentStep: _currentStep,
          onStepTapped: (step) => setState(() => _currentStep = step),
          onStepContinue: () {
            final isLastStep = _currentStep == getStep().length - 1;
            if (isLastStep) {
            } else {
              setState(() => _currentStep += 1);
            }
          },
          onStepCancel: _currentStep == 0 ? null : () => setState(() => _currentStep -= 1),
          controlsBuilder: (context, {onStepContinue, onStepCancel}) {
            final isLastStep = _currentStep == getStep().length - 1;
            return Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      child: Text(
                        isLastStep ? 'CONFIRM' : 'NEXT',
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan.shade800,
                        onPrimary: Colors.white,
                        side: cpButtonBorderColor(),
                        shape: cpButtonBorder(),
                        elevation: 5,
                      ),
                      onPressed: onStepContinue,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  if (_currentStep != 0)
                    Expanded(
                      child: ElevatedButton(
                        child: const Text(
                          'BACK',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan.shade800,
                          onPrimary: Colors.white,
                          side: cpButtonBorderColor(),
                          shape: cpButtonBorder(),
                          elevation: 5,
                        ),
                        onPressed: onStepCancel,
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

