import 'package:get/get.dart';
import 'package:note_taker/bindings/app_binding.dart';
import 'package:note_taker/res/routes/route_names.dart';
import 'package:note_taker/view/note_add/add_note.dart';
import 'package:note_taker/view/note_list/note_list_screen.dart';
import 'package:note_taker/view/note_read/note_read_screen.dart';
import 'package:note_taker/view/signup/signup_screen.dart';
import '../../view/login/login_screen.dart';

class AppRoute {
  static routeList() => [
        GetPage(
            name: RouteName.loginScreen,
            page: () => LoginScreen(),
            binding: LoginBinding(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 110)),
        GetPage(
            name: RouteName.signupScreen,
            page: () => SignupScreen(),
            binding: SignupBinding(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 110)),
        GetPage(
            name: RouteName.addNoteScreen,
            page: () => AddNoteScreen(email: Get.arguments),
            binding: AddNoteBinding()),
        GetPage(
            name: RouteName.noteReaderScreen,
            page: () => NoteReader(doc: Get.arguments),
            binding: NoteReaderBinding()),
        GetPage(
            name: RouteName.noteListScreen,
            page: () => NoteListScreen(userEmail: Get.arguments),
            binding: NoteListBinding())
      ];
}
