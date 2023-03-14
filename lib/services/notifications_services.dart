
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/subjects.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class LocalNotifiactionService {

  final notificacionService = FlutterLocalNotificationsPlugin();
  
  Future<void> initialize() async {

    tz.initializeTimeZones();
    //notificactions android
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');
    //notifications ios
    const DarwinInitializationSettings initializationSettingsIos = DarwinInitializationSettings();

    const InitializationSettings settings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIos
      );

      await notificacionService.initialize(settings);
  }
  
  Future<void> mostrarNotificacion() async {
    
    const AndroidNotificationDetails androidNotificationDetails =
          AndroidNotificationDetails('your channel id', 'your channel name',
            channelDescription: 'your channel description',
            importance: Importance.max,
            priority: Priority.max,
            ticker: 'ticker');



    //const DarwinNotificationDetails darwinNotificaction = DarwinNotificationDetails();   //NOTIFICACION  DE IOS
    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );



      await notificacionService.show(
      1,
      'Ejemplo de Notificación', 
      'Esta es una notificacion de prueba Grefth.', 
      notificationDetails,
      payload: 'item x');
  }


}