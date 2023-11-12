import 'package:crypto_proj/constants/api_path.dart';
import 'package:crypto_proj/model/crypto_data_model.dart';
import 'package:crypto_proj/services/http_service.dart';
import 'package:flutter/material.dart';

class ExchangeDataController extends ChangeNotifier {
  final HttpService _httpService = HttpService();
  CryptoDataModel? topCurrency;
  bool isApiCallInProgress = false;
  List<CryptoData> searchDataList = [];
  List<CryptoData> filterDataList = [];

  /// Local Search
  void searchData({
    required String search,
  }) {
    if (topCurrency != null) {
      searchDataList.clear();
      final res = topCurrency!.data!.where((element) =>
          element.name!.toLowerCase().contains(search.toLowerCase()));
      searchDataList.addAll(res);
      notifyListeners();
    }
  }

  /// Local Filter
  void filterData(int val) {
    if (val == 1) {
      filterDataList.clear();
      filterDataList.addAll(topCurrency!.data!);
      filterDataList
          .sort((a, b) => b.quote!.usd!.price!.compareTo(a.quote!.usd!.price!));
    } else if (val == 2) {
      filterDataList.clear();
      filterDataList.addAll(topCurrency!.data!);
      filterDataList.sort((a, b) =>
          b.quote!.usd!.volume24H!.compareTo(a.quote!.usd!.volume24H!));
    } else {
      filterDataList.clear();
    }
    notifyListeners();
  }

  /// Api Call
  Future<void> getTopCurrency() async {
    isApiCallInProgress = true;
    notifyListeners();

    final data = await _httpService.get(apiPath: ApiPath.latestCurrency);

    if (data != null) {
      topCurrency = CryptoDataModel.fromJson(data!);

      isApiCallInProgress = false;
      notifyListeners();
    } else {
      isApiCallInProgress = false;
      notifyListeners();
    }
  }
}
