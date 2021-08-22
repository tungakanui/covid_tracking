import 'dart:collection';

import 'package:covid_tracking_app/base/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class WebViewBundle {
  WebViewBundle({required this.url, this.title});

  final String url;
  final String? title;
}

class InAppWebViewScreen extends StatefulWidget {
  @override
  _InAppWebViewScreenState createState() => _InAppWebViewScreenState();
}

class _InAppWebViewScreenState extends State<InAppWebViewScreen> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  String url = '';
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          elevation: 3,
          title: Text(
            (Get.arguments as WebViewBundle).title ?? (Get.arguments as WebViewBundle).url,
            style: AppTextStyle.w500(context, size: 18),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                InAppWebView(
                  key: webViewKey,
                  initialUrlRequest: URLRequest(url: Uri.parse((Get.arguments as WebViewBundle).url)),
                  // initialFile: "assets/index.html",
                  initialUserScripts: UnmodifiableListView<UserScript>([]),
                  initialOptions: options,
                  onWebViewCreated: (InAppWebViewController controller) {
                    webViewController = controller;
                  },
                  onLoadStart: (InAppWebViewController controller, Uri? url) {
                    setState(() {
                      this.url = url.toString();
                      urlController.text = this.url;
                    });
                  },
                  androidOnPermissionRequest: (InAppWebViewController controller, String origin, List<String> resources) async {
                    return PermissionRequestResponse(resources: resources, action: PermissionRequestResponseAction.GRANT);
                  },
                  shouldOverrideUrlLoading: (InAppWebViewController controller, NavigationAction navigationAction) async {
                    final Uri uri = navigationAction.request.url!;

                    if (!['http', 'https', 'file', 'chrome', 'data', 'javascript', 'about'].contains(uri.scheme)) {
                      return NavigationActionPolicy.CANCEL;
                    }
                  },
                  onLoadStop: (InAppWebViewController controller, Uri? url) async {
                    setState(() {
                      this.url = url.toString();
                      urlController.text = this.url;
                    });
                  },
                  onLoadError: (InAppWebViewController controller, Uri? url, code, String message) async {},
                  onProgressChanged: (InAppWebViewController controller, int progress) {
                    if (progress == 100) {}
                    setState(() {
                      this.progress = progress / 100;
                      urlController.text = url;
                    });
                  },
                  onUpdateVisitedHistory: (controller, url, androidIsReload) {
                    setState(() {
                      this.url = url.toString();
                      urlController.text = this.url;
                    });
                  },
                  onConsoleMessage: (InAppWebViewController controller, ConsoleMessage consoleMessage) {
                    print(consoleMessage);
                  },
                ),
                if (progress < 1.0) LinearProgressIndicator(value: progress) else Container(),
              ],
            ),
          ),
        ]));
  }
}
