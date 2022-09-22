import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      default:
        return getPadding(
          all: 14,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineGray70011:
        return ColorConstant.gray50;
      case ButtonVariant.FillBlue701:
        return ColorConstant.blue701;
      case ButtonVariant.FillGray202:
        return ColorConstant.gray202;
      default:
        return ColorConstant.bluegray900;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CustomBorderLR4:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              4.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              4.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineGray70011:
        return [
          BoxShadow(
            color: ColorConstant.gray70011,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          )
        ];
      case ButtonVariant.FillBluegray900:
      case ButtonVariant.FillBlue701:
      case ButtonVariant.FillGray202:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterSemiBold16:
        return TextStyle(
          color: ColorConstant.blue700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterRegular10:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.LigconsolataRegular14:
        return TextStyle(
          color: ColorConstant.bluegray700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Ligconsolata',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder4,
  CustomBorderLR4,
  RoundedBorder2,
  RoundedBorder16,
}

enum ButtonPadding {
  PaddingAll14,
  PaddingAll6,
  PaddingAll5,
  PaddingAll9,
}

enum ButtonVariant {
  FillBluegray900,
  OutlineGray70011,
  FillBlue701,
  FillGray202,
  OutlineGray3001_2,
  OutlineGray300,
}

enum ButtonFontStyle {
  InterMedium16,
  InterSemiBold16,
  InterRegular10,
  LigconsolataRegular14,
  InterMedium14Indigo500,
  InterMedium14,
}
