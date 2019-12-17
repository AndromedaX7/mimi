import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


const double designWidth = 375;
const double designHeight = 667;

double width({double design = designWidth}) {
  return ScreenUtil.getInstance().setWidth(design);
}

double height({double design = designHeight}) {
  return ScreenUtil.getInstance().setHeight(design);
}

double sp(double design) {
  return ScreenUtil.getInstance().setSp(design);
}

double sp2(double design, bool allowFontScaling) {
  return ScreenUtil(allowFontScaling: allowFontScaling).setSp(design);
}

void init(BuildContext context) {
  ScreenUtil.instance = ScreenUtil(width: designWidth, height: designHeight);
  ScreenUtil.instance.init(context);
}
