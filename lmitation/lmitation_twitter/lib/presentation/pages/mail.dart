import 'package:flutter/material.dart';
import '../organisms/app_bar.dart';
import '../molecules/custom_bottom_bar.dart';

class Mail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MailListAppBar(),
      body: null,
      bottomNavigationBar: CustomBottomBar(),
    );
  }

}