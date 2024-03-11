List<BoardingModel> onBoarding = [
  BoardingModel(
      'assets/on_boarding/Savings 1.png',
      'Enjoy the freedom to pay anytime, anywhere',
      'Go cashless and hassle-free with our e-payment feature, providing secure and efficient transactions for university services and beyond.'),
  BoardingModel('assets/on_boarding/Savings 2.png', 'P2P transactions',
      'Easily send money and share expenses to friends with our student-to-student transaction feature, simplifying your university life!'),
  BoardingModel(
      'assets/on_boarding/Savings 3.png',
      'Saving effortlessly with our MicroSaving feature',
      'Take control of your finances with our MicroSaving feature, empowering you to save smarter.'),
];

class BoardingModel {
  late String image;
  late String title;
  late String body;
  BoardingModel(this.image, this.title, this.body);
}
