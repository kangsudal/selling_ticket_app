import 'package:selling_ticket_app/bag.dart';
import 'package:selling_ticket_app/ticket/ticket.dart';

class Audience{
  Bag _bag;

  Audience(Bag bag):_bag = bag;

  int buy(Ticket ticket){
    //buy 메서드는 인자로 전달된 Ticket을 Bag에 넣은 후 지불된 금액을 반환한다.
    return _bag.hold(ticket);
    // bag에 ticket의 상태를 설정해준다.
    // bag에서 뺏은 돈을 매표소로 전달하기위해 반환해준다.
    }
  }
}