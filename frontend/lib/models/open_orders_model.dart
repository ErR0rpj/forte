//Open orders of buy or sell in each stock
import 'package:forte/models/forte_model.dart';
import 'package:forte/models/user_model.dart';

class OpenOrdersModel extends ForteModel {
  //There are two order types: BUY, SELL
  final String orderType;
  int quantity;
  //Bid price for buyer or Ask price for seller
  double proposedPrice;
  //The user who has opened this order
  final UserModel user;
  final DateTime timeOfOrder;

  //Is the order executed or not. If its executed
  //then isOpen will become false.
  bool isExecuted;
  DateTime? timeOfExecution;
  //Is the order still open?
  bool isOpen;
  //Reason for order closure: Cancelled by user, Executed successfully,
  //Cancelled due to timeout, Executed unsuccessfully
  String? reasonForClose;

  OpenOrdersModel({
    required super.forteId,
    required super.forteName,
    required super.forteSymbol,
    required this.orderType,
    this.quantity = 0,
    this.proposedPrice = 0.0,
    required this.user,
    required this.timeOfOrder,
    this.isExecuted = false,
    this.timeOfExecution,
    this.isOpen = true,
    this.reasonForClose,
  });
}
