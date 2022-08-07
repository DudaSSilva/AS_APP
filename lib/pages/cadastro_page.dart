class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFFFE8E8),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 32),
                    //colocar imagem ao lado do texto
                    Image.asset(
                      "images/logo.png",
                      width: 250,
                      height: 250,
                      fit: BoxFit.fitHeight,
                    ),
                    //Colocar textinho aqui
                    const SizedBox(height: 32),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo nome obrigatório';
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nome',
                      ),
                      cursorColor: Color(0xFFDD2E44),
                    ),
                    /////
                    const SizedBox(height: 32),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo e-mail obrigatório';
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail ou usuário',
                      ),
                      cursorColor: Color(0xFFDD2E44),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo senha obrigatório';
                        } else if (value.length < 9) {
                          return 'A senha deve conter o mínimo de 8 dígitos';
                        }
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Senha',
                      ),
                      cursorColor: Color(0xFFDD2E44),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFCC99)
                      ),
                      onPressed: (){},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'CRIAR CONTA GRÁTIS',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFDD2E44)
                          ),
                        ),
                      ),
                    )
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Text(
                          'Já possui uma conta ASapp??',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          ElevatedButton(
                           style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFFCC99)
                            ),
                            onPressed: onPressedLogin,
                            child: const Padding(
                             padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'LOGIN',
                               style: TextStyle(
                                    //fontSize: 21,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFDD2E44)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
               ),
            ),
          ),
        ),
    );
  }
    
}
