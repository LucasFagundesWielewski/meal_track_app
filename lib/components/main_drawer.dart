import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget{

  Widget _createItem(IconData icon, String label){
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontSize: 24,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: (){},
    );
  }
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Vamos Cozinhar?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _createItem(Icons.restaurant, 'Refeições'),
          _createItem(Icons.settings, 'Configurações'),
        ],
      ),
    );
  }
}