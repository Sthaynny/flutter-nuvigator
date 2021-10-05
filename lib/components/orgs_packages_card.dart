import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/core/app_colors.dart';
import 'package:flutter_nuvigator/core/app_images.dart';

class OrgsPackagesCard extends StatelessWidget {
  final String title;
  final String photo = AppImages.vegetablesPackage;
  final String description;
  final String price;

  OrgsPackagesCard({
    @required this.title,
    @required this.description,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            photo,
            width: 75,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10),
              price != null
                  ? Text(
                      'R\$ $price',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.green,
                      ),
                    )
                  : Container(),
              SizedBox(height: 15),
              Divider(),
            ],
          ),
        ),
      ],
    );
  }
}
