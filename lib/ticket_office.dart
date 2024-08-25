import 'package:selling_ticket_app/ticket/ticket.dart';

class TicketOffice {
  int _amount = 0;
  List<Ticket> _tickets = [];

  TicketOffice(int amount, List<Ticket> tickets)
      : _amount = amount,
        _tickets = tickets;

  Ticket getTicket() {
    Ticket first = _tickets.first;
    _tickets.remove(first);
    return first;
  }

  void minusAmount(int amount) {
    _amount -= amount;
  }

  void plusAmount(int amount) {
    _amount += amount;
  }
}
