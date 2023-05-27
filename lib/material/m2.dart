import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

Color greenTouch = Vx.hexToColor("#788154");

class M2 extends StatelessWidget {
  const M2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.hexToColor('#e8eddb'),
      body: SafeArea(
        child: Column(
          children: [
            // CalenderView
            const CalenderView().p24().h(context.percentHeight * 30),
            // MusicPlayerView

            // ChatView
          ],
        ),
      ),
      // Bottom Bar
      bottomNavigationBar: const BottomBar(),
    );
  }
}

class CalenderView extends StatelessWidget {
  const CalenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(children: [
        VStack(
          [
            const Text("MAY").text.xl4.thin.tighter.make(),
            const Text("28")
                .text
                .xl6
                .size(19)
                .tightest
                .bold
                .color(Vx.hexToColor('#595236'))
                .fontFamily(GoogleFonts.poppins().fontFamily!)
                .make()
          ],
          crossAlignment: CrossAxisAlignment.center,
        ),
        const Spacer(),
        VStack([
          VxCapsule(
            height: 30,
            width: context.percentWidth * 50,
            backgroundColor: greenTouch,
            child: const Text("Hey Amber")
                .text
                .white
                .make()
                .px12()
                .objectCenterLeft(),
          ),
          const Spacer(),
          VStack(
            [
              Text("Stand Up").text.semiBold.make(),
              Text("10:00 - 10:30").text.make()
            ],
            axisSize: MainAxisSize.max,
          )
              .box
              .border(color: greenTouch, width: 3)
              .p16
              .rounded
              .width(context.percentWidth * 50)
              .make(),
          const Spacer(),
          VxCapsule(
            width: context.percentWidth * 50,
            height: 30,
            backgroundColor: Vx.yellow200,
            child:
                const Text("Happy Hour").text.make().px12().objectCenterLeft(),
          ),
        ]),
      ]),
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
