class BusinessUnits {
  String documentID;
  String businessUnit;

  BusinessUnits({this.documentID, this.businessUnit});

  factory BusinessUnits.fromDoc(dynamic doc) => BusinessUnits(
      documentID: doc.documentID, businessUnit: doc["BusinessUnit"]);
}
