import 'package:flutter/material.dart';
import 'package:map_food/theme/colors_palette.dart';

class ViewStore extends StatefulWidget {
  const ViewStore({super.key});

  @override
  State<ViewStore> createState() => _ViewStoreState();
}

class _ViewStoreState extends State<ViewStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsPalette.transparent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Sua Loja',
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
    );
  }
}
