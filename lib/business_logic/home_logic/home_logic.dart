import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/presentation/screens/calls_screen/calls_screen.dart';
import 'package:untitled3/presentation/screens/chat_screen/chat_screen.dart';
import 'package:untitled3/presentation/screens/state_screen/state_screen.dart';

import '../../presentation/model/item_chat_model/item_chat_model.dart';
import '../../presentation/screens/groups_screen/groups_screen.dart';
part 'home_state.dart';

class HomeLogic extends Cubit<HomeState> {
  HomeLogic() : super(AppIntialStates());

  static HomeLogic get(context) => BlocProvider.of<HomeLogic>(context);


  // variables
int pageSelect=1;

//function
  void addChat(
      {required List<ItemChat> data,
      required String name,
      required String msg,
      required String image,
      required bool point}) {
    data.add(ItemChat(name: name, msg: msg, image: image, point: point));
    emit(AddChatState());
}
//function select page
void selectPage(int index){
    pageSelect=index;
    emit(SelectPage());
}
//function change page
Widget changePage(){
  if(pageSelect==0){
    return const GroupsScreen();
  }else if(pageSelect==1){
    return const ChatScreen();
  }else if(pageSelect==2){
    return const StateScreen();
  }
  else if(pageSelect==3){
    return const CallsScreen();
  }else{
   return Container();
  }
  emit(ChangePage());
}

  }






