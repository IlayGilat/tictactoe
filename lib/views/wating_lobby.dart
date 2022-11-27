import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/provider/room_data_provider.dart';
import 'package:tictactoe/widgets/custom_textfield.dart';

class WatingLobby extends StatefulWidget {
  const WatingLobby({super.key});

  @override
  State<WatingLobby> createState() => _WatingLobbyState();
}

class _WatingLobbyState extends State<WatingLobby> {
  late TextEditingController roomIdCotroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    roomIdCotroller = TextEditingController(
      text:
          Provider.of<RoomDataProvider>(context, listen: false).roomData['_id'],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    roomIdCotroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Wating for a player to join...."),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          controller: roomIdCotroller,
          hintText: '',
          isReadOnly: true,
        )
      ],
    );
  }
}
