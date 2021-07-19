import 'dart:convert';

import 'fair_plugin.dart';

class FairPluginDispatcher {
  static final pluginMap = <String, IFairPlugin>{};

  static Future<dynamic> dispatch(dynamic msg) async {
    var obj = jsonDecode(msg);
    var args = obj['args'];
    var className = args['className']?.toString();

    if (className == null || className.isEmpty) {
      return null;
    }

    if (className.contains('#')) {
      className = className.split('#')[0];
    }

    if (pluginMap[className] != null) {
      // var d = await ;
      return pluginMap[className]?.invoke(msg);
    }
  }

  static void registerPlugin(String key, IFairPlugin plugin) {
    pluginMap[key] = plugin;
  }

  static void registerPlugins(Map<String, IFairPlugin> plugins) {
    pluginMap.addAll(plugins);
  }
}