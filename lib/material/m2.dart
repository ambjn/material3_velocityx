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
            const MusicPlayerView().px24(),
            // ChatView
            const ChatView().p24()
          ],
        ).scrollVertical(),
      ),
      // Bottom Bar
      bottomNavigationBar: const BottomBar(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        "https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80"
            .circularNetworkImage(radius: 32),
        10.widthBox,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("VelocityX").text.bold.make(),
            const Text("Check this out").text.caption(context).make()
          ],
        ).box.p16.rounded.color(Vx.hexToColor("#fff6db")).make()
      ],
    );
  }
}

class MusicPlayerView extends StatelessWidget {
  const MusicPlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Column(
        children: [
          VxCapsule(
                  backgroundColor: Vx.hexToColor('#c4ecd4'),
                  width: 120,
                  height: 28,
                  child: [
                    const Icon(Icons.phone_android).scale50(),
                    const Text("Phone Speaker").text.xs.make()
                  ].hStack())
              .objectCenterRight(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VxBox()
                  .square(90)
                  .bgImage(const DecorationImage(
                      image: NetworkImage('https://picsum.photos/500'),
                      fit: BoxFit.cover))
                  .rounded
                  .make(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("song name right here").text.semiBold.make(),
                  const Text("artist name right here").text.sm.make()
                ],
              ).pSymmetric(h: 16, v: 12)
            ],
          ),
          Slider(
              value: 35,
              inactiveColor: Vx.black,
              activeColor: Vx.black,
              min: 0,
              max: 100,
              onChanged: (value) {}),
          HStack([
            const Text("1:20").text.make(),
            const Spacer(),
            const Text("3:20").text.make()
          ]).px24(),
          const HStack(
            [
              Icon(
                Icons.shuffle,
                size: 24,
              ),
              Spacer(),
              Icon(
                Icons.skip_previous,
                size: 24,
              ),
              Spacer(),
              Icon(
                Icons.play_arrow,
                size: 24,
              ),
              Spacer(),
              Icon(
                Icons.skip_next,
                size: 24,
              ),
              Spacer(),
              Icon(
                Icons.repeat,
                size: 24,
              ),
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).p16()
        ],
      ),
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
              const Text("Stand Up").text.semiBold.make(),
              const Text("10:00 - 10:30").text.make()
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
