import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/components/orgs_menu_card.dart';
import 'package:flutter_nuvigator/components/orgs_rate_app.dart';
import 'package:flutter_nuvigator/core/app_colors.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:nuvigator/next.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nuvigator = Nuvigator.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menu',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkGrey,
                ),
              ),
              SizedBox(height: 20),
              OrgsRateApp(),
              SizedBox(height: 30),
              OrgsMenuCard(
                text: 'Início',
                icon: Icons.home,
                action: () => nuvigator.open(Routes.home),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Favoritos',
                icon: Icons.favorite,
                action: () => nuvigator.open(Routes.favorites),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Perfil',
                icon: Icons.person,
                action: () async {
                  final result = await nuvigator
                      .open('myapp://${Routes.profile}?name=orgs');
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Rota encerrada'),
                      content: Text('Valor retornado $result'),
                      actions: [
                        TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Fechar'))
                      ],
                    ),
                  );
                },
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Métodos de pagamento',
                icon: Icons.credit_card,
                action: () => nuvigator.open(Routes.payment),
              ),
              Divider(),
              OrgsMenuCard(
                text: 'Sair',
                icon: Icons.logout,
                action: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.login,
                  (route) => false,
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
