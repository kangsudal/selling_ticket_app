import 'package:selling_ticket_app/audience.dart';
import 'package:selling_ticket_app/ticket/ticket.dart';
import 'package:selling_ticket_app/ticket_office.dart';

class TicketSeller {
  TicketOffice _ticketOffice;

  TicketSeller(TicketOffice ticketOffice) : _ticketOffice = ticketOffice;

  void sellTo(Audience audience) {
    //ticket -> Bag에서 꺼내 지불된 금액
    int ticketFee = audience.buy(_ticketOffice.getTicket());
    //가방에서 뺏은 돈을 매표소 매출로 옮겨넣는다.
    _ticketOffice.plusAmount(ticketFee);
  }
}
