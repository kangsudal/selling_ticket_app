import 'package:selling_ticket_app/ticket/ticket.dart';

class Bag {
  int _amount = 0;
  Invitation? _invitation;
  Ticket? _ticket;

  Bag(Invitation? invitation, int amount)
      : _invitation = invitation,
        _amount = amount;

  bool hasInvitation() {
    return _invitation != null;
  }

  bool hasTicket() {
    return _ticket != null;
  }

  void setTicket(Ticket ticket) {
    //질문3: 근데 이러면 티켓을 한장밖에 못들고있지 않나 항상?
    _ticket = ticket;
  }

  void minusAmount(int amount) {
    _amount -= amount;
  }

  void plusAmount(int amount) {
    _amount += amount;
  }
}
