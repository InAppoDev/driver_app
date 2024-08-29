import 'package:flutter/material.dart';

class CustomTimePicker extends StatefulWidget {
  final Function(int hour, int minute, bool isAm) onTimeChanged;
  final DateTime providedDate;

  const CustomTimePicker({super.key, required this.onTimeChanged, required this.providedDate});

  @override
  State<CustomTimePicker> createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  int _selectedHour = 0;
  int _selectedMinute = 0;
  bool _isAm = true;

  DateTime now = DateTime.now();
  List<int> availableHours = [];
  List<int> availableMinutes = [];
  List<bool> availableAmPm = [true, false]; // AM, PM

  late FixedExtentScrollController hourController;
  late FixedExtentScrollController minuteController;

  @override
  void initState() {
    super.initState();
    hourController = FixedExtentScrollController(
        initialItem: availableHours.indexOf(_selectedHour));
    minuteController = FixedExtentScrollController(
        initialItem: availableMinutes.indexOf(_selectedMinute));
    _initializeAvailableTimes();
  }

  @override
  void didUpdateWidget(CustomTimePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.providedDate != oldWidget.providedDate) {
      _initializeAvailableTimes();
      _scrollToTop();
    }
  }

  void _initializeAvailableTimes() {
    if (isToday(widget.providedDate)) {
      int currentHour = now.hour % 12;
      _selectedHour = currentHour;
      _selectedMinute = now.minute;
      _isAm = now.hour < 12;

      availableHours = List.generate(12, (index) => index)
          .where((hour) => hour >= currentHour)
          .toList();

      availableMinutes = List.generate(60, (index) => index)
          .where((minute) => minute >= _selectedMinute)
          .toList();
    } else {
      _selectedHour = 0;
      _selectedMinute = 0;
      _isAm = true;
      availableHours = List.generate(12, (index) => index);
      availableMinutes = List.generate(60, (index) => index);
    }

    hourController.jumpToItem(availableHours.indexOf(_selectedHour));
    minuteController.jumpToItem(availableMinutes.indexOf(_selectedMinute));
  }

  bool isToday(DateTime date) {
    return date.year == now.year && date.month == now.month && date.day == now.day;
  }

  void _updateAvailableTimes() {
    if (isToday(widget.providedDate)) {
      final currentHour = now.hour % 12;
      final currentMinute = now.minute;

      if (_isAm) {
        availableHours = List.generate(12, (index) => index)
            .where((hour) => hour >= currentHour)
            .toList();
        availableMinutes = List.generate(60, (index) => index)
            .where((minute) => minute >= currentMinute)
            .toList();
      } else {
        availableHours = List.generate(12, (index) => index);
        availableMinutes = List.generate(60, (index) => index);
      }

      _selectedHour = availableHours.first;
      _selectedMinute = availableMinutes.first;
    } else {
      availableHours = List.generate(12, (index) => index);
      availableMinutes = List.generate(60, (index) => index);
      availableAmPm = [true, false]; // AM and PM

      _selectedHour = availableHours.first;
      _selectedMinute = availableMinutes.first;
    }

    // Scroll to the first items in the lists
    hourController.jumpToItem(availableHours.indexOf(_selectedHour));
    minuteController.jumpToItem(availableMinutes.indexOf(_selectedMinute));

    // Notify the parent widget about the change
    widget.onTimeChanged(_selectedHour, _selectedMinute, _isAm);
  }

  void _scrollToTop() {
    hourController.jumpToItem(availableHours.indexOf(_selectedHour));
    minuteController.jumpToItem(availableMinutes.indexOf(_selectedMinute));
  }

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
              controller: hourController,
              itemCount: availableHours.length,
              selectedItem: availableHours.indexOf(_selectedHour),
              onSelectedItemChanged: (index) {
                setState(() {
                  _selectedHour = availableHours[index];
                  widget.onTimeChanged(_selectedHour, _selectedMinute, _isAm);
                });
              },
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    availableHours[index].toString().padLeft(2, '0'),
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: availableHours[index] == _selectedHour
                          ? theme.cardColor
                          : theme.primaryColorDark.withOpacity(0.5),
                    ),
                  ),
                );
              },
            ),
            _buildMiddleDivider(),
            _buildPicker(
              controller: minuteController,
              itemCount: availableMinutes.length,
              selectedItem: availableMinutes.indexOf(_selectedMinute),
              onSelectedItemChanged: (index) {
                setState(() {
                  _selectedMinute = availableMinutes[index];
                  widget.onTimeChanged(_selectedHour, _selectedMinute, _isAm);
                });
              },
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    availableMinutes[index].toString().padLeft(2, '0'),
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: availableMinutes[index] == _selectedMinute
                          ? theme.cardColor
                          : theme.primaryColorDark.withOpacity(0.5),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(width: 35),
            _buildPicker(
              itemCount: availableAmPm.length,
              selectedItem: availableAmPm.indexOf(_isAm),
              onSelectedItemChanged: (index) {
                setState(() {
                  _isAm = availableAmPm[index];
                  _updateAvailableTimes();
                });
              },
              itemBuilder: (context, index) {
                bool isSelected = availableAmPm[index];
                return Center(
                  child: Text(
                    isSelected ? "AM" : "PM",
                    style: theme.textTheme.headlineMedium!.copyWith(
                      color: isSelected == _isAm
                          ? theme.cardColor
                          : theme.primaryColorDark.withOpacity(0.5),
                    ),
                  ),
                );
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
    required IndexedWidgetBuilder itemBuilder,
    FixedExtentScrollController? controller,
  }) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.25,
      width: 50,
      child: ListWheelScrollView.useDelegate(
        controller: controller,
        itemExtent: 50,
        onSelectedItemChanged: onSelectedItemChanged,
        physics: const FixedExtentScrollPhysics(),
        perspective: 0.005,
        diameterRatio: 1.5,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: itemBuilder,
          childCount: itemCount,
        ),
      ),
    );
  }
}
