// import 'package:selling_ticket_app/selling_ticket_app.dart' as selling_ticket_app;
//
// void main(List<String> arguments) {
//   print('Hello world: ${selling_ticket_app.calculate()}!');
// }

import 'package:selling_ticket_app/audience.dart';
import 'package:selling_ticket_app/bag.dart';
import 'package:selling_ticket_app/theater.dart';
import 'package:selling_ticket_app/ticket/ticket.dart';
import 'package:selling_ticket_app/ticket_office.dart';
import 'package:selling_ticket_app/ticket_seller.dart';

void main(List<String> arguments) {
  //가격 정보를 가지고있는 티켓 생성
  List<Ticket> tickets = [
    Ticket(fee: 1000),
    Ticket(fee: 5000),
  ];

  //매표소에 초기 판매금액과 생성한 티켓 부여
  TicketOffice ticketofficeYongsan = TicketOffice(10000, tickets);

  TicketSeller ticketSeller = TicketSeller(ticketofficeYongsan);  //질문2: 중간과정에 들어가는 TicketSeller의 역할은 뭘까? 어짜피 Theaterrk 다 해주는데
  Theater theater = Theater(ticketSeller);

  //초대장이 있는 관객
  Invitation invitation = Invitation(when: DateTime(2025, 1, 24)); //초대일자가 2025/1/24인 초대장 생성
  Bag bag = Bag(invitation, 12000); // 가방에 이 초대장과 12000원을 넣어준다.
  Audience audience1 = Audience(bag); //관객에게 가방을 쥐어준다.
  theater.enter(audience1); //극장은 관객입장을 위해 그 과정 프로세스를 실행한다.

  //초대장이 없는 관객
  Bag bag2 = Bag(null, 32000);
  Audience audience2 = Audience(bag2);
  theater.enter(audience2);

  //질문: 그러면 초대장이 있는 관객은 매표소에 있는 0번째 랜덤한 금액의 티켓을 꽁으로 얻을 수 있는거 아닌가?
}
