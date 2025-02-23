// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:trendy_news/core/helpers/snack_bar_helper.dart';
import 'package:url_launcher/url_launcher.dart';

void urlLauncherHelper(
    {required String videoOrChannel,
    required BuildContext context,
    required String text}) async {
  final Uri uri = Uri.parse(
    videoOrChannel,
  );
  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
    );
  } else {
    snackBarHelper(
      context: context,
      text: text,
    );
  }
}
