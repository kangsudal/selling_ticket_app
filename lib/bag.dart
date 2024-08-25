import 'package:selling_ticket_app/ticket/ticket.dart';

class Bag {
  int _amount = 0;
  Invitation? _invitation;
  Ticket? _ticket;

  Bag(Invitation? invitation, int amount)
      : _invitation = invitation,
        _amount = amount;

  bool hasInvitation() {
    print('이 관객은 초대장이 있습니까?${_invitation != null}');
    return _invitation != null;
  }

  bool hasTicket() {
    //질문4: 그러면 이 메소드는 언제 쓰이는가?
    return _ticket != null;
  }

  void setTicket(Ticket ticket) {
    print('bag의 ticket 상태:$_ticket');
    //질문3: 근데 이러면 티켓을 한장밖에 못들고있지 않나 항상?
    _ticket = ticket;
    print('bag의 ticket 상태:$_ticket');
  }

  void minusAmount(int amount) {
    print('가방에서 $amount원이 나갔습니다.');
    _amount -= amount;
  }

  void plusAmount(int amount) {
    _amount += amount;
  }
}
