import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/info_card.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
        children: [
          InfoCard(
              title: "Pharmacies",
              value: "7112200",
              onTap: () {},
              topColor: primaryColor
          ),
          SizedBox(
              width: _width / 64,
          ),
          InfoCard(
              title: "Commandes",
              value: "172255",
              topColor: redCard,
              onTap: () {},
          ),
          SizedBox(
              width: _width / 64,
          ),
          InfoCard(
              title: "Ventes",
              value: "741",
              topColor: greyCard,
              onTap: () {},
          ),
          SizedBox(
              width: _width / 64,
          ),
        ],
      ),
            ),
       SizedBox(
            width:150,
          ),
       Padding(
         padding: const EdgeInsets.all(20.0),
         child: Row(
          children: [
            InfoCard(
              title: "Clients",
              value: "7002",
              onTap: () {},
              topColor: blueCard,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Livreurs",
              value: "1724",
              topColor: yellowCard,
              onTap: () {},
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: "Taux de transformations",
              value: "300",
              topColor: cyanCard,
              onTap: () {},
            ),
            SizedBox(
              width: _width / 64,
            ),
          ],
      ),
       ),
       SizedBox(
            width: 150,
          ),
       Padding(
         padding: const EdgeInsets.all(20.0),
         child: Container(
          
           child: Row(
            children: [
              InfoCard(
                title: "Visites",
                value: "15447",
                onTap: () {},
                topColor: lightBlackCard,
              ),
              SizedBox(
                width: _width / 64,
              ),
               SizedBox(
                width: _width /3,
              ),
               SizedBox(
                width: _width / 3,
              ),
             
            ],
      ),
         ),
       ),
   

      ],
   );
  }
}
