import 'package:flutter/material.dart';
import 'vestibular_verao.dart';
import 'espaco_do_estudante.dart';

void main() {
  runApp(MinhaAplicacao());
}

class MinhaAplicacao extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario = Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: temaSecundario,
          appBar: BarraSuperior(),
          body: CorpoDaAplicacao(),
          drawer: MenuLateral(context),
          bottomNavigationBar: MenuInferior(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: BotaoFlutuante(),
        ),
      ),
    );
  }

  AppBar BarraSuperior() {
    return AppBar(
      title: Text("IFSul Campus Camaquã"),
      backgroundColor: temaPrincipal,
    );
  }

  Widget CorpoDaAplicacao() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: SliderDeImagens(),
        ),

        Expanded(
          flex: 3,
          child: Container(
            width: double.infinity,
            child: Image.asset(
              "assets/images/logo.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }

  Drawer MenuLateral(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: temaPrincipal,
            ),
            child: Container(
              height: 10,
              alignment: Alignment.center,
              child: Text(
                'Menu',
                style: TextStyle(
                  color: temaSecundario,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Espaço do Estudante'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => espaco_do_estudante()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Vestibular Verão/2024'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => vestibular_verao()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget MenuInferior() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Mensagens',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configurações',
        ),
      ],
    );
  }

  Widget BotaoFlutuante() {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Meu Perfil',
      child: const Icon(Icons.home),
    );
  }
}

class SliderDeImagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          'assets/images/image1.jpg',
          fit: BoxFit.contain,
        ),
        Image.asset(
          'assets/images/image2.jpg',
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
