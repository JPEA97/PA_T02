import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _contador = 0;
  Color _iconColorMessage = Colors.black;
  Color _iconColorCall = Colors.black;
  Color _iconColorRoute = Colors.black;
  Color _iconColorLike = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App ITESO'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network(
                "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?w=2000"),
            ListTile(
                title: Text("El ITESO"),
                subtitle: Text("San Pedro Tlaquepaque, Jal"),
                trailing: IconButton(
                  iconSize: 48,
                  onPressed: () {
                    _contador++;
                    setState(() {
                      if (_iconColorLike == Colors.indigo)
                        _iconColorLike = Colors.black;
                      else
                        _iconColorLike = Colors.indigo;
                    });
                  },
                  icon: Icon(
                    Icons.thumb_up,
                    color: _iconColorLike,
                  ),
                )),
            Text(
                "                                                                                     $_contador"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      iconSize: 48,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text(
                                  "Puedes encontrar comida en sus cafeterias")));
                        setState(() {
                          if (_iconColorMessage == Colors.indigo)
                            _iconColorMessage = Colors.black;
                          else
                            _iconColorMessage = Colors.indigo;
                        });
                      },
                      icon: Icon(Icons.message, color: _iconColorMessage),
                    ),
                    Text("Mensaje"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 48,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text(
                                  "Puedes pedir informacion en rectoria")));
                        setState(() {
                          if (_iconColorCall == Colors.indigo)
                            _iconColorCall = Colors.black;
                          else
                            _iconColorCall = Colors.indigo;
                        });
                      },
                      icon: Icon(Icons.call, color: _iconColorCall),
                    ),
                    Text("Llamada"),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      iconSize: 48,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text(
                                  "Se encuentra ubicado en Periférico Sur 8585")));
                        setState(() {
                          if (_iconColorRoute == Colors.indigo)
                            _iconColorRoute = Colors.black;
                          else
                            _iconColorRoute = Colors.indigo;
                        });
                      },
                      icon: Icon(Icons.directions, color: _iconColorRoute),
                    ),
                    Text("Ruta"),
                  ],
                )
              ],
            ),
            SizedBox(height: 100),
            Text(
              "El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.",
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
