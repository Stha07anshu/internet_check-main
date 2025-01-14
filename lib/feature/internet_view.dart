import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_check/common/internet_checker.dart';



class InternetCheckView extends StatelessWidget {
  const InternetCheckView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Check'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final connectivityStatus = ref.watch(connectivityStatusProvider);
            if (connectivityStatus == ConnectivityStatus.isConnected) {
              return const Text(
                'Connected',
                style: TextStyle(fontSize: 24),
              );
            } else {
              return const Text(
                'Disconnected',
                style: TextStyle(fontSize: 24),
              );
            }
          },
        ),
      ),
    );
  }
}