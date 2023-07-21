import 'package:flutter/material.dart';

Widget buildPageIndicator({
  required int currentPage,
  required int totalPages,
  required Color primaryColor,
}) {
  Widget indicator({
    required bool isActive,
    required bool isViewed,
  }) {
    final Color color;
    if (isActive) {
      color = primaryColor;
    } else if (isViewed) {
      color = primaryColor.withOpacity(0.1);
    } else {
      color = const Color(0XFFEAEAEA);
    }
    return Expanded(
      child: SizedBox(
        height: 8,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          height: isActive ? 10 : 8.0,
          width: isActive ? 12 : 8.0,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            color: color,
          ),
        ),
      ),
    );
  }

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: List.generate(
      totalPages,
      (i) {
        return indicator(
          isActive: i == currentPage,
          isViewed: i < currentPage,
        );
      },
    ).toList(),
  );
}
