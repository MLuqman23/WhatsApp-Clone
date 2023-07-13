class StatusModel{
  final String name;
  // final String message;
  final String time;
  final String avatar;
  StatusModel({required this.name, required this.time, required this.avatar});
  
}

List<StatusModel> StatusData = [
  StatusModel(
    name: "Luqman",
    time: '8:40',
    avatar: "images/IMG_1535.jpg",
  ),
  
  StatusModel(
    name: "Anurag",
    time: '6:40', 
    
    avatar: 'images/1.jpg',
   
  ),
  StatusModel(
    name: "Sarvesh",
    time: '9:00',
   
    avatar: "images/1.jpg",
  ),
  StatusModel(
    name: "Sandy",
    time: '9:40',
    avatar: "images/maan1.jpg",
  ),
  StatusModel(
    name: "Pankaj",
    time: '8:40',
    avatar: "images/2.jpg",
  ),
  StatusModel(
    name: "Kammo",
    time: '10:00',
    avatar: "images/3.jpg",
  ),
  
  
];