import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomBarItem {
  final String iconPath;

  CustomBottomBarItem({required this.iconPath});
}

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  final itemWidth = 24.0;
  final itemBottomBarHeight = 70;

  final List<CustomBottomBarItem> navigationBarIcons = [
    CustomBottomBarItem(iconPath: "assets/icons/home.svg"),
    CustomBottomBarItem(iconPath: "assets/icons/box.svg"),
    CustomBottomBarItem(iconPath: "assets/icons/map.svg"),
    CustomBottomBarItem(iconPath: "assets/icons/settings.svg"),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    const containerHorizontalMargin = 24.0;

    return Container(
      margin: const EdgeInsets.fromLTRB(
        containerHorizontalMargin,
        0,
        containerHorizontalMargin,
        30,
      ),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // spaceEvenly creates (N+1) equal gaps
          final containerWidth = constraints.maxWidth;
          final gap = containerWidth / (navigationBarIcons.length + 1);
          // Item i is centered at gap * (i + 1)
          final left = gap * (index + 1) - (itemWidth / 2);

          return Stack(
            alignment: Alignment.centerLeft,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: navigationBarIcons.map((e) {
                  return Container(
                    color: Colors.grey.withValues(alpha: 0.4),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = navigationBarIcons.indexOf(e);
                        });
                      },
                      child: SvgPicture.asset(
                        e.iconPath,
                        width: itemWidth,
                        colorFilter: ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                height: itemWidth,
                top: 10,
                left: left,
                child: Container(
                  height: itemWidth,
                  width: itemWidth,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
