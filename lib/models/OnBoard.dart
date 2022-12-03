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
    image: image2,
    title: "Get paid faster",
    description: "Share bank details and payment links with your customers",
  ),
  OnBoard(
    image: image3,
    title: "Share Invoice in Seconds",
    description: "Easily share inventory with your customer in no time",
  ),
  OnBoard(
    image: image4,
    title: "Generate reciept quickly",
    description: "Generate quick reciept for your business at any time",
  ),
];
