
import 'package:beared_friend/Member%20Module/lib/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DistanceFilter extends StatefulWidget {
  final double distance;
  final double maxDistance;
  final ValueChanged<double> onChanged;

  DistanceFilter({required this.distance, required this.maxDistance, required this.onChanged});

  @override
  _DistanceFilterState createState() => _DistanceFilterState();
}

class _DistanceFilterState extends State<DistanceFilter> {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _progress = widget.distance / widget.maxDistance;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Distance Filter',
    style: TextStyle(
      color: AppColors.white60Colors,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
    ),
        ),
        Row(
          children: [
            Text('${(_progress * widget.maxDistance).toStringAsFixed(2)} km',
              style: TextStyle(fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.white38Colors,
              ),
            ),
          SliderTheme(
            data: SliderThemeData(
            trackHeight: 3.h,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
            ),
            child:Slider(
              value: _progress,
              onChanged: (value) {
                setState(() {
                  _progress = value;
                });
                widget.onChanged(value * widget.maxDistance);
              },
              activeColor: AppColors.purpleAccentColors,
              inactiveColor: Colors.grey[300],
            ),),
            Text('${widget.maxDistance.toStringAsFixed(2)} km',
              style: TextStyle(
                color: AppColors.white38Colors,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
