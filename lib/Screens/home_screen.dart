import 'package:disenos/Widgets/background.dart';
import 'package:disenos/Widgets/card_table.dart';
import 'package:disenos/Widgets/custom_bottom_navigation.dart';
import 'package:disenos/Widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _HomeBody()],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [PageTitle(), CardTable()],
      ),
    );
  }
}
