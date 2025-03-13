


import 'package:state_management/Ex1/logger/console_logger.dart';
import 'package:state_management/Ex1/service/ride_pref_service.dart';

import 'models/ride_pre.dart' show RidePreference;

void main() {
  RidePreferencesService ridePreferencesService = RidePreferencesService();
  ConsoleLogger consoleLogger = ConsoleLogger();

  // Register ConsoleLogger as a listener
  ridePreferencesService.addListener(consoleLogger);

  // Simulate a preference change
  ridePreferencesService.setPreference(RidePreference.defaultPreference);

}