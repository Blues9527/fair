/*
 * Copyright (C) 2005-present, 58.com.  All rights reserved.
 * Use of this source code is governed by a BSD type license that can be
 * found in the LICENSE file.
 */
package com.wuba.fair.constant;

public class FairConstant {
    /*控制js引擎的加载*/
    public static final String FLUTTER_LOADER_MESSAGE_CHANNEL = "com.wuba.fair/js_loader";
    /*native-js 基础通信*/
    public static final String FLUTTER_COMMON_MESSAGE_CHANNEL = "com.wuba.fair/common_message_channel";

    /*native-js 基础通信*/
    public static final String FLUTTER_BASIC_MESSAGE_CHANNEL = "com.wuba.fair/basic_message_channel";

    public static final String INVOKE_JS_COMMON_FUNC = "invokeJSCommonFunc";
    public static final String INVOKE_JS_FUNC = "invokeJSFunc";

    public static final String JS_INVOKE_FLUTTER_CHANNEL = "jsInvokeFlutterChannel";
    public static final String JS_INVOKE_FLUTTER_CHANNEL_SYNC = "jsInvokeFlutterChannel";
    public static final String SET_DATA = "setState";
    public static final String JS_PRINT_METHOD = "print";

    public static final String LOAD_MAIN_JS = "loadMainJs";
    public static final String RELEASE_MAIN_JS = "releaseMainJs";

    public static class AndroidConfig {
        public static final String ASSERT = "file:///android_asset/";

    }
}
