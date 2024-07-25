enum TabStatus {
  newTrips,
  activeTrip,
  tripHistory,
}

extension TabStatusExtention on TabStatus {
  String get label {
    switch (this) {
      case TabStatus.newTrips:
        return "NEW TRIPS";
      case TabStatus.activeTrip:
        return "ACTIVE TRIP";
      case TabStatus.tripHistory:
        return "TRIP HISTORY";
      default:
        return "";
    }
  }
}
