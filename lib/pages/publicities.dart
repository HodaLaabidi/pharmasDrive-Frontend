
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PublicitiesScreen extends StatefulWidget {
  const PublicitiesScreen({Key key}) : super(key: key);
  @override
  _PublicitiesScreen createState() => _PublicitiesScreen();
}

class _PublicitiesScreen extends State<PublicitiesScreen> {

  //  data will be replaced by a dynamic http request 
final _OrderInfoDataSource _orderInfoDataSource = _OrderInfoDataSource(
  dataSource: [ PublicityInfo("Foilen ben foulen 1", "lorem ipsuom", "500£",), PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£", ), PublicityInfo("Foilen ben foulen 3", "lorem ipsuom", "500£",),PublicityInfo("Foilen ben foulen 4", "lorem ipsuom", "150£",),PublicityInfo("Foilen ben foulen 5", "lorem ipsuom", "lorem ipsuim"),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 10", "lorem ipsuom", "780£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 14", "lorem ipsuom", "140£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 20", "lorem ipsuom", "770£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 24", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 27", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 31", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 34", "lorem ipsuom", "100£",),],
  paginatedDataSource: [ PublicityInfo("Foilen ben foulen 1", "lorem ipsuom", "500£",), PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",), PublicityInfo("Foilen ben foulen 3", "lorem ipsuom", "500£",),PublicityInfo("Foilen ben foulen 4", "lorem ipsuom", "150£",),PublicityInfo("Foilen ben foulen 5", "lorem ipsuom", "220£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 10", "lorem ipsuom", "780£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 14", "lorem ipsuom", "140£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 20", "lorem ipsuom", "770£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 24", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 27", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 31", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 2", "lorem ipsuom", "100£",),PublicityInfo("Foilen ben foulen 34", "lorem ipsuom", "100£",),],
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

List<PublicityInfo> orders = [];

List<PublicityInfo> paginatedOrders = [];


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
          columnName: 'Statut',
          
          label: Container(
          
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'Statut',
              style: TextStyle(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
            columnName: 'Code Naf',
            label: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.center,
              child: Text(
                'Code Naf',
                style: TextStyle(color: primaryColor),
                overflow: TextOverflow.ellipsis,
              ),
            )),
        GridColumn(
          columnName: 'N°TVA intra',
          label: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'N°TVA intra',
              style: TextStyle(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
          columnName: 'SEPA',
          label: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'SEPA',
              style: TextStyle(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
          columnName: 'KBIS',
          label: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'KBIS',
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
      { List<PublicityInfo> dataSource,
       List<PublicityInfo> paginatedDataSource,
       int rowsPerPage}) {
    _dataSource = dataSource;
    _paginatedDataSource = paginatedDataSource;
    _rowsPerPage = rowsPerPage;
   
    
  }
 
   List<PublicityInfo> _dataSource;
   List<PublicityInfo> _paginatedDataSource;
   int _rowsPerPage = 10;


  
  

  
 
  @override
  List<DataGridRow> get rows => _paginatedDataSource.map<DataGridRow>((e) {
         return DataGridRow(cells: [
          DataGridCell(columnName: 'Statut', value: e.status),
          DataGridCell(columnName: 'Code Naf', value: e.codeNaf),
          DataGridCell(columnName: 'N°TVA intra', value: e.tva),
          DataGridCell(columnName: 'SEPA', value: Container(child: Center(child: Row(children: [
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
          )
          ),
          DataGridCell(columnName: 'KBIS', value: Container(child: Center(child: Row(children: [
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
          DataGridCell(columnName: 'Statut', value: e.status),
          DataGridCell(columnName: 'Code Naf', value: e.codeNaf),
          DataGridCell(columnName: 'N°TVA intra', value: e.tva),
          DataGridCell(columnName: 'SEPA', value: Container(padding: EdgeInsets.symmetric(horizontal: 16.0),
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
          ],),),)
          ),
          DataGridCell(columnName: 'KBIS', value: Container(padding: EdgeInsets.symmetric(horizontal: 16.0),
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
          child: Center(
            child: Container(padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                   color:  blueColor, ),
               ),
            ],),),
            
             
            ),
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
class PublicityInfo {
  PublicityInfo(this.status, this.codeNaf, this.tva);
  final String status;
  final String codeNaf;
  final String tva;
}

