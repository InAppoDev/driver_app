import 'package:flutter/cupertino.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomButton(
            label: 'Park',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
