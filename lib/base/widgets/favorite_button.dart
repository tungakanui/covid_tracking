import 'package:covid_tracking_app/pages/home_root/presentation/controllers/home_root_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteButton extends StatelessWidget {
  final String countryCode;
  FavoriteButton(this.countryCode);
  final HomeRootController _controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        child: _controller.favoriteCountries.contains(countryCode.toLowerCase())
            ? Icon(
                Icons.favorite_outlined,
                color: Colors.red,
              )
            : Icon(Icons.favorite_outline_outlined),
        onTap: () async {
          // if (_controller.favoriteCountries.contains(data.alpha2Code))
          //   _controller.favoriteCountries.remove(data.alpha2Code);
          // else
          //   _controller.favoriteCountries.add(data.alpha2Code!);
          await _controller.toggleFav(countryCode);
        },
      ),
    );
  }
}
