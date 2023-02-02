class UnbordingContent {
  String title;
  String discription;
  String image;

  UnbordingContent(
      {required this.title, required this.image, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      image: 'assets/images/on_boarding1.svg',
      title: 'Choose your desire product',
      discription: "It is now very easy to reach the best quality among all."),
  UnbordingContent(
      image: 'assets/images/on_boarding2.svg',
      title: 'Complete shipping from Warehouse',
      discription: "It is now very easy to reach the best quality among all."),
  UnbordingContent(
      image: 'assets/images/on_boarding3.svg',
      title: "Get product at your door",
      discription: "It is now very easy to reach the best quality among all."),
];
