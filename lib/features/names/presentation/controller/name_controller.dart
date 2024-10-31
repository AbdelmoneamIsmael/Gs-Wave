import 'package:app_settings/app_settings.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class NameController extends GetxController {
  @override
  void onInit() {
    _fetchContacts();
    super.onInit();
  }

  Future<void> _fetchContacts() async {
    if (await Permission.contacts.request().isGranted) {
      Iterable<Contact> contacts = await FlutterContacts.getContacts();

      _contacts = contacts.toList();

      update();
    }
  }

  List<Contact> _contacts = [];

  List<Contact> get contacts => _contacts;

  Future<void> requestPermission() async {
    await AppSettings.openAppSettings(type: AppSettingsType.settings);
    await Permission.contacts.request();
    _fetchContacts();
    update();
  }
}
