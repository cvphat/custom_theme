import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final drawBlackSvg =
    '''<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M11 16H13V22H11V16Z" fill="#131313"/>
<path d="M8 11V13H2L2 11H8Z" fill="#131313"/>
<path d="M15.5355 9.87868L14.1213 8.46447L18.364 4.22183L19.7782 5.63604L15.5355 9.87868Z" fill="#131313"/>
<path d="M14.1214 15.5357L15.5356 14.1215L19.7783 18.3642L18.364 19.7784L14.1214 15.5357Z" fill="#131313"/>
<path d="M13 8H11L11 2L13 2L13 8Z" fill="#131313"/>
<path d="M16 13V11L22 11V13L16 13Z" fill="#131313"/>
<path d="M8.46447 14.1213L9.87868 15.5355L5.63604 19.7782L4.22182 18.364L8.46447 14.1213Z" fill="#131313"/>
<path d="M9.87859 8.4645L8.46438 9.87872L4.22174 5.63607L5.63595 4.22186L9.87859 8.4645Z" fill="#131313"/>
</svg>
''';

final drawWhiteSvg =
    ''' <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M11 16H13V22H11V16Z" fill="white"/>
<path d="M8 11V13H2L2 11H8Z" fill="white"/>
<path d="M15.5355 9.87868L14.1213 8.46447L18.364 4.22183L19.7782 5.63604L15.5355 9.87868Z" fill="white"/>
<path d="M14.1214 15.5357L15.5356 14.1215L19.7783 18.3642L18.364 19.7784L14.1214 15.5357Z" fill="white"/>
<path d="M13 8H11L11 2L13 2L13 8Z" fill="white"/>
<path d="M16 13V11L22 11V13L16 13Z" fill="white"/>
<path d="M8.46447 14.1213L9.87868 15.5355L5.63604 19.7782L4.22182 18.364L8.46447 14.1213Z" fill="white"/>
<path d="M9.87859 8.4645L8.46438 9.87872L4.22174 5.63607L5.63595 4.22186L9.87859 8.4645Z" fill="white"/>
</svg>
''';

enum SpinIconColor { black, white }

class SpinIcon extends StatefulWidget {
  const SpinIcon({super.key, this.color = SpinIconColor.black});
  final SpinIconColor color;

  @override
  State<SpinIcon> createState() => _SpinIconState();
}

class _SpinIconState extends State<SpinIcon> with TickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 1),
  )..repeat(reverse: false);

  late Animation<double> animation = CurvedAnimation(
    parent: controller,
    curve: Curves.linear,
  );

  @override
  Widget build(BuildContext context) {
    String svgString = drawBlackSvg;
    switch (widget.color) {
      case SpinIconColor.black:
        svgString = drawBlackSvg;
        break;
      case SpinIconColor.white:
        svgString = drawWhiteSvg;
        break;
    }
    return RotationTransition(
      turns: animation,
      child: SvgPicture.string(svgString),
    );
  }
}
