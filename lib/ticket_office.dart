import 'package:selling_ticket_app/ticket/ticket.dart';

//매표소
class TicketOffice {
  int _amount = 0; //판매금액
  List<Ticket> _tickets = []; //관객에게 판매할 티켓

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
