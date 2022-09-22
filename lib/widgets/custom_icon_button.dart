import 'package:flutter/material.dart';
import 'package:github/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillBluegray50:
        return ColorConstant.bluegray50;
      case IconButtonVariant.OutlineBlack90044:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillGreen500:
        return ColorConstant.green500;
      case IconButtonVariant.FillBlueA400:
        return ColorConstant.blueA400;
      case IconButtonVariant.FillDeeppurple500:
        return ColorConstant.deepPurple500;
      case IconButtonVariant.FillBluegray800:
        return ColorConstant.bluegray800;
      case IconButtonVariant.FillDeeporange400:
        return ColorConstant.deepOrange400;
      case IconButtonVariant.FillAmber500:
        return ColorConstant.amber500;
      case IconButtonVariant.OutlineWhiteA700:
        return ColorConstant.gray51;
      case IconButtonVariant.OutlineGray300:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.red50;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineWhiteA700:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case IconButtonVariant.OutlineGray300:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillBluegray50:
      case IconButtonVariant.OutlineBlack90044:
      case IconButtonVariant.FillGreen500:
      case IconButtonVariant.FillBlueA400:
      case IconButtonVariant.FillDeeppurple500:
      case IconButtonVariant.FillBluegray800:
      case IconButtonVariant.FillDeeporange400:
      case IconButtonVariant.FillAmber500:
        return null;
      default:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
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
      case IconButtonVariant.OutlineBlack90044:
        return [
          BoxShadow(
            color: ColorConstant.black90044,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              1,
            ),
          )
        ];
      case IconButtonVariant.FillBluegray50:
      case IconButtonVariant.FillGreen500:
      case IconButtonVariant.FillBlueA400:
      case IconButtonVariant.FillDeeppurple500:
      case IconButtonVariant.FillBluegray800:
      case IconButtonVariant.FillDeeporange400:
      case IconButtonVariant.FillAmber500:
      case IconButtonVariant.OutlineWhiteA700:
      case IconButtonVariant.OutlineWhiteA7001_2:
      case IconButtonVariant.OutlineGray300:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  RoundedBorder4,
  CircleBorder15,
}

enum IconButtonPadding {
  PaddingAll8,
  PaddingAll14,
}

enum IconButtonVariant {
  FillBluegray50,
  OutlineBlack90044,
  FillGreen500,
  FillBlueA400,
  FillDeeppurple500,
  FillBluegray800,
  FillDeeporange400,
  FillAmber500,
  OutlineWhiteA700,
  OutlineWhiteA7001_2,
  OutlineGray300,
}
