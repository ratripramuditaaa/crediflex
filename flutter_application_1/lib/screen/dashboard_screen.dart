import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Alexar,",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Welcome Back!",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/images/avatar.png'), // Sesuaikan dengan gambar Anda
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Wallet Balance
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Wallet Balance",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "\$24,562.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.account_balance_wallet, color: Colors.white),
                        Icon(Icons.send, color: Colors.white),
                        Icon(Icons.request_page, color: Colors.white),
                        Icon(Icons.swap_horiz, color: Colors.white),
                        Icon(Icons.history, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Other Services
              Text(
                "Other Services",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildServiceItem(Icons.receipt, "Create Invoice"),
                  _buildServiceItem(Icons.payment, "Pay Bills"),
                  _buildServiceItem(Icons.transfer_within_a_station, "Bank Transfer"),
                  _buildServiceItem(Icons.savings, "Savings"),
                  _buildServiceItem(Icons.electric_bolt, "Electricity"),
                  _buildServiceItem(Icons.movie, "Movie"),
                  _buildServiceItem(Icons.add_box, "Add Money"),
                  _buildServiceItem(Icons.share, "Share"),
                ],
              ),
              SizedBox(height: 20),

              // Recent Activity
              Text(
                "Recent Activity",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              _buildRecentActivity("Alex Macculam", "-\$66.02", "Send Money"),
              _buildRecentActivity("Mac Dinner", "-\$120.02", "Cashout"),
              _buildRecentActivity("Brandon King", "\$250.00", "Receive Money"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildServiceItem(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, size: 30, color: Colors.blueAccent),
        ),
        SizedBox(height: 5),
        Text(label, textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildRecentActivity(String name, String amount, String type) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            //backgroundImage: AssetImage('assets/images/avatar.png'), // Sesuaikan dengan gambar Anda
          ),
          title: Text(name),
          subtitle: Text(type),
          trailing: Text(
            amount,
            style: TextStyle(
              color: amount.startsWith('-') ? Colors.red : Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
