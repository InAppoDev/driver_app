extension WaypointTypeParser on String {
  String get displayText {
    switch (this) {
      case 'departure':
        return 'Departure Point';
      case 'final_destination':
        return 'Final Destination';
      case 'custom_waypoint':
        return 'Custom Waypoint';
      case 'split':
        return 'Split Point';
      case 'pickup':
        return 'Pickup Location';
      case 'delivery':
        return 'Delivery Location';
      default:
        throw Exception('Unknown WaypointType: $this');
    }
  }

  String get icon {
    switch (this) {
      case 'departure':
        return 'assets/images/point.svg';
      case 'final_destination':
        return 'assets/images/point.svg';
      case 'custom_waypoint':
        return 'assets/images/point.svg';
      case 'split':
        return 'assets/images/point.svg';
      case 'pickup':
        return 'assets/images/truck.svg';
      case 'delivery':
        return 'assets/images/point.svg';
      default:
        return '';
    }
  }
}
