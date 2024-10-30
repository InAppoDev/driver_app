import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_list_bloc.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/active_trip_view.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_items_list.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

class TripListView extends StatefulWidget {
  const TripListView({super.key, this.tabPage});

  final int? tabPage;

  @override
  TripListViewState createState() => TripListViewState();
}

class TripListViewState extends State<TripListView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    if (widget.tabPage != null) {
      _tabController.animateTo(widget.tabPage!);
    }

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        final status = TabStatus.values[_tabController.index];
        context
            .read<TripListBloc>()
            .add(TripListEvent.changeTab(status: status));
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<TripListBloc, TripListState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: theme.scaffoldBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                  ),
                  labelColor: theme.scaffoldBackgroundColor,
                  unselectedLabelColor: theme.focusColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerHeight: 0,
                  indicatorWeight: 0,
                  labelStyle:
                      theme.textTheme.titleLarge!.copyWith(fontSize: 14),
                  unselectedLabelStyle:
                      theme.textTheme.titleLarge!.copyWith(fontSize: 10),
                  tabs: [
                    _buildTabWithCount(
                      context: context,
                      name: TabStatus.newTrips.label,
                      isSelected: _tabController.index == 0,
                      count: state.trips.length.toString(),
                    ),
                    _buildSimpleTab(
                      context: context,
                      name: TabStatus.activeTrip.label,
                      isSelected: _tabController.index == 1,
                    ),
                    _buildSimpleTab(
                      context: context,
                      name: TabStatus.tripHistory.label,
                      isSelected: _tabController.index == 2,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    TripItemsList(
                      trips: state.trips,
                      onPressed: (trip) async {
                        final navigateToConfirmTrip =
                        await context.push('/confirmTrip', extra: trip);
                        if (navigateToConfirmTrip as bool && context.mounted) {
                          _tabController.animateTo(1);
                        }
                      },
                    ),
                    const ActiveTripView(),
                    TripItemsList(
                      trips: state.historyTrips,
                      onPressed: (_) {},
                      isHistoryWidget: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTabWithCount({
    required BuildContext context,
    required String name,
    required bool isSelected,
    required String count,
  }) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final double fontSize = width <= 410 ? 10 : 14;
    return Tab(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: theme.textTheme.titleLarge!.copyWith(
                fontSize: fontSize,
                color: isSelected
                    ? theme.scaffoldBackgroundColor
                    : theme.focusColor,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 7.5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                color: isSelected
                    ? theme.scaffoldBackgroundColor
                    : theme.cardColor,
              ),
              child: Text(
                count,
                style: theme.textTheme.titleLarge!.copyWith(
                  fontSize: fontSize,
                  color: isSelected
                      ? theme.focusColor
                      : theme.scaffoldBackgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSimpleTab({
    required BuildContext context,
    required String name,
    required bool isSelected,
  }) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final double fontSize = width <= 410 ? 10 : 12;
    return Tab(
      child: Text(
        name,
        style: theme.textTheme.titleLarge!.copyWith(
          fontSize: fontSize,
          color: isSelected ? theme.scaffoldBackgroundColor : theme.focusColor,
        ),
      ),
    );
  }
}
