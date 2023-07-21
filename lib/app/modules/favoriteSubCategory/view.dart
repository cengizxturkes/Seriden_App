import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/constwidget/blue_text_profile.dart';

import '../../../config/theme/my_fonts.dart';
import '../advertise/view.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class FavoritesubcategoryPage extends GetView<FavoritesubcategoryController> {
  const FavoritesubcategoryPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
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
    return GetBuilder<FavoritesubcategoryController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Color(0xffD9D9D9),
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppBarConst(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Text("Favori Ilanlarımm/Ozel Ders Listem",
                    style: textTheme.bodySmall),
              ),
              Expanded(
                  child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: ExpansionTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          'İş İlanları',
                        ),
                        children: [
                          FavoriteSubCategoryCard(),
                          FavoriteSubCategoryCard(),
                          FavoriteSubCategoryCard(),
                        ]),
                  ),
                  ConstDiveder(),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: ExpansionTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('Hizmet Verenler'),
                        children: [
                          FavoriteSubCategoryCard(),
                        ]),
                  ),
                  ConstDiveder(),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: ExpansionTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text('Satılık 2.El'),
                        children: [
                          FavoriteSubCategoryCard(),
                        ]),
                  ),
                ],
              ))
            ],
          )),
        );
      },
    );
  }
}

class FavoriteSubCategoryCard extends StatelessWidget {
  const FavoriteSubCategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 100,
      child: Card(
        elevation: 1,
        shadowColor: Colors.black,
        color: Colors.white,
        child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Image.asset("assets/images/message/profile1.png"),
          SizedBox(
            width: 15.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Text(
                "Bilgisayar Mühendisi",
                style: textTheme.bodySmall,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text("300 Tl", style: textTheme.bodySmall),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.w, bottom: 50),
            child: IconButton(
              icon: Icon(Icons.more_vert_sharp),
              onPressed: () {
                 showDialog(
                   context: context,
                   builder: (BuildContext context) {
                     return new AlertDialog(
                       content: new Container(
                         width: 315.w,
                         height: 250.h,
                         child: new Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,
                               crossAxisAlignment: CrossAxisAlignment.end,
                               children: [
                                 new CloseButton(
                                   onPressed: () {
                                     Navigator.of(context).pop();
                                   },
                                 ),
                               ],
                             ),
                             Container(
                                 height: 30.h,
                                 child: new Text(
                                   'Mesaj gönder',
                                   style: textTheme.labelSmall,
                                 )),
                             Divider(),
                             Container(
                                 height: 30.h,
                                 child: new Text(
                                   'Not Ekle',
                                   style: textTheme.labelSmall,
                                 )),
                             Divider(),
                             Container(
                                 height: 30.h,
                                 child: new Text(
                                   'Favorilerden Çıkar',
                                   style: textTheme.labelSmall,
                                 )),
                             Divider(),
                             Container(
                                 height: 30.h,
                                 child: new Text(
                                   'Bu kategorideki diğer ilanlara göz at',
                                   style: textTheme.labelSmall,
                                 )),
                             Divider(),
                           ],
                         ),
                       ),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(15.0),
                       ),
                     );
                   },
                 );
              
              },
            ),
          ),
        ]),
      ),
    );
  }
}

void showPopupMenu(BuildContext context) {
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;
  final Offset center = overlay.size.center(Offset.zero);

  final RelativeRect position = RelativeRect.fromRect(
    Rect.fromCenter(
      center: center,
      width: 0,
      height: 0,
    ),
    Offset.zero & overlay.size,
  );

  final List<PopupMenuEntry<String>> popupItems = [
    PopupMenuItem<String>(
      value: 'send_message',
      child: ListTile(
        leading: Icon(Icons.message),
        title: Text('Mesaj Gönder'),
      ),
    ),
    PopupMenuItem<String>(
      value: 'add_note',
      child: ListTile(
        leading: Icon(Icons.note_add),
        title: Text('Not Ekle'),
      ),
    ),
    PopupMenuItem<String>(
      value: 'remove_favorite',
      child: ListTile(
        leading: Icon(Icons.favorite_border),
        title: Text('Favorilerimden Çıkar'),
      ),
    ),
    PopupMenuItem<String>(
      value: 'view_other_ads',
      child: ListTile(
        leading: Icon(Icons.remove_red_eye),
        title: Text('Diğer İlanlara Göz At'),
      ),
    ),
  ];

  showMenu<String>(
    context: context,
    position: position,
    items: popupItems,
  ).then((value) {
    if (value != null) {
      switch (value) {
        // Seçeneklere göre yapılacak işlemler burada tanımlanabilir...
      }
    }
  });
}
