import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropDownDashboard extends StatefulWidget {
  DropDownDashboard({Key? key, }) : super(key: key);

 // String item;

  @override
  State<DropDownDashboard> createState() => _DropDownDashboardState();
}



class _DropDownDashboardState extends State<DropDownDashboard> {

  String items = '';

  final myKey = GlobalKey<DropdownSearchState<MultiLevelString>>();
  final List<MultiLevelString> myItems = [
    MultiLevelString(level1: '1'),
    MultiLevelString(level1: "2"),
    MultiLevelString(level1: "3"),
    MultiLevelString(level1: "4")
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: DropdownSearch<MultiLevelString>(
        key: myKey,
        items: myItems,
        compareFn: (i1, i2) => i1.level1 == i2.level1,
        popupProps: PopupProps.menu(
          showSelectedItems: true,
          interceptCallBacks: true,
          itemBuilder: (ctx, item, isSelected) {
            return ListTile(
              selected: isSelected,
              title: Text(item.level1),
              onTap: () => myKey.currentState?.popupValidate([item]),
            );
          },
        ),
      ),
    );
  }
}

class MultiLevelString {
  final String level1;
  bool isExpanded;

  MultiLevelString({
    this.level1 = "",
    this.isExpanded = false,
  });

  MultiLevelString copy({
    String? level1,
    bool? isExpanded,
  }) =>
      MultiLevelString(
        level1: level1 ?? this.level1,
        isExpanded: isExpanded ?? this.isExpanded,
      );

  @override
  String toString() => level1;
}