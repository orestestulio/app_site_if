import 'package:flutter/material.dart';
import 'vestibular_verao.dart'; // Certifique-se de que o caminho está correto
import 'espaco_do_servidor.dart'; // Certifique-se de que o caminho está correto

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
          // Navegação para o "Espaço do Estudante"
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Espaço do Estudante'),
            onTap: () {
              Navigator.pop(context); // Fecha o drawer antes de navegar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => espaco_do_estudante()), // Navega para o Espaço do Estudante
              );
            },
          ),
          // Navegação para o "Vestibular Verão/2024"
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Vestibular Verão/2024'),
            onTap: () {
              Navigator.pop(context); // Fecha o drawer antes de navegar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => vestibular_verao()), // Navega para o Vestibular Verão
              );
            },
          ),
          // Navegação para o "Espaço do Servidor"
          ListTile(
            leading: Icon(Icons.admin_panel_settings),
            title: Text('Espaço do Servidor'),
            onTap: () {
              Navigator.pop(context); // Fecha o drawer antes de navegar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EspacoDoServidor()), // Navega para o Espaço do Servidor
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
          // Ao clicar no botão Home, volta para a página inicial
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

class EspacoDoServidor extends StatelessWidget {
  final Color temaPrincipal = Colors.green;
  final Color temaSecundario = Colors.green[100] ?? Color.fromARGB(255, 200, 230, 201);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: temaSecundario,
      appBar: AppBar(
        title: Text('Espaço do Servidor'),
        backgroundColor: temaPrincipal,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Bem-vindo ao Espaço do Servidor!',
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
          // Navegação para o "Espaço do Estudante"
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Espaço do Estudante'),
            onTap: () {
              Navigator.pop(context); // Fecha o drawer antes de navegar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => espaco_do_estudante()), // Navega para o Espaço do Estudante
              );
            },
          ),
          // Navegação para o "Vestibular Verão/2024"
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Vestibular Verão/2024'),
            onTap: () {
              Navigator.pop(context); // Fecha o drawer antes de navegar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => vestibular_verao()), // Navega para o Vestibular Verão
              );
            },
          ),
          // Navegação para o "Espaço do Servidor"
          ListTile(
            leading: Icon(Icons.admin_panel_settings),
            title: Text('Espaço do Servidor'),
            onTap: () {
              Navigator.pop(context); // Fecha o drawer antes de navegar
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EspacoDoServidor()), // Navega para o Espaço do Servidor
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
          // Ao clicar no botão Home, volta para a página inicial
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
