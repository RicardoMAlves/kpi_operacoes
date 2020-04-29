class Portfolios {
  String documentID;
  String businessUnit;
  String portfolio;

  Portfolios({this.documentID, this.businessUnit, this.portfolio});

  factory Portfolios.fromDoc(dynamic doc) => Portfolios(
      documentID: doc.documentID,
      businessUnit: doc["BusinessUnit"],
      portfolio: doc["Portfolio"]);
}
