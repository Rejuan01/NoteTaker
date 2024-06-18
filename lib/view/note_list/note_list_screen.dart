import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/res/routes/route_names.dart';
import 'package:note_taker/view/note_list/widgets/add_note_button.dart';
import 'package:note_taker/view/note_list/widgets/logout_button.dart';
import 'package:note_taker/view/note_list/widgets/note_card.dart';
import 'package:note_taker/view_model/controller/note_list_vm.dart';
import 'package:note_taker/view_model/controller/note_reader_view_model.dart';

class NoteListScreen extends StatelessWidget {
  NoteListScreen({super.key, required this.userEmail});
  final String userEmail;
  final noteVm = Get.find<NoteListVMController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        appBar: AppBar(
          title: const Text('Note view'),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          actions: [LogoutButton()],
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: StreamBuilder(
              stream: noteVm.getReference(userEmail).snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.docs.isNotEmpty) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Your Recent Notes',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                return NoteCard(
                                  document: snapshot.data!.docs[index],
                                );
                              },
                              itemCount: snapshot.data!.docs.length,
                            ),
                          )
                        ],
                      );
                    }
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }
                }
                return const Text('No Notes Found');
              },
            )),
        floatingActionButton: AddNoteButton(email: userEmail));
  }
}
