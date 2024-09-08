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

  int hold(Ticket ticket){
    if (hasInvitation()) {
      //초대장이 있다면 돈 안내고 가방의 돈을 지킨채 ㅋㅋ 공짜로 티켓을 얻는다.
      //티켓을 얻었다고 얻은 이후의 내용은 따로 없는듯.
      //null로 설정돼있는(티켓이 없는) 상태에서 매표소에서 얻은 ticket을 쥐어준다.
      setTicket(ticket);
      return 0;
      //질문5: Invitation을 삭제시키는 작업이 필요할것같다. 한번 얻은거로 그날 종일 패스권이 아니니깐
    } else {
      //불행히도 초대장이 없는 관객은 가방에 돈이 줄어드는 코드가 들어간다.
      minusAmount(ticket.getFee());
      setTicket(ticket);
      //가방에서 뺏은 돈을 매표소 매출로 옮겨넣기위해 티켓비를 반환한다.
      // _ticketOffice.plusAmount(ticket.getFee());
      return ticket.getFee();
  }
}
