import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/add_drog.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class CatDrogsScreen extends StatefulWidget {
  const CatDrogsScreen({Key key}) : super(key: key);
  @override
  _CatDrogsScreen createState() => _CatDrogsScreen();
}

class _CatDrogsScreen extends State<CatDrogsScreen> {
  //  data will be replaced by a dynamic http request
  final _OrderInfoDataSource _orderInfoDataSource = _OrderInfoDataSource(
    dataSource: [
      DrogInfo(
        "Foilen ben foulen 1",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 3",
      ),
      DrogInfo(
        "Foilen ben foulen 4",
      ),
      DrogInfo(
        "Foilen ben foulen 5",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 10",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 14",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 20",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 24",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 27",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 31",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 34",
      ),
    ],
    paginatedDataSource: [
      DrogInfo(
        "Foilen ben foulen 1",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 3",
      ),
      DrogInfo(
        "Foilen ben foulen 4",
      ),
      DrogInfo(
        "Foilen ben foulen 5",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 10",
      ),
      DrogInfo(
        "DrogInfo ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 14",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 20",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 24",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 27",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 31",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 2",
      ),
      DrogInfo(
        "Foilen ben foulen 34",
      ),
    ],
    rowsPerPage: 10,
  );

  Widget _buildDataPager() {
    return Center(
      child: SfDataPager(
        delegate: _orderInfoDataSource,
        pageCount: 3, // _orderInfoDataSource._dataSource.length.toDouble(),
        direction: Axis.horizontal,
      ),
    );
  }

  bool showLoadingIndicator = true;
  final double dataPagerHeight = 60.0;

  List<DrogInfo> orders = [];

  List<DrogInfo> paginatedOrders = [];

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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'Liste des catégories',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Image.asset(
                        'assets/icons/plus.png',
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        AddDrog(),
                                transitionDuration: Duration.zero,
                              ),
                            );
                          },
                          child: Text(" Ajouter une catégorie",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontFamily: "Montserrat",
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: constraint.maxHeight - 270,
                  width: constraint.maxWidth,
                  child: buildDataGrid(constraint)),
              Center(
                child: Container(
                  height: dataPagerHeight,
                  child: Center(
                    child: Align(
                        alignment: Alignment.center,
                        child: Center(child: _buildDataPager())),
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
          columnName: 'Pharmacie',
          label: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.center,
            child: Text(
              'Médicament',
              style: TextStyle(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GridColumn(
            columnName: 'Image',
            label: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.center,
              child: Text(
                'Image',
                style: TextStyle(color: primaryColor),
                overflow: TextOverflow.ellipsis,
              ),
            )),
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
      {List<DrogInfo> dataSource,
      List<DrogInfo> paginatedDataSource,
      int rowsPerPage}) {
    _dataSource = dataSource;
    _paginatedDataSource = paginatedDataSource;
    _rowsPerPage = rowsPerPage;
  }

  List<DrogInfo> _dataSource;
  List<DrogInfo> _paginatedDataSource;
  int _rowsPerPage = 10;

  @override
  List<DataGridRow> get rows => _paginatedDataSource.map<DataGridRow>((e) {
        return DataGridRow(cells: [
          DataGridCell(columnName: 'Médicament', value: e.name),
          DataGridCell(
              columnName: 'Image',
              value: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.center,
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/icons/logo.png',
                          height: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          DataGridCell(
              columnName: 'Actions',
              value: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.center,
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/icons/ic_trash.jpg',
                          height: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/icons/ic_edit.jpg',
                          height: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ]);
      }).toList(growable: false);

  @override
  Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {
    int startIndex = newPageIndex * _rowsPerPage;
    int endIndex = startIndex + _rowsPerPage;
    if (startIndex < _dataSource.length && endIndex <= _dataSource.length) {
      await Future.delayed(Duration(milliseconds: 2000));
      _paginatedDataSource =
          _dataSource.getRange(startIndex, endIndex).toList(growable: false);
      _paginatedDataSource.map<DataGridRow>((e) {
        return DataGridRow(cells: [
          DataGridCell(columnName: 'Médicament', value: e.name),
          DataGridCell(
              columnName: 'Image',
              value: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.center,
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/icons/logo.png',
                          height: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          DataGridCell(
              columnName: 'Actions',
              value: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.center,
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/icons/ic_trash.jpg',
                          height: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/icons/ic_edit.jpg',
                          height: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ]);
      }).toList(growable: false);
      notifyListeners();
    } else {
      _paginatedDataSource = [];
    }

    return true;
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(cells: [
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
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.center,
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icons/logo.png',
                        height: 16,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.center,
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/icons/ic_trash.jpg',
                  height: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/icons/ic_edit.jpg',
                  height: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    ], color: Colors.white);
  }
}

class DrogInfo {
  DrogInfo(
    this.name,
  );
  final String name;
}
