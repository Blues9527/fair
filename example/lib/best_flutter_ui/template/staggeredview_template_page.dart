import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

class StaggeredPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StaggeredPageState();
}

class _StaggeredPageState extends State<StaggeredPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StaggeredView模版'),
      ),
      body: FairWidget(
        name:
            'assets/bundle/lib_best_flutter_ui_template_staggeredview_template.fair.json',
        path:
            'assets/bundle/lib_best_flutter_ui_template_staggeredview_template.fair.json',
        data: {
          'fairProps': jsonEncode({'text': '123'})
        },
      ),
    );
  }
}
