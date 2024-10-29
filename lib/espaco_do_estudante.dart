import 'package:flutter/material.dart';
import 'vestibular_verao.dart'; // Certifique-se de que o caminho está correto

class espaco_do_estudante extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario = Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: temaSecundario,
      appBar: AppBar(
        title: Text('Espaço do Estudante'),
        backgroundColor: temaPrincipal,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Bem-vindo ao Espaço do Estudante!',
            style: TextStyle(fontSize: 24, color: temaPrincipal),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      drawer: MenuLateral(context),
      bottomNavigationBar: MenuInferior(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BotaoFlutuante(context),
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
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Vestibular Verão/2024'),
            onTap: () {
              Navigator.pop(context); // Fecha o drawer antes de navegar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => vestibular_verao()), // Corrigido aqui
              );
            },
          ),
        ],
      ),
    );
  }

  Widget MenuInferior(BuildContext context) {
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
      onTap: (index) {
        if (index == 2) {
          // Ao clicar no botão Home, volta para MinhaAplicacao
          Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
        }
      },
    );
  }

  Widget BotaoFlutuante(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Levar de volta à página inicial
        Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
      },
      tooltip: 'Meu Perfil',
      child: const Icon(Icons.home),
    );
  }
}
