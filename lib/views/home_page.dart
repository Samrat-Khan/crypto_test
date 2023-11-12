import 'package:crypto_proj/controller/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<BottomnavbarController>(context, listen: false);
    return Consumer<BottomnavbarController>(
      builder: (_, __, ___) {
        return Scaffold(
          body: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.navBarItems.length,
            itemBuilder: (context, index) =>
                controller.nabBarScreens[controller.selectedIndex],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BottomAppBar(
                color: Colors.black,
                child: SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: controller.navBarItems
                        .mapIndexed(
                          (i, e) => GestureDetector(
                            onTap: () => controller.changePage(i),
                            child: e.isLarge
                                ? const CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: NetworkImage(
                                      'https://img.icons8.com/bubbles/100/earth-planet.png',
                                    ),
                                  )
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        e.label,
                                        style: GoogleFonts.poppins(
                                          color: controller.selectedIndex == i
                                              ? Colors.white
                                              : Colors.white.withOpacity(0.6),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Icon(
                                        e.icon,
                                        color: controller.selectedIndex == i
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.6),
                                      ),
                                    ],
                                  ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
