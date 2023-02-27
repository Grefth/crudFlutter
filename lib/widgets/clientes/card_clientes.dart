import 'package:flutter/material.dart';

import '../../themes/app_theme.dart';

class CardClientes extends StatelessWidget {
  const CardClientes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.ac_unit_sharp, color: AppTheme.primaryLight),
            title: Text('Soy un titulo'),
            subtitle: Text('Labore qui laboris consequat aute. Aliqua Lorem occaecat nisi dolore laborum ipsum adipisicing velit et laborum minim aliqua aliquip. Consequat dolor voluptate deserunt consectetur reprehenderit dolor duis mollit commodo voluptate aliqua labore fugiat aliqua. Nisi esse excepteur aliquip nostrud magna irure duis cillum irure voluptate occaecat elit Lorem consectetur. Ad anim consectetur ea nostrud minim cillum magna magna ea esse est voluptate excepteur. Veniam non irure ad dolore veniam. Incididunt ad id sit elit.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancelar'),                  
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text('OK')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}