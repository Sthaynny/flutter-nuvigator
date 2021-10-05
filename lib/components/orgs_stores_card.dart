import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/core/app_colors.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class OrgsStoresCard extends StatelessWidget {
  final String img;
  final String title;
  final String distance;
  final void Function() action;

  OrgsStoresCard({
    @required this.img,
    @required this.title,
    this.distance,
    @required this.action,
  })  : assert(img != null),
        assert(title != null),
        assert(action != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: InkWell(
        onTap: action,
        child: Container(
          alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1.0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    img,
                    scale: 2,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SmoothStarRating(
                        rating: 5,
                        color: AppColors.green,
                        borderColor: AppColors.green,
                        isReadOnly: false,
                        starCount: 5,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                _favoriteOrDistance(distance),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _favoriteOrDistance(distance) {
    if (distance != null) {
      return Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Distância',
                style: TextStyle(
                  fontSize: 11,
                  color: AppColors.darkGrey,
                ),
              ),
              Text('$distance km')
            ],
          ),
        ),
      );
    }

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: AppColors.green,
            size: 15,
          ),
        ],
      ),
    );
  }
}
