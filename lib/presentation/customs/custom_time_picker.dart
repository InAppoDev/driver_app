import 'package:flutter/material.dart';

class CustomTimePicker extends StatefulWidget {
  final Function(int hour, int minute, bool isAm) onTimeChanged;

  const CustomTimePicker({super.key, required this.onTimeChanged});

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  int _selectedHour = 0;
  int _selectedMinute = 0;
  bool _isAm = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Container(
            height: 1.5,
            color: theme.disabledColor.withOpacity(0.5),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 0,
          right: 0,
          child: Container(
            height: 1.5,
            color: theme.disabledColor.withOpacity(0.5),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildPicker(
              itemCount: 12,
              selectedItem: _selectedHour == 0 ? _selectedHour : _selectedHour - 1,
              onSelectedItemChanged: (index) {
                setState(() {
                  _selectedHour = index + 1;
                  widget.onTimeChanged(_selectedHour, _selectedMinute, _isAm);
                });
              },
            ),
            _buildMiddleDivider(),
            _buildPicker(
              itemCount: 60,
              selectedItem: _selectedMinute,
              onSelectedItemChanged: (index) {
                setState(() {
                  _selectedMinute = index;
                  widget.onTimeChanged(_selectedHour, _selectedMinute, _isAm);
                });
              },
            ),
            const SizedBox(width: 35),
            _buildPicker(
              itemCount: 2,
              selectedItem: _isAm ? 0 : 1,
              itemBuilder: (context, index) {
                bool isSelected = _isAm ? index == 0 : index == 1;
                return Center(
                  child: Text(
                    index == 0 ? "AM" : "PM",
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: isSelected
                          ? theme.cardColor
                          : theme.primaryColorDark.withOpacity(0.5),
                    ),
                  ),
                );
              },
              onSelectedItemChanged: (index) {
                setState(() {
                  _isAm = index == 0;
                  widget.onTimeChanged(_selectedHour, _selectedMinute, _isAm);
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddleDivider() {
    return SizedBox(
      width: 30,
      child: Center(
        child: Text(
          ":",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).cardColor,
              ),
        ),
      ),
    );
  }

  Widget _buildPicker({
    required int itemCount,
    required int selectedItem,
    required ValueChanged<int> onSelectedItemChanged,
    IndexedWidgetBuilder? itemBuilder,
  }) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.25,
      width: 50,
      child: ListWheelScrollView.useDelegate(
        itemExtent: 50,
        onSelectedItemChanged: onSelectedItemChanged,
        physics: const FixedExtentScrollPhysics(),
        perspective: 0.005,
        diameterRatio: 1.5,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: itemBuilder ??
              (context, index) {
                return Center(
                  child: Text(
                    index.toString().padLeft(2, '0'),
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: index == selectedItem
                          ? theme.cardColor
                          : theme.primaryColorDark.withOpacity(0.5),
                    ),
                  ),
                );
              },
          childCount: itemCount,
        ),
      ),
    );
  }
}
