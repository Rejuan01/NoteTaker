import 'package:get/get.dart';
import 'package:note_taker/view_model/controller/add_note_view_model.dart';
import 'package:note_taker/view_model/controller/note_list_vm.dart';
import 'package:note_taker/view_model/controller/note_reader_view_model.dart';
import 'package:note_taker/view_model/controller/signup_view_model.dart';

import '../view_model/controller/login_view_model.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginVMController>(() => LoginVMController());
  }
}

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupVMController>(() => SignupVMController());
  }
}

class AddNoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddNoteViewModelController>(() => AddNoteViewModelController());
  }
}

class NoteReaderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoteReaderViewModelController>(
        () => NoteReaderViewModelController());
  }
}

class NoteListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NoteListVMController>(() => NoteListVMController());
  }
}
