import 'package:selling_ticket_app/audience.dart';
import 'package:selling_ticket_app/ticket/ticket.dart';
import 'package:selling_ticket_app/ticket_seller.dart';

class Theater {
  TicketSeller _ticketSeller;

  Theater(TicketSeller ticketSeller) : _ticketSeller = ticketSeller;

  void enter(Audience audience) {
    _ticketSeller.sellTo(audience);
  }
}
