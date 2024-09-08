import 'package:selling_ticket_app/bag.dart';
import 'package:selling_ticket_app/ticket/ticket.dart';

class Audience{
  Bag _bag;

  Audience(Bag bag):_bag = bag;

  int buy(Ticket ticket){
    //buy 메서드는 인자로 전달된 Ticket을 Bag에 넣은 후 지불된 금액을 반환한다.
    if (_bag.hasInvitation()) {
      //초대장이 있다면 돈 안내고 가방의 돈을 지킨채 ㅋㅋ 공짜로 티켓을 얻는다.
      //티켓을 얻었다고 얻은 이후의 내용은 따로 없는듯.
      //null로 설정돼있는(티켓이 없는) 상태에서 매표소에서 얻은 ticket을 쥐어준다.
      _bag.setTicket(ticket);
      return 0;
      //질문5: Invitation을 삭제시키는 작업이 필요할것같다. 한번 얻은거로 그날 종일 패스권이 아니니깐
    } else {
      //불행히도 초대장이 없는 관객은 가방에 돈이 줄어드는 코드가 들어간다.
      _bag.minusAmount(ticket.getFee());
      _bag.setTicket(ticket);
      //가방에서 뺏은 돈을 매표소 매출로 옮겨넣는다.
      // _ticketOffice.plusAmount(ticket.getFee());
      return ticket.getFee();
    }
  }
}