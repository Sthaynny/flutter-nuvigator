import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/components/orgs_packages_card.dart';
import 'package:flutter_nuvigator/core/app_colors.dart';
import 'package:flutter_nuvigator/core/app_images.dart';
import 'package:flutter_nuvigator/models/package_model.dart';
import 'package:flutter_nuvigator/models/producer_model.dart';
import 'package:flutter_nuvigator/utils/string_export.dart';

class ProducerDetailsScreen extends StatelessWidget {
  final Producer producer;
  final onPackageDetailsClick;
  ProducerDetailsScreen({
    @required this.producer,
    @required this.onPackageDetailsClick,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Detalhe da empresa',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                AppImages.bgProducer,
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 150, 20, 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(producer.logo),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      producer.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    Text(
                      '${producer.distance} km',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              producer.description,
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              'Cestas',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: ListView(
                padding: EdgeInsets.zero,
                children: _generatePackageList(
                  context,
                  producer.packages,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List _generatePackageList(BuildContext context, List packages) {
    List<Widget> children = [];
    for (final package in packages) {
      final pack = Package.fromJson(package);

      children.add(InkWell(
        onTap: () => onPackageDetailsClick({
          StringKeys.package: pack,
          StringKeys.producer: producer,
        }),
        child: OrgsPackagesCard(
          title: pack.title,
          price: pack.price,
          description: pack.description,
        ),
      ));
    }

    return children;
  }
}
