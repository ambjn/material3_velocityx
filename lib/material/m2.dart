import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Color greenTouch = Vx.hexToColor("#788154");

class M2 extends StatelessWidget {
  const M2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.hexToColor('#e8eddb'),
      body: const Column(
        children: [
          // CalenderView
          // MusicPlayerView
          // ChatView
        ],
      ),
      // Bottom Bar
      bottomNavigationBar: const BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RoundedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => {},
              backgroundColor: greenTouch,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            const GreenIcon(
              icon: Icons.mic,
            ),
            const GreenIcon(
              icon: Icons.bookmark_outlined,
            ),
            const GreenIcon(
              icon: Icons.calendar_today,
            ),
            const GreenIcon(
              icon: Icons.brush,
            ),
          ],
        ),
      ).p24(),
    );
  }
}

class GreenIcon extends StatelessWidget {
  const GreenIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: greenTouch);
  }
}

class RoundedBox extends StatelessWidget {
  const RoundedBox({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return VxBox(child: child)
        .color(Vx.hexToColor('#fff6db'))
        .roundedLg
        .p24
        .make();
  }
}
