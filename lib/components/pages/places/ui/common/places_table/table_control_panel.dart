import 'package:flutter/material.dart';

class TableControlPanel extends StatefulWidget {
  const TableControlPanel({
    super.key,
    required this.onItemSelected
  });

  final void Function(String) onItemSelected;

  @override
  State<TableControlPanel> createState() => _TableControlPanelState();
}

class _TableControlPanelState extends State<TableControlPanel> {
  String _selectedValue = 'all';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Text('Показать '),
            const SizedBox(width: 10),
            DropdownButton(
              value: _selectedValue,
              items: const [
                DropdownMenuItem(
                  value: 'all',
                  child: Text('все')
                ),
                DropdownMenuItem(
                  value: 'available',
                  child: Text('только свободные')
                ),
                DropdownMenuItem(
                  value: 'owned',
                  child: Text('только занятые')
                ),
                DropdownMenuItem(
                  value: 'blocked',
                  child: Text('только заблокированные')
                )                
              ],
              onChanged: (value) {
                setState(() {
                  widget.onItemSelected(value!);
                  _selectedValue = value;
                });
              }
            )
          ],
        )
      ],
    );
  }
}