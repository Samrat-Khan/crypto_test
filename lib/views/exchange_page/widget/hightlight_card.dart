import 'package:crypto_proj/controller/exchange_data_controller.dart';
import 'package:crypto_proj/widget/crypto_tile.dart';
import 'package:crypto_proj/widget/wave.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HighlightedCard extends StatelessWidget {
  const HighlightedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Provider.of<ExchangeDataController>(context, listen: false)
                .topCurrency!
                .data![0]
                .quote!
                .usd!
                .volumeChange24H!
                .isNegative
            ? Color.fromARGB(127, 255, 181, 181)
            : const Color(0xffe6fbe7),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: CommonCryptoTile(
              cryptoData:
                  Provider.of<ExchangeDataController>(context, listen: false)
                      .topCurrency!
                      .data![0],
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            child: CustomPaint(
              size: Size(
                MediaQuery.sizeOf(context).width,
                (MediaQuery.sizeOf(context).width * 0.22222222222222224)
                    .toDouble(),
              ),
              painter: RPSCustomPainter(
                color:
                    Provider.of<ExchangeDataController>(context, listen: false)
                            .topCurrency!
                            .data![0]
                            .quote!
                            .usd!
                            .volumeChange24H!
                            .isNegative
                        ? Colors.redAccent
                        : const Color(0xff5ce061),
              ),
            ),
          )
        ],
      ),
    );
  }
}
