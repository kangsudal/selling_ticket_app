class Invitation {
  DateTime _when; //초대일자

  Invitation({required when}) : _when = when;
}

class Ticket {
  int _fee;

  Ticket({required int fee}) : _fee = fee;

  int getFee() {
    return _fee;
  }
}
