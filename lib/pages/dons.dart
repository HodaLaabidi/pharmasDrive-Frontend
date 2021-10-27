
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DonationsScreen extends StatefulWidget {
  const DonationsScreen({Key key}) : super(key: key);
  @override
  _DonationsScreen createState() => _DonationsScreen();
}

class _DonationsScreen extends State<DonationsScreen> {

  //  data will be replaced by a dynamic http request 
final _OrderInfoDataSource _orderInfoDataSource = _OrderInfoDataSource(
  dataSource: [ DonnationInfo("Foilen ben foulen 1", "lorem ipsuom", "lorem ipsuom", "lorem ipsuom",), DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom", ), DonnationInfo("Foilen ben foulen 3", "lorem ipsuom", "500£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 4", "lorem ipsuom", "150£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 5", "lorem ipsuom", "lorem ipsuim","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 10", "lorem ipsuom", "780£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 14", "lorem ipsuom", "140£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 20", "lorem ipsuom", "770£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 24", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 27", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 31", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 34", "lorem ipsuom", "100£","lorem ipsuom",),],
  paginatedDataSource: [ DonnationInfo("Foilen ben foulen 1", "lorem ipsuom", "500£","lorem ipsuom",), DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",), DonnationInfo("Foilen ben foulen 3", "lorem ipsuom", "500£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 4", "lorem ipsuom", "150£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 5", "lorem ipsuom", "220£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 10", "lorem ipsuom", "780£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 14", "lorem ipsuom", "140£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 20", "lorem ipsuom", "770£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 24", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 27", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 31", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 2", "lorem ipsuom", "100£","lorem ipsuom",),DonnationInfo("Foilen ben foulen 34", "lorem ipsuom", "100£","lorem ipsuom",),],
  rowsPerPage:10,

 );


 
Widget _buildDataPager() {
    return Center(
      child: SfDataPager(
        delegate: _orderInfoDataSource,
        pageCount:   3 ,// _orderInfoDataSource._dataSource.length.toDouble(),
        direction: Axis.horizontal,
      ),
    );
  }


bool showLoadingIndicator = true;
final double dataPagerHeight = 60.0;

List<DonnationInfo> orders = [];

List<DonnationInfo> paginatedOrders = [];


@override
Widget build(BuildContext context) {
 return Scaffold(
       
        body: SfDataPagerTheme(
          data: SfDataPagerThemeData(
        itemColor: Colors.white,
        selectedItemColor: primaryColor,
        disabledItemTextStyle: TextStyle(color: primaryColor),
        itemBorderRadius: BorderRadius.circular(20),
        backgroundColor: Colors.white,
      ),
          child: LayoutBuilder(builder: (context, constraint) {
            return Container(
                margin: EdgeInsets.only(top: 100),
              color: bgColor,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                   SizedBox(
                        height: constraint.maxHeight - 220,
                        width: constraint.maxWidth,
                        child: buildDataGrid(constraint)),
                  
                  Center(
                    child: Container(
                        height: dataPagerHeight,
                      
                        child: Center(
                          child: Align(
                              alignment: Alignment.center, child: Center(child: _buildDataPager())),
                        ),
                      ),
                  ),
                  
                ],
              ),
            );
          }),
        ));
}




Widget buildDataGrid(BoxConstraints constraint) {
  return SfDataGrid(
      source: _orderInfoDataSource,
      columnWidthMode: ColumnWidthMode.fill,
      columns: <GridColumn>[
        GridColumn(
          columnName: 'Expéditeur',
          
          label: Container(
          
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'Expéditeur',
              style: TextStyle(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
            columnName: 'Montant',
            label: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.center,
              child: Text(
                'Montant',
                style: TextStyle(color: primaryColor),
                overflow: TextOverflow.ellipsis,
              ),
            )),
        GridColumn(
          columnName: 'Destinataire',
          label: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'Destinataire',
              style: TextStyle(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
          columnName: 'Date et heures',
          label: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'Date et heures',
              style: TextStyle(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
          columnName: 'Actions',
          label: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'Actions',
              style: TextStyle(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
     ],
    );
}


Widget buildStack(BoxConstraints constraints) {
  List<Widget> _getChildren() {
    final List<Widget> stackChildren = [];
    stackChildren.add(buildDataGrid(constraints));

    if (showLoadingIndicator) {
      stackChildren.add(Container(
        color: Colors.black12,
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Align(
          alignment: Alignment.center,
          child: CircularProgressIndicator(
            strokeWidth: 3,
          ),
        ),
      ));
    }

    return stackChildren;
  }

  return Stack(
    children: _getChildren(),
  );
}


}




class _OrderInfoDataSource extends DataGridSource {
  _OrderInfoDataSource(
      { List<DonnationInfo> dataSource,
       List<DonnationInfo> paginatedDataSource,
       int rowsPerPage}) {
    _dataSource = dataSource;
    _paginatedDataSource = paginatedDataSource;
    _rowsPerPage = rowsPerPage;
   
    
  }
 
   List<DonnationInfo> _dataSource;
   List<DonnationInfo> _paginatedDataSource;
   int _rowsPerPage = 10;


  
  

  
 
  @override
  List<DataGridRow> get rows => _paginatedDataSource.map<DataGridRow>((e) {
         return DataGridRow(cells: [
          DataGridCell(columnName: 'Expéditeur', value: e.forwarder),
          DataGridCell(columnName: 'Montant', value: e.amount),
          DataGridCell(columnName: 'Destinataire', value: e.sender),
            DataGridCell(columnName: 'Date et heures', value: e.dateHour),
         DataGridCell(columnName: 'Actions', value: Container(child: Center(child: Row(children: [
             Padding(
               padding: const EdgeInsets.all(2.0),
               child: SvgPicture.asset(
                  'assets/icons/ic_download.svg',
                  height: 16,
                 color: Colors.blue, ),
             ),
             Padding(
               padding: const EdgeInsets.all(2.0),
               child: SvgPicture.asset(
                  'assets/icons/ic_download.svg',
                  height: 16,
                 color: Colors.blue, ),
             ),
          ],),),
          ))
          ]);
         
      }).toList(growable: false);

 @override
  Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {
    int startIndex = newPageIndex * _rowsPerPage;
    int endIndex = startIndex + _rowsPerPage;
    if(startIndex < _dataSource.length && endIndex <= _dataSource.length){
      await Future.delayed(Duration(milliseconds: 2000)); 
      _paginatedDataSource = _dataSource.getRange(startIndex, endIndex).toList(growable: false);
      _paginatedDataSource.map<DataGridRow>((e) {
        return DataGridRow(cells: [
          DataGridCell(columnName: 'Expéditeur', value: e.forwarder),
          DataGridCell(columnName: 'Montant', value: e.amount),
          DataGridCell(columnName: 'Destinataire', value: e.sender),
           DataGridCell(columnName: 'Date et heures', value: e.sender),
         DataGridCell(columnName: 'Actions', value: Container(padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,child: Center(child: Row(children: [
             Padding(
               padding: const EdgeInsets.all(2.0),
               child: SvgPicture.asset(
                  'assets/icons/ic_download.svg',
                  height: 16,
                 color: Colors.blue, ),
             ),
             Padding(
               padding: const EdgeInsets.all(2.0),
               child: SvgPicture.asset(
                  'assets/icons/ic_download.svg',
                  height: 16,
                 color: Colors.blue, ),
             ),
          ],),),
          ))
          ]);
         
      }).toList(growable: false);
      notifyListeners();
    }else{
      _paginatedDataSource = [];
    }

    return true;
  }

      
 
  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return 
    DataGridRowAdapter(cells: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.center,
        child: Text(
          row.getCells()[0].value.toString(),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          child: Text(
            row.getCells()[1].value.toString(),
            overflow: TextOverflow.ellipsis,
          )),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          child: Text(
             row.getCells()[2].value.toString(),
            overflow: TextOverflow.ellipsis,
          )),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          child:  Text(
             row.getCells()[3].value.toString(),
            overflow: TextOverflow.ellipsis,
          )),
      Container( padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,child: Center(child: Row(children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SvgPicture.asset(
                    'assets/icons/ic_download.svg',
                    height: 16,
                   color: blueColor, ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SvgPicture.asset(
                    'assets/icons/ic_view.svg',
                    height: 16,
                   color: blueColor, ),
               ),
            ],),),
            ),
      
    ],
    
     color: Colors.white);
  }

  

  

 
}
class DonnationInfo {
  DonnationInfo(this.forwarder, this.amount, this.sender , this.dateHour);
  final String forwarder;
  final String amount;
  final String sender;
  final String dateHour;
}

