import 'package:flutter/material.dart';
import 'package:projek_pertama/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Projek pertama",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 50),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukan Email',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.grey[200],
                ),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukan Password',
                    suffixIcon: Icon(Icons.visibility)),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) =>HomePage()));

                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Masuk berhasil'),
                      backgroundColor: Colors.blueAccent,
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueGrey[900]),
                  child: const Text('Asup')
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
