import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/components/orgs_drawer.dart';
import 'package:flutter_nuvigator/components/orgs_stores_card.dart';
import 'package:flutter_nuvigator/core/app_colors.dart';
import 'package:flutter_nuvigator/models/producer_model.dart';
import 'package:flutter_nuvigator/repository/data.dart';
import 'package:flutter_nuvigator/utils/string_export.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({
    @required this.onProducerClick,
  });

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final onProducerClick;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: OrgsDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      'Produtores favoritos',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: AppColors.darkGrey),
                    ),
                  ),
                  IconButton(
                    color: Colors.transparent,
                    icon: Icon(Icons.menu, color: AppColors.green),
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Produtores que você favoritou',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),
              FutureBuilder(
                future: _generateProducerList(context),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Flexible(
                      flex: 2,
                      child: SingleChildScrollView(
                        child: Column(
                          children: snapshot.data,
                        ),
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _generateProducerList(BuildContext context) async {
    List<Widget> children = [];
    final data = await Data.getJson();
    final producers = data["producers"];

    for (final producer in producers.keys) {
      final prod = Producer.fromJson(producers[producer]);

      children.add(
        OrgsStoresCard(
          action: () => onProducerClick({
            StringKeys.producer: prod,
          }),
          img: prod.logo,
          distance: prod.distance,
          title: prod.name,
        ),
      );

      children.add(SizedBox(height: 10));
    }

    return children;
  }
}
