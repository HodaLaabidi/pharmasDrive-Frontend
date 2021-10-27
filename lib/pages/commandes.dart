
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key key}) : super(key: key);
  @override
  _OrdersScreen createState() => _OrdersScreen();
}

class _OrdersScreen extends State<OrdersScreen> {

  //  data will be replaced by a dynamic http request 
final _OrderInfoDataSource _orderInfoDataSource = _OrderInfoDataSource(
  dataSource: [ OrderInfo("Foilen ben foulen 1", "lorem ipsuom", "500£", "22/05/2020", "lorem ipsuim"), OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"), OrderInfo("Foilen ben foulen 3", "lorem ipsuom", "500£", "22/07/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 4", "lorem ipsuom", "150£", "14/05/2021", "lorem ipsuim"),OrderInfo("Foilen ben foulen 5", "lorem ipsuom", "220£", "04/09/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 10", "lorem ipsuom", "780£", "14/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 14", "lorem ipsuom", "140£", "04/03/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 20", "lorem ipsuom", "770£", "04/05/2021", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 24", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 27", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 31", "lorem ipsuom", "100£", "04/05/2019", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 34", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),],
  paginatedDataSource: [ OrderInfo("Foilen ben foulen 1", "lorem ipsuom", "500£", "22/05/2020", "lorem ipsuim"), OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"), OrderInfo("Foilen ben foulen 3", "lorem ipsuom", "500£", "22/07/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 4", "lorem ipsuom", "150£", "14/05/2021", "lorem ipsuim"),OrderInfo("Foilen ben foulen 5", "lorem ipsuom", "220£", "04/09/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 10", "lorem ipsuom", "780£", "14/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 14", "lorem ipsuom", "140£", "04/03/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 20", "lorem ipsuom", "770£", "04/05/2021", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 24", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 27", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 31", "lorem ipsuom", "100£", "04/05/2019", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),OrderInfo("Foilen ben foulen 34", "lorem ipsuom", "100£", "04/05/2020", "lorem ipsuim"),],
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

List<OrderInfo> orders = [];

List<OrderInfo> paginatedOrders = [];


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
          columnName: 'Nom user',
          
          label: Container(
          
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'Nom user',
              style: TextStyle(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
            columnName: 'Médicaments',
            label: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.center,
              child: Text(
                'Médicaments',
                style: TextStyle(color: primaryColor),
                overflow: TextOverflow.ellipsis,
              ),
            )),
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
          ),
        ),
        GridColumn(
          columnName: 'Date et heure',
          label: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'Date et heure',
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
      { List<OrderInfo> dataSource,
       List<OrderInfo> paginatedDataSource,
       int rowsPerPage}) {
    _dataSource = dataSource;
    _paginatedDataSource = paginatedDataSource;
    _rowsPerPage = rowsPerPage;
   
    
  }
 
   List<OrderInfo> _dataSource;
   List<OrderInfo> _paginatedDataSource;
   int _rowsPerPage = 11;


  
  

  
 
  @override
  List<DataGridRow> get rows => _paginatedDataSource.map<DataGridRow>((e) {
        return DataGridRow(cells: [
          DataGridCell(columnName: 'Nom user', value: e.userName),
          DataGridCell(columnName: 'Médicaments', value: e.drogs),
          DataGridCell(columnName: 'Montant', value: e.money),
          DataGridCell(columnName: 'Date et heure', value: e.dateTime),
          DataGridCell(columnName: 'Actions', value: e.actions),
         
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
          DataGridCell(columnName: 'Nom user', value: e.userName),
          DataGridCell(columnName: 'Médicaments', value: e.drogs),
          DataGridCell(columnName: 'Montant', value: e.money),
          DataGridCell(columnName: 'Date et heure', value: e.dateTime),
          DataGridCell(columnName: 'Actions', value: e.actions),
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
          child: Text(
            row.getCells()[3].value.toString(),
            overflow: TextOverflow.ellipsis,
          )),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          child: Text(
            row.getCells()[4].value.toString(),
            overflow: TextOverflow.ellipsis,
          )),
    ],
    
     color: Colors.white);
  }

  

  

 
}
class OrderInfo {
  OrderInfo(this.userName, this.drogs, this.money, this.dateTime, this.actions);
  final String userName;
  final String drogs;
  final String money;
  final String dateTime;
  final String actions;
 
 
}

