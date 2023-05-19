import 'package:flutter/material.dart';

class LoanForm extends StatelessWidget {
  const LoanForm({Key? key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

enum SingingCharacter { male, female }

enum Married { yes, no }

enum Education { yes, no }

enum self_Employed { yes, no }

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.male;
  Married? _character1 = Married.yes;
  Education? _character2 = Education.yes;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index <= 0) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: <Step>[
        Step(
            title: const Text('Gender'),
            content: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: const Text('Male'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.male,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Female'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.female,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ],
                ))),
        Step(
            title: const Text('Marrital'),
            content: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: const Text('Married'),
                      leading: Radio<Married>(
                        value: Married.yes,
                        groupValue: _character1,
                        onChanged: (Married? value) {
                          setState(() {
                            _character1 = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('UnMarried'),
                      leading: Radio<Married>(
                        value: Married.no,
                        groupValue: _character1,
                        onChanged: (Married? value) {
                          setState(() {
                            _character1 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ))),
        Step(
          title: const Text('Dependents'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(), labelText: "Dependents"),
                ),
              ],
            ),
          ),
        ),
        Step(
          title: const Text('Education'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Graduate'),
                  leading: Radio<Education>(
                    value: Education.yes,
                    groupValue: _character2,
                    onChanged: (Education? value) {
                      setState(() {
                        _character2 = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Not Graduate'),
                  leading: Radio<Married>(
                    value: Married.no,
                    groupValue: _character1,
                    onChanged: (Married? value) {
                      setState(() {
                        _character1 = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Step(
          title: const Text('Self Employed'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Yes'),
                  leading: Radio<Married>(
                    value: Married.yes,
                    groupValue: _character1,
                    onChanged: (Married? value) {
                      setState(
                        () {
                          _character1 = value;
                        },
                      );
                    },
                  ),
                ),
                ListTile(
                  title: const Text('No'),
                  leading: Radio<Married>(
                    value: Married.no,
                    groupValue: _character1,
                    onChanged: (Married? value) {
                      setState(() {
                        _character1 = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
