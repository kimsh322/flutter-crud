import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const MainLayout({
    required this.title,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _navigation(context),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: child,
      ),
    );
  }

  Widget _navigation(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: double.infinity,
      color: Theme.of(context).colorScheme.inversePrimary,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    '회원정보보기',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )),
              const Divider(color: Colors.black),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    '로그아웃',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )),
              const Divider(color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
