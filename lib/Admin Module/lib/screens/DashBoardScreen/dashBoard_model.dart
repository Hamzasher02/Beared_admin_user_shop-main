class AdminDashBoardModel {
  AdminDashBoardModel({
    required this.registeredMember,
    required this.activeMembers,
    required this.registeredBarberShops,
    required this.activeBarberShops,
    required this.stampAssigned,
    required this.contestParticpants,
  });
  late final int registeredMember;
  late final int activeMembers;
  late final int registeredBarberShops;
  late final int activeBarberShops;
  late final int stampAssigned;
  late final int contestParticpants;

  AdminDashBoardModel.fromJson(Map<String, dynamic> json){
    registeredMember = json['registeredMember'];
    activeMembers = json['activeMembers'];
    registeredBarberShops = json['registeredBarberShops'];
    activeBarberShops = json['activeBarberShops'];
    stampAssigned = json['stampAssigned'];
    contestParticpants = json['contestParticpants'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['registeredMember'] = registeredMember;
    _data['activeMembers'] = activeMembers;
    _data['registeredBarberShops'] = registeredBarberShops;
    _data['activeBarberShops'] = activeBarberShops;
    _data['stampAssigned'] = stampAssigned;
    _data['contestParticpants'] = contestParticpants;
    return _data;
  }
}