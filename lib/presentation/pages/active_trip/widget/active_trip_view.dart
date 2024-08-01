import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/active_trip/active_trip_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';

class ActiveTripView extends StatelessWidget {
  const ActiveTripView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<ActiveTripBloc, ActiveTripState>(
      listener: (context, listenerState) {},
      child: BlocBuilder<ActiveTripBloc, ActiveTripState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomIconButton(
                          height: 28,
                          width: 28,
                          icon: 'ios_arrow',
                          iconColor: theme.scaffoldBackgroundColor,
                          onPressed: () {
                            context.go('/main');
                          },
                        ),
                        Text(
                          'trip № 12321312312232',
                          style: theme.textTheme.titleSmall!.copyWith(
                            color: theme.disabledColor,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 6),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(4),
                            ),
                            color: theme.cardColor,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/images/load_box.svg'),
                              const SizedBox(width: 6),
                              Text(
                                'Load damage',
                                style: theme.textTheme.bodySmall!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // ActiveTripData(onPressed: widget.onPressed),
                    // const SizedBox(height: 11),
                    // const ActiveTripInfo(),
                    // const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
