import 'package:forte/models/forte_model.dart';
import 'package:forte/models/open_orders_model.dart';

class UserModel {
  //Primary Key: Unique user id for each user
  //UserId can be: mobile number, email or google UID
  final String userId;
  final String firstName;
  final String lastName;
  final int? age;
  final String? gender;
  final String? email;
  final String mobileNumber;
  final String? imageURL;

  //Coins left with user in the wallet
  double forteCoins;

  //Current portfolio of user.
  List<UserForteModel>? portfolio;

  //Current open orders
  List<OpenOrdersModel>? openOrders;

  //Networth history of user.
  List<UserNetworthModel>? networthHistory;

  UserModel({
    required this.userId,
    required this.firstName,
    this.lastName = '',
    this.age,
    this.gender,
    this.email,
    required this.mobileNumber,
    this.imageURL,
    this.forteCoins = 0,
    this.portfolio,
    this.openOrders,
    this.networthHistory,
  });
}

//Stores the user portfolio of a particular stock
class UserForteModel extends ForteModel {
  //Current total quantity with the user
  int totalQuantity;
  double averagePrice;

  UserForteModel({
    required super.forteId,
    required super.forteName,
    required super.forteSymbol,
    this.totalQuantity = 0,
    this.averagePrice = 0.0,
  });
}

//User's networth will be calculated and stored everyday
//after the closing time of the market.
class UserNetworthModel extends UserModel {
  final double coins;
  final double totalForteValue;
  double? totalNetworth = 0;
  final DateTime dateTime;

  UserNetworthModel({
    required super.userId,
    required super.firstName,
    required super.mobileNumber,
    required this.coins,
    required this.totalForteValue,
    required this.dateTime,
  }) {
    totalNetworth = coins + totalForteValue;
  }
}
