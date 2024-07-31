import 'package:flutter/cupertino.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents(BuildContext context) {
  return [
    OnboardingContents(
      title: context.localizations.trackYourWorkAndGetTheResult,
      image: "assets/images/logo.png",
      desc: context
          .localizations.rememberToKeepTrackOfYourProfessionalAccomplishments,
    ),
    OnboardingContents(
      title: context.localizations.stayOrganizedWithTeam,
      image: "assets/images/logo.png",
      desc: context.localizations
          .butUnderstandingTheContributionsOurColleaguesMakeToOurTeamsAndCompanies,
    ),
    OnboardingContents(
      title: context.localizations.getNotifiedWhenWorkHappens,
      image: "assets/images/logo.png",
      desc: context.localizations
          .takeControlOfNotificationsCollaborateLiveOrOnYourOwnTime,
    ),
  ];
}
