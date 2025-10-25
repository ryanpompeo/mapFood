class Vendedor {
  int _cpf = 0;
  String _nome = "";
  String _email = "";
  String _senha = "";
 int get cpf => this._cpf;

 set cpf(int value) => this._cpf = value;

  get nome => this._nome;

 set nome( value) => this._nome = value;

  get email => this._email;

 set email( value) => this._email = value;

  get senha => this._senha;

 set senha( value) => this._senha = value;

Vendedor();

Vendedor.fromJson(Map<String, dynamic> json)
 : _cpf = json['cpf'],
   _nome = json['nome'],
   _email = json['email'],
   _senha = json['senha'];
}