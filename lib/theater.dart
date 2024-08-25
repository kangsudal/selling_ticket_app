import 'package:selling_ticket_app/audience.dart';
import 'package:selling_ticket_app/ticket/ticket.dart';
import 'package:selling_ticket_app/ticket_seller.dart';

class Theater {
  TicketSeller _ticketSeller;

  Theater(TicketSeller ticketSeller) : _ticketSeller = ticketSeller;

  void enter(Audience audience) {
    if (audience.getBag().hasInvitation()) {
      //초대장이 있다면 돈 안내고 가방의 돈을 지킨채 ㅋㅋ 공짜로 티켓을 얻는다.
      //티켓을 얻었다고 얻은 이후의 내용은 따로 없는듯.
      Ticket ticket = _ticketSeller.getTicketOffice().getTicket();
      //null로 설정돼있는(티켓이 없는) 상태에서 매표소에서 얻은 ticket을 쥐어준다.
      audience.getBag().setTicket(ticket);
    } else {
      Ticket ticket = _ticketSeller.getTicketOffice().getTicket();
      //불행히도 초대장이 없는 관객은 가방에 돈이 줄어드는 코드가 들어간다.
      audience.getBag().minusAmount(ticket.getFee());
      //가방에서 뺏은 돈을 매표소 매출로 옮겨넣는다.
      _ticketSeller.getTicketOffice().plusAmount(ticket.getFee());
      audience.getBag().setTicket(ticket);
    }
  }
}
