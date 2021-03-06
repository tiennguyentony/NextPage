import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextpage/controllers/search_controller.dart';
import 'package:nextpage/models/user.dart';
import 'package:nextpage/views/screens/profile_screen.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final SearchController searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return Obx((){
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                title: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                      filled: false,
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      )),
                  onFieldSubmitted: (value) => searchController.searchUser(value),
                )),
            body: searchController.searchedUsers.isEmpty
                ? const Center(
                    child: Text('Search for users!',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  )
                : ListView.builder(
                    itemCount: searchController.searchedUsers.length,
                    itemBuilder: (context, index) {
                      User user = searchController.searchedUsers[index];
                      return InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder:(context) => ProfileScreen(uid: user.uid ))),
                        child: ListTile(
                            leading: CircleAvatar(
                          backgroundImage: NetworkImage( user.profilePhoto),
                        ),
                        title: Text(user.name,style: const TextStyle(fontSize: 18, color: Colors.black))
                        ),
                      );
                    },
                  ));
      }
    );
  }
}
