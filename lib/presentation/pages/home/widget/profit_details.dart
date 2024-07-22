import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_details_widget.dart';

class ProfitDetails extends StatelessWidget {
  const ProfitDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Column(
              children: [
                Text(
                  'Profit Details',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Sales & Revenue',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Wrap(
            children: [
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.people,
                amount: '56.4',
                text: 'Customers',
                showM: false,
                showDollar: false,
              ),
              ProfitDetailsWidget(
                isSelected: true,
                icon: Icons.credit_card,
                amount: '320',
                text: 'Total Sales',
                showM: false,
                showDollar: true,
              ),
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.pie_chart_outline,
                amount: '45.6',
                text: 'Revenue',
                showM: true,
                showDollar: true,
              ),
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.people,
                amount: '56.4',
                text: 'Customers',
                showM: false,
                showDollar: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
