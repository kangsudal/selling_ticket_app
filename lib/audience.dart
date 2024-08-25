import 'package:selling_ticket_app/bag.dart';

class Audience{
  Bag _bag;

  Audience(Bag bag):_bag = bag;

  Bag getBag(){
    return _bag;
  }
}