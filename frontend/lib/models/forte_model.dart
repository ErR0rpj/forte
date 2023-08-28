//Forte refers to the stock of a person
import 'package:forte/models/open_orders_model.dart';

class ForteModel {
  //Unique ID for each stock for storing in DB
  //THis can be either unique or same as symbol
  final String forteId;
  //Name of the stock, Eg. Virat Kohli
  final String forteName;
  //Symbol or short form. Eg. VRKL
  final String forteSymbol;
  //A person can have multiple categories
  final List<String>? categories;

  //ForteScores of the forte (stock)
  double currentForteScore;
  double todayHighForteScore;
  double todayLowForteScore;
  double allTimeHighForteScore;
  double allTimeLowForteScore;
  double prevCloseForteScore;
  double todayOpenForteScore;
  //Stores the close ForteScore of each dates.
  List<ForteHistory>? forteScoreHistory;

  //Stores the current open orders for this stock
  List<OpenOrdersModel>? currentOpenOrders;

  ForteModel({
    required this.forteId,
    required this.forteName,
    required this.forteSymbol,
    this.categories,
    this.currentForteScore = -1,
    this.todayHighForteScore = -1,
    this.todayLowForteScore = -1,
    this.allTimeHighForteScore = -1,
    this.allTimeLowForteScore = -1,
    this.prevCloseForteScore = -1,
    this.todayOpenForteScore = -1,
    this.forteScoreHistory,
    this.currentOpenOrders,
  });
}

//Forte history stores each day forte details
class ForteHistory extends ForteModel {
  final double closeForteScore;
  final DateTime dateTime;

  ForteHistory({
    required super.forteId,
    required super.forteName,
    required super.forteSymbol,
    required this.closeForteScore,
    required this.dateTime,
  });
}
