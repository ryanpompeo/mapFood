class Produto {
  int _id = 0;
  String _nome = "";
  double _preco = 0;
  String _categoria = "";
  String _descricao = "";
 int get id => this._id;

 set id(int value) => this._id = value;

  get nome => this._nome;

 set nome( value) => this._nome = value;

  get preco => this._preco;

 set preco( value) => this._preco = value;

  get categoria => this._categoria;

 set categoria( value) => this._categoria = value;

  get descricao => this._descricao;

 set descricao( value) => this._descricao = value;

 Produto();

 Produto.fromJson(Map<String, dynamic> json):
 _id = json['id'],
 _categoria = json['categoria'],
 _nome = json['nome'],
 _preco = json['preco'],
 _descricao = json['descricao'];

}