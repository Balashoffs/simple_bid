import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({super.key, this.currentState = 'Создано'});

  final String currentState;

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  final TextEditingController colorController = TextEditingController();
  StateLabel? selectedColor;


  @override
  void initState() {
    selectedColor = StateLabel.values.firstWhere((element) => element.label == widget.currentState,);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<StateLabel>(
      initialSelection: selectedColor,
      controller: colorController,
      requestFocusOnTap: true,
      inputDecorationTheme: InputDecorationTheme(fillColor: selectedColor?.color.withAlpha(125)),
      label: const Text('Статус заявки'),
      onSelected: (StateLabel? state) {
        setState(() {
          selectedColor = state;
        });
      },
      dropdownMenuEntries:
      StateLabel.values.map<DropdownMenuEntry<StateLabel>>((StateLabel state) {
        return DropdownMenuEntry<StateLabel>(
          value: state,
          label: state.label,
          enabled: state.color != 'Grey',
          style: MenuItemButton.styleFrom(
            foregroundColor: state.color,
          ),
        );
      }).toList(),
    );
  }
}

enum StateLabel {
  init('Создано', Colors.grey),
  warn('Проверка', Colors.pink),
  closed('Закрыто', Colors.green),
  inWork('В работе', Colors.orange);

  const StateLabel(this.label, this.color);

  final String label;
  final Color color;
}
