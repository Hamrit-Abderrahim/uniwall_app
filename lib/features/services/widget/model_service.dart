class Service {
  final double price;
  final String image;
  final String title;

  Service({required this.price, required this.image, required this.title});
}

List<Service> service = [
  Service(price: 50, image: 'assets/meal/PizzaC.png', title: 'Pizza Carré'),
  Service(price: 350, image: 'assets/meal/PizzaC2.png', title: 'Tacos'),
  Service(
      price: 50, image: 'assets/meal/Meal Pic.png', title: 'SandwitchPanini'),
];

class AddService {
  final double price;
  final int totle;
  final String title;

  AddService({required this.price, required this.totle, required this.title});
}
