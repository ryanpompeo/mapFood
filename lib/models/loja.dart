class Loja {
  int _id = 0;
  String _nome = "";
  int _telefone = 0;
  String _descricao ="";
  String _ifood = "";
 int get id => this._id;

 set id(int value) => this._id = value;

  get nome => this._nome;

 set nome( value) => this._nome = value;

  get telefone => this._telefone;

 set telefone( value) => this._telefone = value;

  get descricao => this._descricao;

 set descricao( value) => this._descricao = value;

  get ifood => this._ifood;

 set ifood( value) => this._ifood = value;

 Loja();

 Loja.fromJson(Map<String, dynamic> json):
 _id = json['id'],
 _nome = json['nome'],
 _telefone = json['telefone'],
 _descricao = json['descricao'],
 _ifood = json['link_ifood'];

}