import 'package:flutter/material.dart';
import 'package:portfolio_web_app/core/utils/helpers.dart';
import 'package:portfolio_web_app/features/main/presentation/widgets/link_button.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class LinksWidget extends StatefulWidget {
  const LinksWidget({super.key});

  @override
  State<LinksWidget> createState() => _LinksWidgetState();
}

class _LinksWidgetState extends State<LinksWidget> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Wrap(children: []),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          LinkButton(
            onPressed: () {},
            icon: PhosphorIcons.githubLogo(),
            name: 'Github',
          ),
          LinkButton(
            onPressed: () {},
            icon: PhosphorIcons.linkedinLogo(),
            name: 'Linkedin',
          ),
          LinkButton(
            onPressed: () {},
            icon: PhosphorIcons.telegramLogo(),
            name: 'Telegram',
          ),
          LinkButton(
            onPressed: () {},
            icon: PhosphorIcons.instagramLogo(),
            name: 'Instagram',
          ),
        ],
      ),
    );
  }
}
