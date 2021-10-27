import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        border: Border.all(color: lightGrey, width: .5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: CustomText(
                        
                        text: "Ventes",
                        size: 20,
                        weight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                  Container(
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                      CustomText(
                        
                        text: "Ventes par jour",
                        size: 16,
                        
                        
                      ),
                       Padding(
                         padding: const EdgeInsets.only(right:10.0),
                         child: CustomText(
                          
                          
                          text: "140000 £",
                          size: 16,
                          color: primaryColor
                         
                      ),
                       ),
                    ],
                ),
                  ),
                SizedBox(height: 50,),
                Container(
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                      CustomText(
                        
                        text: "Ventes par mois",
                        size: 16,
                        
                        
                      ),
                       Padding(
                         padding: const EdgeInsets.only(right:10.0),
                         child: CustomText(
                          
                          
                          text: "789140000 £",
                          size: 16,
                          color: primaryColor
                         
                      ),
                       ),
                    ],
                ),
                  ),
               
                ],
            ),
          ),
          Container(
            width: 1,
            height: 120,
            color: lightGrey,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: "Pharmacies",
                color: lightGrey,
                weight: FontWeight.bold,
              ),
            ],
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: [
                DataColumn2(
                  label: Text("Pharmacie"),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Adresse'),
                ),
             
                DataColumn(
                  label: Text('Actions'),
                ),
              ],
              rows: List<DataRow>.generate(
                  7,
                  (index) => DataRow(cells: [
                        DataCell(CustomText(text: "Lorem ipsuim")),
                        DataCell(CustomText(text: "Lorem ipsuim")),
                       DataCell(Container(
                            decoration: BoxDecoration(
                              color: light,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: active, width: .5),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            child: CustomText(
                              text: "Edit",
                              color: active.withOpacity(.7),
                              weight: FontWeight.bold,
                            ))),
                      ]))),
        ],
      ),
    )
  
             ],
            ),
          ),
        ],
      ),
    );
  }
}
