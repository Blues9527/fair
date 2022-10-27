import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

import 'test_data.dart';

@FairPatch()
class HomeScrollView extends StatefulWidget {
  const HomeScrollView({Key? key}) : super(key: key);

  @override
  State<HomeScrollView> createState() => _HomeScrollViewState();
}

class _HomeScrollViewState extends State<HomeScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollView模版'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverToBoxAdapter(
          //   child: Container(
          //     color: Colors.yellow,
          //     height: 100,
          //     width: 100,
          //   ),
          // )
          SliverList(
            delegate: Sugar.sliverChildBuilderDelegate(
              // builder: _listItemBuilder,
              builder: (context,index){
                return Container(color: Colors.yellow, width: 100, height: 100,);
              },
              childCount: 3,
            //     (context,index){
            //   return FairWidget(
            //     name:
            //     'assets/bundle/lib_best_flutter_ui_template_home_scrollview_list_item.fair.json',
            //     path:
            //     'assets/bundle/lib_best_flutter_ui_template_home_scrollview_list_item.fair.json',
            //     data: {
            //         'fairProps': jsonEncode({'imagePath': homeDataList[index]}),
            //       },
            //     );
            // },
            ),
          ),
          // SliverGrid(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 10.0,
          //     crossAxisSpacing: 10.0,
          //     childAspectRatio: 2.0,
          //   ),
          //   delegate: SliverChildBuilderDelegate(
          //     _gridItemBuilder,
          //     childCount: 15,
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _listItemBuilder(context, index) {
    return Container();
  }

// Widget _gridItemBuilder(context, index) {
//   return Container();
// }
}
