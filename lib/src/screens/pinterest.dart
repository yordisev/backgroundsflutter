import 'package:backgrounds/src/widgets/menupinterest.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PinterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _MenuModel(),
      child: Scaffold(
        // body: PinterestMenu(),
        // body: PinterestGrid(),
        body: Stack(
          children: <Widget>[
            Center(child: Text('Paginas Aqui')),
            _PinterestMenuLocation(),
          ],
        ),
      ),
    );
  }
}

class _PinterestMenuLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthPantalla = MediaQuery.of(context).size.width;

    final mostrar = Provider.of<_MenuModel>(context).mostrar;

    return Positioned(
        bottom: 30,
        child: Container(
          width: widthPantalla,
          child: Align(
            child: PinterestMenu(
              mostrar: mostrar,
              // backgroundColor: Colors.red,
              // activeColor: Colors.red,
              // inactiveColor: Colors.blue,
              items: [
                PinterestButton(
                    icon: Icons.pie_chart,
                    onPressed: () {
                      print('Icon pie_chart');
                    }),
                PinterestButton(
                    icon: Icons.search,
                    onPressed: () {
                      print('Icon search');
                    }),
                PinterestButton(
                    icon: Icons.notifications,
                    onPressed: () {
                      print('Icon notifications');
                    }),
                PinterestButton(
                    icon: Icons.supervised_user_circle,
                    onPressed: () {
                      print('Icon supervised_user_circle');
                    }),
              ],
            ),
          ),
        ));
  }
}

class _MenuModel with ChangeNotifier {
  bool _mostrar = true;

  bool get mostrar => this._mostrar;

  set mostrar(bool valor) {
    this._mostrar = valor;
    notifyListeners();
  }
}
