import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 65),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Center(
                child: Text(
                  'Cadastre-se',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 15),
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Nome completo'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.mail), labelText: 'E-mail'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone), labelText: 'Phone'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: TextFormField(
                        autofocus: true,
                        obscureText: (this.showPass == true) ? false : true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.key), labelText: 'Senha'),
                      ),
                    ),
                    (this.showPass == false)
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              autofocus: true,
                              obscureText: true,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.key),
                                  labelText: 'Confirmar Senha'),
                            ),
                          )
                        : Container(),
                    Row(
                      children: [
                        Checkbox(
                            value: showPass,
                            onChanged: (bool? newValue) {
                              setState(() {
                                showPass = newValue!;
                              });
                            }),
                        const Text('Mostrar senha'),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cadastrar'),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
