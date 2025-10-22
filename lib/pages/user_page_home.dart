import 'package:flutter/material.dart';
import 'package:map_food/theme/colors_palette.dart';

class UserPageHome extends StatefulWidget {
  const UserPageHome({super.key});

  @override
  State<UserPageHome> createState() => _UserPageHomeState();
}

class _UserPageHomeState extends State<UserPageHome> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff202123),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.50),
        child: Container(
          decoration: BoxDecoration(
            color: ColorsPalette.brancoOff,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context) {
                          return IconButton(
                            icon: Icon(Icons.menu, size: 18),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            style: IconButton.styleFrom(
                              foregroundColor: ColorsPalette.branco,
                              backgroundColor: ColorsPalette.roxoProfundo,
                              shape: StadiumBorder(),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              minimumSize: Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          );
                        },
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Olá, ',
                                style: TextStyle(
                                  color: ColorsPalette.preto,
                                  fontSize: 30,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                text: 'Usuário!',
                                style: TextStyle(
                                  color: ColorsPalette.roxoProfundo,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(Icons.search_outlined, size: 18),
                        onPressed: () {
                          Navigator.pushNamed(context, '/search');
                        },
                        style: IconButton.styleFrom(
                          foregroundColor: ColorsPalette.branco,
                          backgroundColor: ColorsPalette.roxoProfundo,
                          shape: StadiumBorder(),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          minimumSize: Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 6,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://cdn.awsli.com.br/600x700/2601/2601032/produto/225220897/todos-01-40e6z0eseb.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.9),
                                  Colors.black.withOpacity(0.3),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Container(
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  color: ColorsPalette.roxoProfundo,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit,
                                    color: ColorsPalette.branco,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    164,
                                    168,
                                    160,
                                    160,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Text(
                                  'Salgado do Eduardo',
                                  style: TextStyle(
                                    color: ColorsPalette.branco,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 20),
                  child: Text(
                    'Destaques',
                    style: TextStyle(
                      fontSize: 25,
                      color: ColorsPalette.branco,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 16),
                      Card(
                        color: ColorsPalette.roxoVivo,
                        child: Container(
                          width: 150,
                          height: 180,
                          child: Center(child: Text('Card 1')),
                        ),
                      ),
                      SizedBox(width: 16),
                      Card(
                        color: ColorsPalette.roxoMedio,
                        child: Container(
                          width: 150,
                          height: 180,
                          child: Center(child: Text('Card 2')),
                        ),
                      ),
                      SizedBox(width: 16),
                      Card(
                        color: ColorsPalette.roxoClaro,
                        child: Container(
                          width: 150,
                          height: 180,
                          child: Center(child: Text('Card 3')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
