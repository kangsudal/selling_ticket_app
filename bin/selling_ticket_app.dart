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
  List<Ticket> tickets = [
    Ticket(fee: 1000),
    Ticket(fee: 5000),
  ];
  TicketOffice ticketofficeYongsan = TicketOffice(10000, tickets);
  TicketSeller ticketSeller = TicketSeller(ticketofficeYongsan);
  Theater theater = Theater(ticketSeller);

  Invitation invitation = Invitation(when: DateTime(2025, 1, 24));
  Bag bag = Bag(invitation, 12000);
  Audience audience1 = Audience(bag);
  theater.enter(audience1);
}
