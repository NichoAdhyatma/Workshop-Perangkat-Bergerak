import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  static const routeName = '/article-web';

  const ArticleWebView({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));

    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
