import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String asset;
  final double borderSize;
  const Avatar({
    super.key,
    required this.size,
    required this.asset,
    this.borderSize = 0,
  });

  @override
  Widget build(BuildContext context) {
    final fromNetwork =
        asset.startsWith("http://") || asset.startsWith("https://");
    final imageProvider = fromNetwork ? CachedNetworkImageProvider(asset,) : AssetImage(asset);
    return Center(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: borderSize, color: Colors.white),
          image: DecorationImage(
            image: imageProvider as ImageProvider,
          ),
        ),
      ),
    );
  }
}
