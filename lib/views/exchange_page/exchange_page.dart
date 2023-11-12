import 'package:crypto_proj/constants/app_string.dart';
import 'package:crypto_proj/controller/exchange_data_controller.dart';
import 'package:crypto_proj/views/exchange_page/crypto_page.dart';
import 'package:crypto_proj/widget/wave.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({super.key});

  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<ExchangeDataController>(context, listen: false)
          .getTopCurrency();
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<ExchangeDataController>(context, listen: false);
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          AppString.exchange,
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: const [
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              Positioned(
                right: 0,
                top: 14,
                child: Badge(
                  backgroundColor: Colors.amberAccent,
                  child: SizedBox(
                    width: 10,
                    height: 10,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.settings,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.6,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search Cryptocurrency',
                    prefixIcon: const Icon(
                      Icons.search,
                    ),
                  ),
                  onChanged: (value) {
                    controller.searchData(search: value);
                  },
                ),
              ),
              const SizedBox(width: 20),
              popUpMenuButton(controller),
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              indicatorColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              unselectedLabelColor:
                  const Color.fromARGB(255, 10, 10, 10).withOpacity(0.2),
              labelStyle: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              physics: const NeverScrollableScrollPhysics(),
              tabs: ['Cryptocurrency', 'NFT']
                  .map(
                    (e) => Tab(
                      text: e,
                    ),
                  )
                  .toList(),
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const CryptoPage(),
                  Container(
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container popUpMenuButton(ExchangeDataController controller) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          50,
        ),
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
          width: 2,
        ),
      ),
      child: PopupMenuButton(
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 1,
            child: Text("Price High to Low"),
          ),
          const PopupMenuItem(
            value: 2,
            child: Text("Price Up in 24 hrs"),
          ),
          const PopupMenuItem(
            value: 3,
            child: Text("Reset"),
          ),
        ],
        onSelected: controller.filterData,
        child: Row(
          children: [
            const Icon(
              Icons.filter_alt_outlined,
            ),
            Text(
              AppString.filter,
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
