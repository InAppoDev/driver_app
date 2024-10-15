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
        return 'assets/icons/departure_icon.svg';
      case 'final_destination':
        return 'assets/icons/final_destination_icon.svg';
      case 'custom_waypoint':
        return 'assets/icons/custom_waypoint_icon.svg';
      case 'split':
        return 'assets/icons/split_icon.svg';
      case 'pickup':
        return 'assets/icons/pickup_icon.svg';
      case 'delivery':
        return 'assets/icons/delivery_icon.svg';
      default:
        return '';
    }
  }
}
