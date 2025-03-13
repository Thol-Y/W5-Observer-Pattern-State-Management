
import 'package:state_management/Ex1/logger/console_logger.dart';
import 'package:state_management/Ex1/models/ride_pre.dart';
import 'package:state_management/Ex1/service/ride_pref_service.dart';

void main() {
  final service = RidePreferencesService();
  final logger = ConsoleLogger();

  service.addListener(logger); 

  service.setPreference(RidePreference(name: 'ST')); 
  service.setPreference(RidePreference(name: 'Hello')); 

}