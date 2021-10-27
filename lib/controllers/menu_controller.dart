import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = dashboardPageDisplayName.obs;

  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case dashboardPageDisplayName:
        return _customIcon(Icons.trending_up, itemName);
      case pharmaciesPageDisplayName:
        return _customIcon(Icons.local_pharmacy, itemName);
     // case medicamentsPageDisplayName:
     //   return _customIcon(Icons.medical_services, itemName);

      case catmedicamentsPageDisplayName:
        return _customIcon(Icons.medical_services, itemName);

      case tabmedicamentsPageDisplayName:
        return _customIcon(Icons.medication, itemName);

      case authenticationPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);

      case transactionssPageDisplayName:
        return _customIcon(Icons.money, itemName);
      case donsPageDisplayName:
        return _customIcon(Icons.exit_to_app, itemName);
      case commandesPageDisplayName:
        return _customIcon(Icons.payment, itemName);
      case livraisonsPageDisplayName:
        return _customIcon(Icons.delivery_dining, itemName);
      case publicitesPageDisplayName:
        return _customIcon(Icons.shop, itemName);
      case facturesPageDisplayName:
        return _customIcon(Icons.note, itemName);
    //  case parametresPageDisplayName:
       // return _customIcon(Icons.exit_to_app, itemName);
      case profilePageDisplayName:
        return _customIcon(Icons.person, itemName);
      case equipePageDisplayName:
        return _customIcon(Icons.group, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) return Icon(icon, size: 22, color: active);

    return Icon(
      icon,
      color: isHovering(itemName) ? active : lightGrey,
    );
  }
}
