import 'package:kpioperacoes/models/businessunits.dart';
import 'package:kpioperacoes/models/portfolios.dart';

abstract class DbApi {

  Stream<List<BusinessUnits>> getBusinessUnitList(String businessUnits);
  //Future<BusinessUnits> getBusinessUnit(String documentID);
  Future<bool> addBusinessUnit(BusinessUnits businessUnits);
  void updateBusinessUnit(BusinessUnits businessUnits);
  //void updateBusinessUnitWithTransaction(BusinessUnits businessUnits);
  void deleteBusinessUnit(BusinessUnits businessUnits);

  Stream<List<Portfolios>> getPortfolioList(String portfolios);
  //Future<Portfolios> getPortfolio(String documentID);
  Future<bool> addPortfolio(Portfolios portfolios);
  void updatePortfolio(Portfolios portfolios);
  //void updatePortfolioWithTransaction(Portfolios portfolios);
  void deletePortfolio(Portfolios portfolios);

}