import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:map_food/theme/colors_palette.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: ColorsPalette.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Buscar',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: ColorsPalette.preto,
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18,
              color: ColorsPalette.roxoProfundo,
            ),
            onPressed: () => Navigator.pop(context),
            style: IconButton.styleFrom(
              foregroundColor: ColorsPalette.roxoProfundo,
              minimumSize: Size(0, 0),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      cursorColor: ColorsPalette.roxoVivo,
                      controller: _controllerSearch,
                      decoration: InputDecoration(
                        hintText: 'Pesquisar...',
                        hintStyle: TextStyle(color: Colors.black54),
                        prefixIcon: Icon(
                          Icons.search,
                          color: ColorsPalette.roxoVivo,
                        ),
                        filled: true,
                        fillColor: ColorsPalette.branco,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 16,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  IconButton.filled(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.sliders, size: 18),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: ColorsPalette.roxoVivo,
                      padding: EdgeInsets.all(14),
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
