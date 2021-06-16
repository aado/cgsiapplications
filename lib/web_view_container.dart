import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final url;

  WebViewContainer(this.url);

  @override
  createState() => _WebViewContainerState(this.url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();

  _WebViewContainerState(this._url);

  @override
  Widget build(BuildContext context) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    // final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    // return Scaffold(
    //   backgroundColor: Colors.transparent,
    //   appBar: PreferredSize(
    //         child: Container(),
    //           preferredSize: Size.fromHeight(0.0),
    //   ),
    //   body: SingleChildScrollView(
    //     physics: NeverScrollableScrollPhysics(),
    //     child: ConstrainedBox(
    //       constraints: BoxConstraints(
    //         minHeight: screenHeight - keyboardHeight,
    //         // minWidth: MediaQuery.of(context).size.width,
    //         // minHeight: MediaQuery.of(context).size.height,
    //       ),
    //       child: IntrinsicHeight(
    //         child: Column(
    //           mainAxisSize: MainAxisSize.max,
    //           children: <Widget>[
    //           Expanded(
    //                       child: WebView(
    //                           key: _key,
    //                           javascriptMode: JavascriptMode.unrestricted,
    //                           initialUrl: _url))
    //             // CONTENT HERE
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    //FIRST APPROACH BLINKING
    return Scaffold(
        appBar: PreferredSize(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 43.0),
          ),
            preferredSize: Size.fromHeight(0.0),
        ), //AppBar(),
        resizeToAvoidBottomInset : false,
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url))
          ],
        ));
  }
}