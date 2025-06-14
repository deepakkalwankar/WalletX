import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transactionhistory extends StatelessWidget {
  const Transactionhistory({super.key});

  @override
  Widget build(BuildContext context) {
    final String formattedDate = DateFormat(
      'dd MMM yyyy, hh:mm a',
    ).format(DateTime.now());
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(formattedDate, style: TextStyle(color: Colors.black, fontSize: 15)),
                Row(children: [Text("All Transactions")]),
              ],
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(Icons.fitness_center, color: Colors.purpleAccent),
            ),
            title: Text("Gym"),
            subtitle: Text("Payment"),
            trailing: Text(
              "-\$45.99",
              // style: TextStyle(color: Colors.red),
            ),
          ),
          Divider(color: Colors.grey[200]),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(Icons.account_balance, color: Colors.teal),
            ),
            title: Text("Bank of India"),
            subtitle: Text("Deposit"),
            trailing: Text("+\$1,328.00", style: TextStyle(color: Colors.teal)),
          ),
          Divider(color: Colors.grey[200]),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 239, 243, 245),
              child: Icon(Icons.send, color: Colors.orangeAccent),
            ),
            title: Text("To Brody Armando"),
            subtitle: Text("Sent"),
            trailing: Text(
              "-\$699.00",
              // style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
