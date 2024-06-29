import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/config_page.dart';
import 'pages/inflowsoutflows_page.dart';
import 'pages/budget_page.dart';
import 'pages/assets_page.dart';
import 'pages/fi_page.dart';

void main() {
  runApp(PerfinApp());
}

class PerfinApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfin'),
        backgroundColor: Colors.blue,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
                icon: Icon(
              Icons.home,
              color: Colors.white,
            )),
            Tab(
                icon: Icon(
              Icons.settings,
              color: Colors.white,
            )),
            Tab(
                icon: Icon(
              Icons.swap_horiz,
              color: Colors.white,
            )),
            Tab(
                icon: Icon(
              Icons.assessment,
              color: Colors.white,
            )),
            Tab(
                icon: Icon(
              Icons.money_off,
              color: Colors.white,
            )),
            Tab(
                icon: Icon(
              Icons.account_balance_wallet,
              color: Colors.white,
            )),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomePage(),
          ConfigPage(),
          InflowsOutflowsPage(),
          BudgetPage(),
          AssetsPage(),
          FIPage(),
        ],
      ),
    );
  }
}
