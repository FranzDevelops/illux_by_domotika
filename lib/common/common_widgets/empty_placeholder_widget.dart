import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:illux_by_domotika/common/common_widgets/primary_button.dart';
import 'package:illux_by_domotika/common/constants/app_size.dart';
import 'package:illux_by_domotika/l10n/string_hardcoded.dart';

/// Placeholder widget showing a message and CTA to go back to the home screen.
class EmptyPlaceholderWidget extends StatelessWidget {
  const EmptyPlaceholderWidget({required this.message, super.key});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            gapH32,
            PrimaryButton(
              onPressed: () => context.go('/auth'),
              text: 'Go Home'.hardcoded,
            )
          ],
        ),
      ),
    );
  }
}
