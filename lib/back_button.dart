import 'dart:ui' show ImageFilter;

import 'package:blur/blur.dart';
import 'package:example_custom_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final drawBackground =
    '''<svg width="88" height="88" viewBox="0 0 88 88" fill="none" xmlns="http://www.w3.org/2000/svg">
<g filter="url(#filter0_f_430_157)">
<circle cx="44" cy="44" r="20" fill="url(#paint0_linear_430_157)"/>
</g>
<defs>
<filter id="filter0_f_430_157" x="0" y="0" width="88" height="88" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
<feFlood flood-opacity="0" result="BackgroundImageFix"/>
<feBlend mode="normal" in="SourceGraphic" in2="BackgroundImageFix" result="shape"/>
<feGaussianBlur stdDeviation="12" result="effect1_foregroundBlur_430_157"/>
</filter>
<linearGradient id="paint0_linear_430_157" x1="24" y1="44" x2="64" y2="44" gradientUnits="userSpaceOnUse">
<stop stop-color="#00AEEE"/>
<stop offset="1" stop-color="#3CDEC8"/>
</linearGradient>
</defs>
</svg>
''';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});
  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   width: 200,
    //   height: 200,
    //   child: Stack(
    //     fit: StackFit.expand, // Ensure the stack fills the size
    //     children: [
    //       // Background with visible content to blur
    //       Container(
    //         width: 200,
    //         height: 200,
    //         decoration: const BoxDecoration(
    //           gradient: LinearGradient(
    //             colors: [Color(0xFF09AEEE), Color(0xFF3CDEC8)],
    //             begin: Alignment.topLeft,
    //             end: Alignment.bottomRight,
    //           ),
    //         ),
    //         child: const Center(
    //           child: Text(
    //             'Blur Background',
    //             style: TextStyle(color: Colors.white, fontSize: 16),
    //           ),
    //         ),
    //       ),
    //       // Blurred area with red container
    //       BackdropFilter(
    //         filter: ImageFilter.blur(
    //           sigmaX: 10.0,
    //           sigmaY: 10.0,
    //         ), // Visible blur
    //         child: Center(
    //           child: Container(
    //             width: 40,
    //             height: 40,
    //             // color: Colors.red.withOpacity(0.7), // Red with transparency
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    // return SizedBox(
    //   width: 40,
    //   height: 40,
    //   child: Stack(
    //     children: [
    //       Container(
    //         width: 40,
    //         height: 40,
    //         decoration: BoxDecoration(
    //           gradient: gradient1,
    //           borderRadius: BorderRadius.all(Radius.circular(40)),
    //         ),

    //         child: InkWell(
    //           onTap: () {
    //             Navigator.pop(context);
    //           },
    //           focusColor: Colors.transparent,
    //           highlightColor: Colors.transparent,
    //         ),
    //       ),
    //       SizedBox(
    //         width: 40,
    //         height: 40,
    //         child: BackdropFilter(
    //           filter: ImageFilter.blur(
    //             sigmaX: 5.0,
    //             sigmaY: 5.0,
    //           ), // Visible blur
    //           child: SizedBox(),
    //         ),
    //       ),
    //       Center(child: Icon(Icons.arrow_back, color: charcoal)),
    //     ],
    //   ),
    // );

    // return SizedBox(
    //   height: 40,
    //   width: 40,
    //   child: Blur(
    //     blur: 2.5,
    //     // blurColor: charcoal,
    //     child: Container(
    //       decoration: BoxDecoration(
    //         gradient: gradient1,
    //         borderRadius: BorderRadius.all(Radius.circular(1000)),
    //       ),

    //       child: InkWell(
    //         onTap: () {
    //           Navigator.pop(context);
    //         },
    //         focusColor: Colors.transparent,
    //         highlightColor: Colors.transparent,
    //       ),
    //     ),
    //   ),
    // );

    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFF00AEEE), Color(0xFF3CDEC8)],
                  ),
                ),
              ),
            ),
          ),
          Icon(Icons.arrow_back, size: 18, color: charcoal),
        ],
      ),
    );
  }
}
