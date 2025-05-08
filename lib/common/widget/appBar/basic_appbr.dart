import 'package:flutter/material.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final bool hideBack;
  final bool centerTitle;
  final double? height;
  const BasicAppbar(
      {this.title,
      this.hideBack = false,
      this.centerTitle = false,
      this.actions,
      this.backgroundColor,
      this.height,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      centerTitle: centerTitle,
      automaticallyImplyLeading: false,
      toolbarHeight: height ?? 80,
      title: title ?? const Text(''),
      titleSpacing: 0,
      actions: actions ?? [Container()],
      leading: hideBack
          ? null
          : IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color(0xffF7F7F9), shape: BoxShape.circle),
                child: const Icon(Icons.arrow_back_ios_new,
                    size: 15, color: Color(0xff1B1E28)),
              ),
            ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 70);
}
