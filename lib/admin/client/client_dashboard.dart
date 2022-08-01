import 'package:flutter/material.dart';
import 'package:easy_table/easy_table.dart';
import 'data_sources.dart';

class ClientDashboard extends StatefulWidget {
  const ClientDashboard({Key? key}) : super(key: key);

  @override
  State<ClientDashboard> createState() => _ClientDashboardState();
}

class _client {
  _client(
      this.no, this.nama, this.deskripsi, this.lokasi, this.post, this.delete);

  final int no;
  final String nama;
  final String deskripsi;
  final String lokasi;
  final String post;
  final Widget delete;
}

class _ClientDashboardState extends State<ClientDashboard> {
  EasyTableModel<_client>? _model;

  @override
  void initState() {
    super.initState();

    List<_client> rows = [
      _client(1, 'Budi', 'Dibu', 'South Jakarta', '2022-07-18',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _client(2, 'Fahrur', 'Dota 2 Champions', 'Madura', '2022-01-01',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _client(3, 'Udin', 'Jualan tahu bulat', 'Ciamis', '2022-03-29',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _client(4, 'Rizki', 'Pro Player Mobile Legend', 'Bekasi', '2022-04-2',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _client(5, 'Faid', 'Angker, KRL Mania, Pengguna Transportasi Public', 'Bogor', '2022-05-29',
          TextButton(onPressed: () {}, child: Text('delete'))),
      _client(6, 'Tohap', 'Member Eksad', 'Jakarta Barat', '2022-03-9',
          TextButton(onPressed: () {}, child: Text('delete'))),
    ];

    _model = EasyTableModel<_client>(rows: rows, columns: [
      EasyTableColumn(
          name: 'No',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          intValue: (row) => row.no),
      EasyTableColumn(name: 'Nama', weight: 3, stringValue: (row) => row.nama),
      EasyTableColumn(
          name: 'Description', weight: 3, stringValue: (row) => row.deskripsi),
      EasyTableColumn(
          name: 'Location', weight: 3, stringValue: (row) => row.lokasi),
      EasyTableColumn(
          name: 'Posted',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          weight: 2,
          stringValue: (row) => row.post),
      EasyTableColumn(
          name: '',
          headerAlignment: Alignment.center,
          cellAlignment: Alignment.center,
          weight: 1,
          objectValue: (row) => row.delete)
    ]);
  }

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 224, 224, 1),
      body: Center(
        child: Container(
          //padding: EdgeInsets.symmetric(vertical: screenSize.height*0.1,horizontal: screenSize.width*0.2),
          width: screenSize.width * 0.72,
          height: screenSize.height * 0.75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color.fromARGB(255, 18, 108, 178), width: 20),
              color: Color.fromARGB(255, 18, 108, 178)
          ),

          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30, left: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color:
                  // Colors.white
                  Color.fromARGB(255, 18, 108, 178),
                ),
                width: screenSize.width * 0.7,
                height: screenSize.height * 0.15,
                child: Text(
                  'Data Client',
                  style: TextStyle(
                      color:
                      Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
              // Container(
              //   width: screenSize.width * 0.7,
              //   height: screenSize.height * 0.06,
              //   decoration: BoxDecoration(
              //     border: Border(
              //       top: BorderSide(color: Color.fromARGB(255, 18, 108, 178), width: 10),
              //     ),
              //   ),
              // ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                width: screenSize.width * 0.65,
                height: screenSize.height * 0.52,
                child: Center(
                  child: Container(
                    width: screenSize.width * 0.63,
                    height: screenSize.height * 0.5,
                    color: Colors.white,
                    child: PaginatedDataTableDemo()

                    // EasyTable<_client>(
                    //   _model,
                    //   columnsFit: true,
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// The file was extracted from GitHub: https://github.com/flutter/gallery
// Changes and modifications by Maxim Saplin, 2021

class PaginatedDataTableDemo extends StatefulWidget {
  const PaginatedDataTableDemo({super.key});

  @override
  PaginatedDataTableDemoState createState() => PaginatedDataTableDemoState();
}

class PaginatedDataTableDemoState extends State<PaginatedDataTableDemo>
    with RestorationMixin {
  final RestorableClientSelections _dessertSelections =
  RestorableClientSelections();
  final RestorableInt _rowIndex = RestorableInt(0);
  final RestorableInt _rowsPerPage =
  RestorableInt(PaginatedDataTable.defaultRowsPerPage);
  final RestorableBool _sortAscending = RestorableBool(true);
  final RestorableIntN _sortColumnIndex = RestorableIntN(null);
  late DessertDataSource _dessertsDataSource;
  bool initialized = false;

  @override
  String get restorationId => 'paginated_data_table_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_dessertSelections, 'selected_row_indices');
    registerForRestoration(_rowIndex, 'current_row_index');
    registerForRestoration(_rowsPerPage, 'rows_per_page');
    registerForRestoration(_sortAscending, 'sort_ascending');
    registerForRestoration(_sortColumnIndex, 'sort_column_index');

    if (!initialized) {
      _dessertsDataSource = DessertDataSource(context);
      initialized = true;
    }
    switch (_sortColumnIndex.value) {
      case 0:
        _dessertsDataSource.sort<num>((d) => d.nomer, _sortAscending.value);
        break;
      case 1:
        _dessertsDataSource.sort<String>((d) => d.namaClient, _sortAscending.value);
        break;
      case 2:
        _dessertsDataSource.sort<String>((d) => d.deskripsi, _sortAscending.value);
        break;
      case 3:
        _dessertsDataSource.sort<String>((d) => d.lokasi, _sortAscending.value);
        break;
      case 4:
        _dessertsDataSource.sort<String>((d) => d.posted, _sortAscending.value);
        break;
      // case 5:
      //   _dessertsDataSource.sort<num>((d) => d.sodium, _sortAscending.value);
      //   break;
      // case 6:
      //   _dessertsDataSource.sort<num>((d) => d.calcium, _sortAscending.value);
      //   break;
      // case 7:
      //   _dessertsDataSource.sort<num>((d) => d.iron, _sortAscending.value);
      //   break;
    }
    _dessertsDataSource.updateSelectedClients(_dessertSelections);
    _dessertsDataSource.addListener(_updateSelectedDessertRowListener);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!initialized) {
      _dessertsDataSource = DessertDataSource(context);
      initialized = true;
    }
    _dessertsDataSource.addListener(_updateSelectedDessertRowListener);
  }

  void _updateSelectedDessertRowListener() {
    _dessertSelections.setClientSelections(_dessertsDataSource.clients);
  }

  void sort<T>(
      Comparable<T> Function(Client d) getField,
      int columnIndex,
      bool ascending,
      ) {
    _dessertsDataSource.sort<T>(getField, ascending);
    setState(() {
      _sortColumnIndex.value = columnIndex;
      _sortAscending.value = ascending;
    });
  }

  @override
  void dispose() {
    _rowsPerPage.dispose();
    _sortColumnIndex.dispose();
    _sortAscending.dispose();
    _dessertsDataSource.removeListener(_updateSelectedDessertRowListener);
    _dessertsDataSource.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.63,
      height: screenSize.height * 0.43,
      child: ListView(
        controller: ScrollController(),
        restorationId: 'paginated_data_table_list_view',
        padding: const EdgeInsets.all(7),
        children: [
          PaginatedDataTable(

            rowsPerPage: _rowsPerPage.value,
            onRowsPerPageChanged: (value) {
              setState(() {
                _rowsPerPage.value = value!;
              });
            },
            initialFirstRowIndex: _rowIndex.value,
            onPageChanged: (rowIndex) {
              setState(() {
                _rowIndex.value = rowIndex;
              });
            },
            sortColumnIndex: _sortColumnIndex.value,
            sortAscending: _sortAscending.value,
            onSelectAll: _dessertsDataSource.selectAll,
            columns: [
              DataColumn(
                label: const Text('No'),
                numeric: true,
                onSort: (columnIndex, ascending) =>
                    sort<num>((d) => d.nomer, columnIndex, ascending),
              ),
              DataColumn(
                label: const Text('Client Name'),

                onSort: (columnIndex, ascending) =>
                    sort<String>((d) => d.namaClient, columnIndex, ascending),
              ),
              DataColumn(
                label: const Text('Description'),
                //numeric: true,
                onSort: (columnIndex, ascending) =>
                    sort<String>((d) => d.deskripsi, columnIndex, ascending),
              ),
              DataColumn(
                label: const Text('Location'),
                //numeric: true,
                onSort: (columnIndex, ascending) =>
                    sort<String>((d) => d.lokasi, columnIndex, ascending),
              ),
              DataColumn(
                label: const Text('Posted'),
                //numeric: true,
                onSort: (columnIndex, ascending) =>
                    sort<String>((d) => d.posted, columnIndex, ascending),
              ),
              // DataColumn(
              //   label: const Text('Sodium (mg)'),
              //   numeric: true,
              //   onSort: (columnIndex, ascending) =>
              //       sort<num>((d) => d.sodium, columnIndex, ascending),
              // ),
              // DataColumn(
              //   label: const Text('Calcium (%)'),
              //   numeric: true,
              //   onSort: (columnIndex, ascending) =>
              //       sort<num>((d) => d.calcium, columnIndex, ascending),
              // ),
              // DataColumn(
              //   label: const Text('Iron (%)'),
              //   numeric: true,
              //   onSort: (columnIndex, ascending) =>
              //       sort<num>((d) => d.iron, columnIndex, ascending),
              // ),
            ],
            source: _dessertsDataSource,
          ),
        ],
      ),
    );
  }
}

