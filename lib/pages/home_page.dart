import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/services/auth/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void signOut() async {
    final authService = Provider.of<AuthService>(context, listen: false);
    await authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home Page')),
        actions: [
          IconButton(onPressed: signOut, icon: const Icon(Icons.logout))
        ],
      ),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('users').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Error ... ');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Waiting...');
        }
        return ListView(
          children: snapshot.data!.docs
              .map((docs) => _buildUserListItem(docs))
              .toList(),
        );
      },
    );
  }

  Widget _buildUserListItem(DocumentSnapshot document) {
    Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
    if (_firebaseAuth.currentUser!.email != data['email']) {
      return ListTile(
        title: Text(data['email']),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ChatPage(
                        receiverUserEmail: data['email'],
                        receiverUserID: data['uid'],
                      )));
        },
      );
    } else {
      return Container();
    }
  }
}