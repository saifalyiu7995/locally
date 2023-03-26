import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:taqa_btms_app/features/login/provider/login_provider.dart';

import 'package:sizer/sizer.dart';

class WebViewWidget extends ConsumerWidget {
  const WebViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: double.infinity,
        // child: WebView(controller: ref.read(loginProvider).webViewController),
      ),
    );
  }
}
