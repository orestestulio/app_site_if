import 'package:flutter/material.dart';
import 'vestibular_verao.dart';
import 'espaco_do_estudante.dart';
import 'espaco_do_servidor.dart';
import 'estilos_visuais.dart';

void main() {
  runApp(MinhaAplicacao());
}

class MinhaAplicacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: estilos_visuais.temaSecundario,
          appBar: estilos_visuais.barraSuperior("IFSul Campus Camaquã"),
          body: CorpoDaAplicacao(),
          drawer: estilos_visuais.menuLateral(
            context,
            [
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Espaço do Estudante'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => espaco_do_estudante()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.event),
                title: const Text('Vestibular Verão/2024'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => vestibular_verao()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.admin_panel_settings),
                title: const Text('Espaço do Servidor'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => espaco_do_servidor()),
                  );
                },
              ),
            ],
          ),
          bottomNavigationBar: estilos_visuais.menuInferior(
            const [
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Mensagens',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Configurações',
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: estilos_visuais.botaoFlutuante(
                () {},
            Icons.home,
            'Meu Perfil',
          ),
        ),
      ),
    );
  }
}

class CorpoDaAplicacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 117,
          child: SliderDeImagens(),
        ),
        Expanded(
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
}

class SliderDeImagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
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
