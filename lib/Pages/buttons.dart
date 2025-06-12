import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        height: 100,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 228, 232, 235),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ActionButton(icon: Icons.account_balance_wallet, label: 'Deposit'),
          ActionButton(icon: Icons.swap_horiz, label: 'Transfer'),
          ActionButton(icon: Icons.attach_money, label: 'Withdraw'),
          ActionButton(icon: Icons.apps_sharp, label: 'More')],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Icon(icon, color: Colors.black)),
        Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),)
      ],
    );
  }
}
