import 'package:amazon/constants/constants.dart';
import 'package:amazon/widgets/custom_btn.dart';
import 'package:amazon/widgets/languageContainer.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  int? _selectedIndex;
  final List<LanguageContainer> _choiceChipsList = [
    const LanguageContainer(title: "English", color: GlobalVariables.lightBlue),
    const LanguageContainer(title: "हिंदी", color: GlobalVariables.lightGreen),
    const LanguageContainer(title: "मराठी", color: GlobalVariables.lightGrey),
    const LanguageContainer(title: "বাংলা", color: GlobalVariables.lightOrange),
    const LanguageContainer(title: "தமிழ்", color: GlobalVariables.lightPink),
    const LanguageContainer(
        title: "తెలుగు", color: GlobalVariables.lightPurple),
    const LanguageContainer(
        title: "മലയാളം", color: GlobalVariables.lightYellow),
    const LanguageContainer(
        title: "ગુજરાતી", color: GlobalVariables.lightGreen),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/language.png",
          scale: 1.4,
        ),
        title: const Text(
          "Choose your Language",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            // color: Colors.amber,
            height: 400,
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: choiceChips(),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              child: AmazonButton(onPressed: () {}))
        ],
      ),
    );
  }

  List<Widget> choiceChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _choiceChipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
        child: ChoiceChip(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 25, bottom: 25),
          label: Text(_choiceChipsList[i].title),
          labelStyle: const TextStyle(color: Colors.black),
          backgroundColor: _choiceChipsList[i].color,
          selected: _selectedIndex == i,
          selectedColor: const Color.fromARGB(255, 104, 100, 100),
          onSelected: (bool value) {
            setState(() {
              _selectedIndex = i;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}
