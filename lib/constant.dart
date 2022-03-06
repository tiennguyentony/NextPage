import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:nextpage/controllers/auth_controller.dart';
import 'package:nextpage/views/screens/add_video_screen.dart';
import 'package:nextpage/views/screens/profile_screen.dart';
import 'package:nextpage/views/screens/search_screen.dart';
import 'package:nextpage/views/screens/video_screen.dart';

const backgroundColor = Colors.white;
var buttonColor = Colors.cyan.shade400;
const borderColor = Colors.black;

var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

var authController = AuthController.instance;

List page = [
  VideoScreen(),
   SearchScreen(),
  const AddVideoScreen(),
  Text('Notification Screen'),
  ProfileScreen(uid: authController.user.uid)
];
