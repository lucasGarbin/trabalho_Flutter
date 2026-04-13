import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Pagina_principal(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Pagina_principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Colors.blue.value),
        title: Text('Curriculo', 
          style: TextStyle(
            color: Colors.white,
          ),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => cadastrar_info()));
            },
            icon: Icon( Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),

      body: Center(
        child: ListView(
          padding: EdgeInsets.fromLTRB(30, 17, 30, 16),
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: FittedBox(
                fit: BoxFit.contain,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/sherek.jpeg'),
                ),
              )
            ),
            SizedBox(height: 20),
            Text(
              'Nome: Lukinhas do Rocket',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold, 
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Escolaridade()));
              },
              child: Text('Escolaridade'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Projetos()));
              },
              child: Text('Projetos'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Recomendacoes()));
              },
              child: Text('Recomendações'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(fontSize: 30),
              ),
            ),
          ]
        )
      ),

    );
  }
}

class Escolaridade extends StatefulWidget {
  @override
  State<Escolaridade> createState() => _EscolaridadeState();
}

class _EscolaridadeState extends State<Escolaridade> {
  static List<String> escolaridade = [
    'Ensino Fundamental Completo',
    'Ensino Médio Cursando',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        title: Text('Escolaridade', 
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(30, 17, 30, 16),
          itemCount: escolaridade.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(escolaridade[index]),
            );
          },
        ),
        
      ),
    );
  }

}

class Projetos extends StatefulWidget {

  @override
  State<Projetos> createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  static List<String> projetos = [
    'Projeto de Desenvolvimento de Aplicativo Móvel',
    'PI 2026',
    'jogo da velha triangular',
    'spotify 2'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        title: Text('Projetos', 
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(30, 17, 30, 16),
          itemCount: projetos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(projetos[index]),
            );
          },
        ),
      ),
    );
  }
}


class Recomendacoes extends StatefulWidget {
  @override
  State<Recomendacoes> createState() => _RecomendacoesState();
}

class _RecomendacoesState extends State<Recomendacoes> {
  static List<String> recomendacoes = [
    'Recomendação de João Silva: "Lukinhas é um profissional dedicado e talentoso, sempre disposto a aprender e colaborar em equipe."',
  ];
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,
        title: Text('Recomendações', 
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(30, 17, 30, 16),
          itemCount: recomendacoes.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(recomendacoes[index]),
            );
          },
        ),
      ),
    );
  }
}


class cadastrar_info extends StatefulWidget {
  const cadastrar_info({super.key});

  @override
  State<cadastrar_info> createState() => _cadastrar_infoState();
}

class _cadastrar_infoState extends State<cadastrar_info> {
  String infoselecionada = 'Escolaridade';
  final TextEditingController _textController = TextEditingController();
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Cadastrar Informações', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.fromLTRB(30, 17, 30, 16),
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: FittedBox(
                fit: BoxFit.contain,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('images/sherek.jpeg'),
                ),
              )
            ),
            SizedBox(height: 20),
            // Três botões visuais (desabilitados) para mostrar categorias
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      infoselecionada = 'Escolaridade';
                    });
                  },
                  child: Text('Escolaridade'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      infoselecionada = 'Projetos';
                    });
                  },
                  child: Text('Projetos'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      infoselecionada = 'Recomendações';
                    });
                  },
                  child: Text('Recomendações'),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Escreva aqui...',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                if (infoselecionada == 'Escolaridade') {
                  _EscolaridadeState.escolaridade.add(_textController.text);
                  _textController.clear();
                } else if (infoselecionada == 'Projetos') {
                  _ProjetosState.projetos.add(_textController.text);
                  _textController.clear();
                } else if (infoselecionada == 'Recomendações') {
                  _RecomendacoesState.recomendacoes.add(_textController.text);
                  _textController.clear();
                }
              },
              child: Text('Adicionar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}