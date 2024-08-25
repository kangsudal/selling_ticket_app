import 'package:selling_ticket_app/audience.dart';
import 'package:selling_ticket_app/ticket/ticket.dart';
import 'package:selling_ticket_app/ticket_seller.dart';

class Theater {
  TicketSeller _ticketSeller;

  Theater(TicketSeller ticketSeller) : _ticketSeller = ticketSeller;

  void enter(Audience audience) {
    if (audience.getBag().hasInvitation()) {
      Ticket ticket = _ticketSeller.getTicketOffice().getTicket();
    } else {
      Ticket ticket = _ticketSeller.getTicketOffice().getTicket();
      audience.getBag().minusAmount(ticket.getFee());
      _ticketSeller.getTicketOffice().plusAmount(ticket.getFee());
      audience.getBag().setTicket(ticket);
    }
  }
}
