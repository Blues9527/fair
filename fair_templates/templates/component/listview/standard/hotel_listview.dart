import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class HotelListView extends StatefulWidget {
  HotelListView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HotelListViewState();
}

class _HotelListViewState extends State<HotelListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder模版'),
        ),
        backgroundColor: Color(0xFFFEFEFE),
        body: Container(
          color: Color(0xFFFFFFFF),
          child: ListView.builder(
            itemBuilder: _itemBuilder,
            itemCount: 5,
          ),
        ));
  }

  Widget _itemBuilder(context, index) {
    return Container();
  }
}
