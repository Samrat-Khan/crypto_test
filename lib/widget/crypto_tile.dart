import 'package:crypto_proj/model/crypto_data_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonCryptoTile extends StatelessWidget {
  final CryptoData? cryptoData;
  const CommonCryptoTile({super.key, this.cryptoData});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
          'https://s2.coinmarketcap.com/static/img/coins/64x64/${cryptoData!.id!}.png',
        ),
        backgroundColor: Colors.grey.withOpacity(0.1),
      ),
      title: Text(
        cryptoData!.symbol!,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        cryptoData!.name!,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '\$ ${cryptoData!.quote!.usd!.price!.toStringAsFixed(4)} USD',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '${cryptoData!.quote!.usd!.volumeChange24H}%',
            style: GoogleFonts.poppins(
              color: cryptoData!.quote!.usd!.volumeChange24H!.isNegative
                  ? Colors.red
                  : Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
