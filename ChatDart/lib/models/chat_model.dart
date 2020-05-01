class ChatModel {

  final String name;
  String message;
  final String time;
  final String imageUrl;

  ChatModel({this.name, this.message, this.time, this.imageUrl});

}

//Se muestran los datos en la aplicacion, cambiarlos a manera con FireBase
List<ChatModel> messageData = [
  new ChatModel(
    name: "User 1",
    message: "Hola, como estas?",
    time: "15:30",
    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/800px-User_icon_2.svg.png",
  ),
  new ChatModel(
    name: "User 2",
    message: "Hola, como estas?",
    time: "15:30",
    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/800px-User_icon_2.svg.png",
  ),
  new ChatModel(
    name: "User 3",
    message: "Hola, como estas?",
    time: "15:30",
    imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/800px-User_icon_2.svg.png",
  ),
];