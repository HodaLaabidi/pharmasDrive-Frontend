import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/Livraisons.dart';
import 'package:flutter_web_dashboard/pages/cat_medicaments.dart';
import 'package:flutter_web_dashboard/pages/clients/clients.dart';
import 'package:flutter_web_dashboard/pages/commandes.dart';
import 'package:flutter_web_dashboard/pages/dons.dart';
import 'package:flutter_web_dashboard/pages/factures_pharmacie.dart';
import 'package:flutter_web_dashboard/pages/medicaments.dart';
import 'package:flutter_web_dashboard/pages/overview/overview.dart';
import 'package:flutter_web_dashboard/pages/params_equipe.dart';
import 'package:flutter_web_dashboard/pages/params_profil.dart';
import 'package:flutter_web_dashboard/pages/pharmacies.dart';
import 'package:flutter_web_dashboard/pages/publicities.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case dashboardPageRoute:
      return _getPageRoute(OverviewPage());
    case pharmaciesPageRoute:
      return _getPageRoute(PharmaciesScreen());
    case medicamentsPageRoute:
      return _getPageRoute(ClientsPage());
    case catmedicamentsPageRoute:
      return _getPageRoute(CatDrogsScreen());
    case tabmedicamentsPageRoute:
      return _getPageRoute(Medicaments());
    case donsPageRoute:
      return _getPageRoute(DonationsScreen());
    case commandesPageRoute:
      return _getPageRoute(OrdersScreen());
    case livraisonsPageRoute:
      return _getPageRoute(DeliveriesScreen());
    case publicitesPageRoute:
      return _getPageRoute(PublicitiesScreen());
    case facturesPageRoute:
      return _getPageRoute(PharmacyBillScreen());
  
    case profilePageRoute:
    return _getPageRoute(ParamProfil());
    case equipePageRoute:
      return _getPageRoute(ParamEquipe());

    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
