import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheImageWidget extends StatelessWidget {
  const CacheImageWidget({
    super.key,
    required this.imageUrl,
    this.errorWidget,
    this.placeholder,
    this.progressIndicatorBuilder,
  });

  final String imageUrl;
  final Widget? errorWidget;
  final Widget? placeholder;
  final Widget Function(BuildContext, String, DownloadProgress)?
      progressIndicatorBuilder;

  @override
  Widget build(BuildContext context) {
    imageCache.clear();

    return CachedNetworkImage(
      progressIndicatorBuilder: progressIndicatorBuilder,
      imageUrl: imageUrl,
      placeholder: (context, url) =>
          placeholder ??
          Container(
            color: Colors.grey,
          ),
      errorWidget: (context, url, error) =>
          errorWidget ??
          const Icon(
            Icons.error,
          ),
    );
  }
}
