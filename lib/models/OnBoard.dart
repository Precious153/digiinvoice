import '../const.dart';

class OnBoard {
  final String image, title, description;

  OnBoard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<OnBoard> demo_data = [
  OnBoard(
    image: image1,
    title: "Get paid faster",
    description: "Share bank details and payment links with your customers",
  ),
  OnBoard(
    image: image2,
    title: "Share Invoice in Seconds",
    description: "Easily share invoice with your customer in no time",
  ),
  OnBoard(
    image: image3,
    title: "Generate reciept quickly",
    description: "Generate quick reciept for your business at any time",
  ),
];
