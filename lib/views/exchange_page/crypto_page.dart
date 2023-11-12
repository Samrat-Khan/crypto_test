import 'package:crypto_proj/controller/exchange_data_controller.dart';
import 'package:crypto_proj/views/exchange_page/widget/hightlight_card.dart';
import 'package:crypto_proj/widget/crypto_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CryptoPage extends StatelessWidget {
  const CryptoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<ExchangeDataController>(context, listen: false);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Consumer<ExchangeDataController>(
        builder: (_, __, ___) {
          return controller.isApiCallInProgress
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : RefreshIndicator(
                  onRefresh: () async => await controller.getTopCurrency(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HighlightedCard(),
                      ListTile(
                        title: Text(
                          'Top Cryptocurrency',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        trailing: Text(
                          'View All',
                          style: GoogleFonts.poppins(),
                        ),
                      ),
                      Expanded(
                        child: controller.topCurrency == null
                            ? const Text("No Data")
                            : ListView.separated(
                                itemCount: controller.searchDataList.isNotEmpty
                                    ? controller.searchDataList.length
                                    : controller.filterDataList.isNotEmpty
                                        ? controller.filterDataList.length
                                        : controller.topCurrency!.data!.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 10),
                                itemBuilder: (context, index) {
                                  return CommonCryptoTile(
                                    cryptoData: controller
                                            .searchDataList.isNotEmpty
                                        ? controller.searchDataList[index]
                                        : controller.filterDataList.isNotEmpty
                                            ? controller.filterDataList[index]
                                            : controller
                                                .topCurrency!.data![index],
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
