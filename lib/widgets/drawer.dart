import 'package:flutter/material.dart';

class DrawerPrincipal extends StatefulWidget {
  DrawerPrincipal({Key? key}) : super(key: key);

  @override
  State<DrawerPrincipal> createState() => _DrawerState();
}

class _DrawerState extends State<DrawerPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 1.2)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/drawer.png'),
                      fit: BoxFit.cover)),
              child: Container(
                child: Image(
                  image: AssetImage('assets/images/drawerLA.png'),
                  // height: 50,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 123, 52, 141),
            ),
            title: Text('Inicio'),
            onTap: () {
              Navigator.pushNamed(context, 'inicio');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person_2_outlined,
              color: Color.fromARGB(255, 123, 52, 141),
            ),
            title: Text('Perfil'),
            onTap: () {
              Navigator.pushNamed(context, 'perfil');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              color: Color.fromARGB(255, 123, 52, 141),
            ),
            title: Text('Información'),
            onTap: () {
              Navigator.pushNamed(context, 'informacion');
            },
          )
          // ListTile(
          //     leading: Icon(Icons.lightbulb_outline, color: Color.fromARGB(255,123, 52, 141)),
          //     title: Text('Tips'),
          //     onTap: () {
          //       Navigator.pushReplacementNamed(context, 'tips');
          //     }),
          // Divider(
          //   color: Colors.grey[500],
          // ),
          // ListTile(
          //     leading: Icon(Icons.info_outline, color: Color.fromARGB(255,123, 52, 141)),
          //     title: Text('Información'),
          //     onTap: () {
          //       Navigator.pushReplacementNamed(context, 'informacion');
          //     }),
          // ListTile(
          //   leading: Icon( Icons.lock_outline, color: Color.fromARGB(255,123, 52, 141)),
          //   title: Text('Aviso de privacidad'),
          //   onTap: () {
          //     Navigator.pushReplacementNamed(context, 'privacidad');
          //   },
          // ),
        ],
      ),
    );
  }
}
