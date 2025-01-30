import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:sm_modules/sm_ui_kit.dart';

void showErrorToast(String text,
    [Duration duration = const Duration(seconds: 5)]) {
  var cancel = BotToast.showCustomNotification(
    duration: duration,
    toastBuilder: (_) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 6),
                  child: Icon(
                    Icons.warning,
                    color: Colors.redAccent,
                    size: 16,
                  ),
                ),
                Flexible(
                  child: Text(
                    text,
                    style: AT.t.b14.copyWith(color: Colors.white),
                    softWrap: true,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

void showInfoToast(
  String text, {
  BuildContext? context,
  Duration duration = const Duration(seconds: 5),
}) {
  var cancel = BotToast.showCustomNotification(
    duration: duration,
    toastBuilder: (_) {
      return DecoratedBox(
        decoration: BoxDecoration(
            color: AppColorsDark.primary,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                width: 1,
                color: AppColorsDark.primaryLight)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 300),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Icon(
                    AppIcons.check,
                    color: AppColorsDark.grey6,
                    size: 20,
                  ),
                ),
                Flexible(
                  child: Text(
                    text,
                    style: AT.t.b16.copyWith(
                        color: AppColorsDark.grey6),
                    softWrap: true,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

void showAttentionToast(
    String text, {
      BuildContext? context,
      Duration duration = const Duration(seconds: 5),
    }) {
  var cancel = BotToast.showCustomNotification(
    duration: duration,
    toastBuilder: (_) {
      return DecoratedBox(
        decoration: BoxDecoration(
            color: AppColorsDark.grey6,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                width: 1,
                color: AppColorsDark.grey5)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 350),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    text,
                    style: AT.t.b16.copyWith(
                        color: AppColorsDark.white),
                    softWrap: true,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
