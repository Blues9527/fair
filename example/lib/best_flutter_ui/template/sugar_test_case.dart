import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class SugarTestCase extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SugarTestCaseState();
}

class _SugarTestCaseState extends State<SugarTestCase> {

  final popupValues = ['1','2','3','4','5'];

  var initValue = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SugarTestCase'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text('Sugar.isDuration'),
          ),
          SliverToBoxAdapter(
            child: FadeInImage(
              fadeInDuration: /*Duration(milliseconds: 1000)*/ Sugar
                  .isDuration(milliseconds: 1000),
              fadeOutDuration: /*Duration(milliseconds: 1000)*/ Sugar
                  .isDuration(milliseconds: 1000),
              placeholder: AssetImage('assets/images/helpImage.png'),
              image: NetworkImage(
                  'https://img2.baidu.com/it/u=4114138728,2649938841&fm=253&fmt=auto&app=138&f=JPEG'),
            ),
          ),
          SliverToBoxAdapter(
            child: Text('Sugar.popMenuButton'),
          ),
          // (BuildContext context) => <PopupMenuEntry<String>>[
          //               const PopupMenuItem<String>(
          //                 value: 'Item 1',
          //                 child: Text('Item 1'),
          //               ),
          //               const PopupMenuItem<String>(
          //                 value: 'Item 2',
          //                 child: Text('Item 2'),
          //               ),
          //               const PopupMenuItem<String>(
          //                 value: 'Item 3',
          //                 child: Text('Item 3'),
          //               ),
          //               const PopupMenuItem<String>(
          //                 value: 'Item 4',
          //                 child: Text('Item 4'),
          //               ),
          //             ]
          SliverToBoxAdapter(
            child: PopupMenuButton<String>(
              itemBuilder: _popupMenuBuilder,
              onSelected: _onSelect,
              initialValue: initValue,
              onCanceled: _onCancel,
              child: Text(initValue),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
                'Sugar.sliverChildBuilderDelegate & Sugar.sliverGridDelegateWithFixedCrossAxisCount Demo'),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(_itemBuilder, childCount: 3),
          ),
          SliverToBoxAdapter(
            child: Text('Sugar.netWorkImage Demo'),
          ),
          SliverToBoxAdapter(
            child: Card(
              child: Image(
                image: NetworkImage(
                    'https://img2.baidu.com/it/u=4114138728,2649938841&fm=253&fmt=auto&app=138&f=JPEG'),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text('Sugar.boxConstraints Demo'),
          ),
          SliverToBoxAdapter(
            child: Container(
              constraints: BoxConstraints(
                minWidth: 5.0,
                maxWidth: 100.0,
                minHeight: 0.0,
                maxHeight: 100.0,
              ),
              color: Colors.pink,
            ),
          ),
          SliverToBoxAdapter(
            child: Text('Sugar.borderSide Demo'),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.pink, width: 1.0))),
            ),
          ),
        ],
      ),
    );
  }

  void _onSelect(value) {
    setState(() {
      initValue = value;
    });
  }

  void _onCancel() {}

}

Widget _itemBuilder(context, index) {
  return Container();
}

List<PopupMenuEntry<String>> _popupMenuBuilder(context) {
  return [];
}

