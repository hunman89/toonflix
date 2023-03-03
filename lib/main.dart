import 'package:flutter/material.dart';
import 'package:toonflix/widget/button.dart';
import 'package:toonflix/widget/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            'Welcome Back',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black,
                      ),
                      Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    icon: Icons.euro_rounded,
                    code: 'EUR',
                    amount: '6 428',
                    isInverted: false,
                    order: 1,
                  ),
                  const CurrencyCard(
                    name: 'Bitcoin',
                    icon: Icons.currency_bitcoin_rounded,
                    code: 'BTC',
                    amount: '55 622',
                    isInverted: true,
                    order: 2,
                  ),
                  const CurrencyCard(
                    name: 'Dollar',
                    icon: Icons.attach_money_rounded,
                    code: 'USD',
                    amount: '9 785',
                    isInverted: false,
                    order: 3,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
