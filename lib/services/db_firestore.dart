import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kpioperacoes/models/businessunits.dart';
import 'package:kpioperacoes/models/portfolios.dart';
import 'package:kpioperacoes/services/db_firestore_api.dart';

class DbFirestoreService implements DbApi {
  final Firestore _firestore = Firestore.instance;
  String _collectionBusinessUnits = "BusinessUnits";
  String _collectionPortfolios = "Portfolios";

  DbFirestoreService() {
    _firestore.settings(timestampsInSnapshotsEnabled: true);
  }

  // Métodos para a collection BusinessUnits
  //
  Stream<List<BusinessUnits>> getBusinessUnitList(String businessUnits) {
    return _firestore
        .collection(_collectionBusinessUnits)
        .where('BusinessUnit', isEqualTo: businessUnits)
        .snapshots()
        .map((QuerySnapshot snapshot) {
      List<BusinessUnits> _businessUnitDocs =
          snapshot.documents.map((doc) => BusinessUnits.fromDoc(doc)).toList();
      return _businessUnitDocs;
    });
  }

  Future<bool> addBusinessUnit(BusinessUnits businessUnits) async {
    DocumentReference _documentReference = await _firestore
        .collection(_collectionBusinessUnits)
        .add({"BusinessUnit": businessUnits.businessUnit});
    return _documentReference.documentID != null;
  }

  void updateBusinessUnit(BusinessUnits businessUnits) async {
    await _firestore
        .collection(_collectionBusinessUnits)
        .document(businessUnits.documentID)
        .updateData({"BusinessUnit": businessUnits.businessUnit}).catchError(
            (error) => print("Error updating: $error"));
  }

  void deleteBusinessUnit(BusinessUnits businessUnits) async {
    await _firestore
        .collection(_collectionBusinessUnits)
        .document(businessUnits.documentID)
        .delete()
        .catchError((error) => print("Error deleting: $error"));
  }

  // Métodos para a collection Portfolios
  //
  Stream<List<Portfolios>> getPortfolioList(String portfolios) {
    return _firestore
        .collection(_collectionPortfolios)
        .where('Portfolio', isEqualTo: portfolios)
        .snapshots()
        .map((QuerySnapshot snapshot) {
      List<Portfolios> _portfolioDocs =
          snapshot.documents.map((doc) => Portfolios.fromDoc(doc)).toList();
      return _portfolioDocs;
    });
  }

  Future<bool> addPortfolio(Portfolios portfolios) async {
    DocumentReference _documentReference = await _firestore
        .collection(_collectionPortfolios)
        .add({
      "BusinessUnit": portfolios.businessUnit,
      "Portfolio": portfolios.portfolio
    });
    return _documentReference.documentID != null;
  }

  void updatePortfolio(Portfolios portfolios) async {
    await _firestore
        .collection(_collectionPortfolios)
        .document(portfolios.documentID)
        .updateData({
      "BusinessUnit": portfolios.businessUnit,
      "Portfolio": portfolios.portfolio
    }).catchError((error) => print("Error updating: $error"));
  }

  void deletePortfolio(Portfolios portfolios) async {
    await _firestore
        .collection(_collectionPortfolios)
        .document(portfolios.documentID)
        .delete()
        .catchError((error) => print("Error deleting: $error"));
  }
}
