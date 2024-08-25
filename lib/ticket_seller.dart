import 'package:selling_ticket_app/ticket_office.dart';

class TicketSeller {
  TicketOffice _ticketOffice;

  TicketSeller(TicketOffice ticketOffice) : _ticketOffice = ticketOffice;

  TicketOffice getTicketOffice() {
    return _ticketOffice;
  }
}
