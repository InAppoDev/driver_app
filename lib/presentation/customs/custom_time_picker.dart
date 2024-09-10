import 'package:flutter/material.dart';

class CustomTimePicker extends StatefulWidget {
  final Function(int hour, int minute, bool isAm) onTimeChanged;
  final DateTime providedDate;

  const CustomTimePicker({
    super.key,
    required this.onTimeChanged,
    required this.providedDate,
  });

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

  FixedExtentScrollController hourController = FixedExtentScrollController();
  FixedExtentScrollController minuteController = FixedExtentScrollController();
  FixedExtentScrollController amPmController = FixedExtentScrollController();

  @override
  void initState() {
    super.initState();
    _initializeAvailableTimes();
  }

  @override
  void didUpdateWidget(CustomTimePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.providedDate != oldWidget.providedDate) {
      _initializeAvailableTimes();
    }
  }
  void _initializeAvailableTimes() {
    final isTodayDate = isToday(widget.providedDate);
    if (isTodayDate) {
      _isAm = now.hour < 12;
      int currentHour = now.hour == 0 ? 12 : (now.hour % 12 == 0 ? 12 : now.hour % 12);
      _selectedHour = currentHour;
      _selectedMinute = now.minute;
      if (_isAm) {
        // AM logic for today
        availableHours = List.generate(12, (index) => index + 1)
            .where((hour) => hour >= currentHour)
            .toList();
        if (_selectedHour == currentHour) {
          availableMinutes = List.generate(60, (index) => index)
              .where((minute) => minute >= now.minute)
              .toList();
        } else {
          availableMinutes = List.generate(60, (index) => index);
        }
        availableAmPm = [true, false];
      } else {
        availableHours = List.generate(12, (index) => index + 1);
        availableMinutes = List.generate(60, (index) => index);
      }
      if(now.hour > 12){
        // PM logic: restrict to current and next hour
        availableHours = List.generate(12, (index) => index + 1)
            .where((hour) => hour >= currentHour)
            .toList();
        if (_selectedHour == currentHour) {
          availableMinutes = List.generate(60, (index) => index)
              .where((minute) => minute >= now.minute)
              .toList();
        } else {
          availableMinutes = List.generate(60, (index) => index);
        }
        availableAmPm = [false];
      }

    } else {
      // Non-today date, show all hours and minutes
      _isAm = true; // Default to AM for non-today dates
      _selectedHour = 12; // Default to 12 AM
      _selectedMinute = 0;
      availableHours = List.generate(12, (index) => index + 1); // All hours from 1 to 12
      availableMinutes = List.generate(60, (index) => index); // All minutes
      availableAmPm = [true, false]; // Both AM and PM
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        hourController.jumpToItem(availableHours.indexOf(_selectedHour));
        minuteController.jumpToItem(availableMinutes.indexOf(_selectedMinute));
        amPmController.jumpToItem(availableAmPm.indexOf(_isAm));
      }
    });
  }

  void _updateAvailableTimes() {
    final currentHour = now.hour == 0 ? 12 : (now.hour % 12 == 0 ? 12 : now.hour % 12);
    final currentMinute = now.minute;

    if (isToday(widget.providedDate)) {
      if (_isAm) {
        // AM logic for today
        availableHours = List.generate(12, (index) => index + 1)
            .where((hour) => hour >= currentHour)
            .toList();
        if (_selectedHour == currentHour) {
          availableMinutes = List.generate(60, (index) => index)
              .where((minute) => minute >= currentMinute)
              .toList();
        } else {
          availableMinutes = List.generate(60, (index) => index);
        }
      } else {
        availableHours = List.generate(12, (index) => index + 1);
        availableMinutes = List.generate(60, (index) => index);
      }
      if(now.hour > 12){
        // PM logic: restrict to current and next hour
        availableHours = List.generate(12, (index) => index + 1)
            .where((hour) => hour >= currentHour)
            .toList();
        if (_selectedHour == currentHour) {
          availableMinutes = List.generate(60, (index) => index)
              .where((minute) => minute >= currentMinute)
              .toList();
        } else {
          availableMinutes = List.generate(60, (index) => index);
        }
      }
    } else {
      availableHours = List.generate(12, (index) => index + 1); // All hours from 1 to 12
      availableMinutes = List.generate(60, (index) => index); // All minutes
    }

    widget.onTimeChanged(_selectedHour, _selectedMinute, _isAm);
  }

  bool isToday(DateTime date) {
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  void updateMinutes() {
    final currentHour = now.hour % 12 == 0 ? 12 : now.hour % 12;
    final currentMinute = now.minute;
    if (isToday(widget.providedDate)) {
      if ((now.hour < 12 && _isAm) || now.hour > 12) {
        if (_selectedHour != currentHour) {
          _selectedMinute = 0;
        } else {
          _selectedMinute = currentMinute;
        }
      }
    }
  }

  void updateToDayPmTimeTime() {
    if (isToday(widget.providedDate)) {
      if (!_isAm) {
        _selectedHour = 12;
        _selectedMinute = 0;
        hourController.jumpToItem(12);
        minuteController.jumpToItem(0);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          top: height * 0.09,
          left: 0,
          right: 0,
          child: Container(
            height: 1.5,
            color: theme.disabledColor.withOpacity(0.5),
          ),
        ),
        Positioned(
          bottom: height * 0.09,
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
                  _updateAvailableTimes();
                  updateMinutes();
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
              controller: amPmController,
              itemCount: availableAmPm.length,
              selectedItem: availableAmPm.indexOf(_isAm),
              onSelectedItemChanged: (index) {
                setState(() {
                  _isAm = availableAmPm[index];
                  _updateAvailableTimes();
                  if (isToday(widget.providedDate) && _isAm) {
                    // If switching back to AM, set to current hour and minutes
                    _selectedHour = now.hour % 12 == 0 ? 0 : now.hour % 12;
                    _selectedMinute = now.minute;
                    _initializeAvailableTimes();
                  }
                  updateToDayPmTimeTime();
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
    required FixedExtentScrollController? controller,
    required int itemCount,
    required int selectedItem,
    required ValueChanged<int> onSelectedItemChanged,
    required IndexedWidgetBuilder itemBuilder,
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
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: itemCount,
          builder: itemBuilder,
        ),
      ),
    );
  }
}
