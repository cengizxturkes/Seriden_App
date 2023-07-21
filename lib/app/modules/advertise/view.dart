import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/config/theme/my_fonts.dart';

import '../../components/color_manager.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvertisePage extends GetView<AdvertiseController> {
  const AdvertisePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdvertiseController>(
      builder: (_) {
        final List<String> jobCategories = [
          'Asistan - Sekreter',
          'Bilgisayar - Yazılım',
          'Eczacı',
          'Eğitim - Öğretmen',
          'Ek İş - Ek Gelir',
          'Freelance İşler',
          'Grafiker - Tasarımcı',
          'Güvenlik Görevlisi',
          'Kurye - Taşımacı',
          'Mimar - Mühendis',
          'Muhasebeci',
          'Part Time İşler',
          'Pazarlama - Satış',
          'Restaurant - Cafe - Servis Elemanı',
          'Satış Elemanı - Tezgahtar',
          'Şoför',
          'Tanıtım Elemanı - Host - Hostes',
          'Tekstil - Konfeksiyon',
          'Temizlik Elemanı',
        ];

        final List<String> serviceCategories = [
          'Avukat, Hukuki Danışma',
          'Bakıcı Hizmetleri',
          'Bilgisayar ve IT Hizmetleri',
          'Çeviri - Tercüme',
          'Etkinlik - Organizasyon',
          'Ev, Ofis Temizliği',
          'Evde Sağlık Hizmetleri',
          'Fotoğraf, Film, Prodüksiyon',
          'Masör, Masaj Hizmeti',
          'Müzisyen - Sanatçı',
          'Nakliye Hizmetleri',
          'Psikolojik Danışmanlık',
          'Tasarım Hizmetleri',
          'Taşımacılık',
          'Toplu Yemek, Catering Hizmetleri',
          'Diğer Hizmet Verenler',
        ];
        final List<String> second = [
          'Telefon',
          'Bilgisayar',
          "Mouse",
          "Klavye",
          "Giyim",
        ];
        final List<String> item = [
          'İtem1',
          'İtem2',
          "İtem3",
          "İtem4",
          "İtem5",
          "İtem6",
          "İtem7",
          "İtem8",
          "İtem9"
        ];
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: BottomNavbar(),
                 backgroundColor: ColorManager.base20,

            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppBarConst(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Text("Kategori Arama", style: textTheme.bodySmall),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SearchWidget(),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Text("Kategori Seçimi", style: textTheme.bodySmall),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: ExpansionTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('İş İlanları'),
                          children: jobCategories
                              .map((job) => ListTile(
                                    title: Text(job),
                                    trailing: Icon(Icons.navigate_next),
                                  ))
                              .toList(),
                        ),
                      ),
                      ConstDiveder(),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: ExpansionTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Hizmet Verenler'),
                          children: serviceCategories
                              .map((service) => ListTile(title: Text(service)))
                              .toList(),
                        ),
                      ),
                      ConstDiveder(),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: ExpansionTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Satılık 2.El'),
                          children: second
                              .map((second) => ListTile(title: Text(second)))
                              .toList(),
                        ),
                      ),
                      ConstDiveder(),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: ExpansionTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Ozel Ders'),
                          children: item
                              .map((item) => ListTile(title: Text(item)))
                              .toList(),
                        ),
                      ),
                      ConstDiveder(),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: ExpansionTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Hayvanlar Alemi'),
                          children: item
                              .map((item) => ListTile(title: Text(item)))
                              .toList(),
                        ),
                      ),
                      ConstDiveder(),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: ExpansionTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Ortak Arayanlar'),
                          children: item
                              .map((item) => ListTile(title: Text(item)))
                              .toList(),
                        ),
                      ),
                      ConstDiveder(),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: ExpansionTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Arkadaşlık İlanı'),
                          children: item
                              .map((item) => ListTile(title: Text(item)))
                              .toList(),
                        ),
                      ),
                      ConstDiveder(),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: ExpansionTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Duyurular'),
                          children: item
                              .map((item) => ListTile(title: Text(item)))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class ConstDiveder extends StatelessWidget {
  const ConstDiveder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 35, right: 35),
      child: Divider(
        height: 2.0,
      ),
    );
  }
}

class SearchWidget extends StatefulWidget {
  SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50.h,
        width: 315.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.h),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                controller: TextEditingController(),
                focusNode: _focusNode,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 16.w),
                  //hintText: 'Ürün ara',
                  hintStyle: TextStyle(
                    color: const Color(0xFFBEBEBE),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  prefixIconColor: const Color(0xFFBEBEBE),
                ),
                style: TextStyle(
                  color: const Color(0xFFF8F9FB),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
                onSubmitted: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
