import 'package:flutter/material.dart';

class TampilHalaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Ilmuwan Islam"),
      ),//AppBar

      body: PageView(
        children: <Widget>[
          _createPageItemUI('1.Membaca Bismillah'
              ,'https://4.bp.blogspot.com/-wNZHKhMMnpE/V6FlwjfevSI/AAAAAAAAAJI/txWCxwnwkdsJmrfl6pDAbGoYyV0HXRMvACLcB/s1600/tata-cara-wudhu-mencuci-tangan.jpeg'
              ,'sambil mencuci kedua belah tangan sampai pergelangan tangan hingga bersih'),

          _createPageItemUI('2.Berkumur-kumur',
              'https://4.bp.blogspot.com/-qRCJZSr3Q8w/V6FlwE6-l9I/AAAAAAAAAJA/Uay5ADSD2nQH8T_zAfAL1pjdm2as-R3uACEw/s1600/tata-cara-wudhu-berkumur.jpeg',
              'sambil membersihkan gigi jika ada sisa-sisa makanan dan yang kotor.'),

          _createPageItemUI('3.Mencuci lubang hidung',
              'https://1.bp.blogspot.com/-EVSGM4CZsb4/V6FlwvnhbPI/AAAAAAAAAJE/n34wBfyRbHUE4ucMab0LqkCMf23XyjxiQCEw/s1600/tata-cara-wudhu-mencuci-hidung.jpeg',
              '3 kali dari kotoran yang ada didalam hidung atau yang tersumbat di dalam hidung'),
          
          _createPageItemUI('4.Mencuci muka 3 kali',
              'https://3.bp.blogspot.com/-dHtgmewmcQg/V6Flwhek8nI/AAAAAAAAAJY/xwyD1HrnOsYz7QIChyxP63HmIbK4yi75wCEw/s1600/tata-cara-wudhu-mencuci-muka.jpeg',
              ' mulai dari tempat tumbuhnya rambut kepala hingga bawah dagu dan dari telinga kanan hingga telinga kiri'),
          _createPageItemUI('Mencuci kedua belah tangan',
              'https://1.bp.blogspot.com/-cE4OPR_4S5I/V6FlvybK0kI/AAAAAAAAAJY/1tcBTUCSTqMeFpf2W66PNbeefWUuD_W7QCEw/s1600/tata-cara-wudhu-membasuh-tangan.jpeg'
              , 'Cuci belah tangan sebanyak tiga kali dan basuh tangan sampai sikut'),

          _createPageItemUI('Membasahi sebagian rambut kepala'
              , 'https://1.bp.blogspot.com/-TfgFBfimPd4/V6FlxLjJ4QI/AAAAAAAAAJY/2-XKn0irn0o976VZGOB39QDpNDiwBPadgCEw/s1600/tata-cara-wudhu-mengusap-kepala.jpeg'
              , 'Basahilah rambut dari jidat hingga kepala bagian belakang sebanyak satu kali'),
          
          _createPageItemUI('Mencuci kedua telinga'
              , 'https://4.bp.blogspot.com/-ncykdu5ppPw/V6FlxUnESNI/AAAAAAAAAJY/jn3lNIVTliskLQsQJ0gex1I2F46cvKQogCEw/s1600/tata-cara-wudhu-mengusap-telinga.jpeg'
              , 'Sebenarnya setelah membasahi kepala sebanyak satu kali, anda harus langsung mengusapkan ke telinga sebanyak satu kali'),
          _createPageItemUI('Mencuci kedua kaki'
              , 'https://1.bp.blogspot.com/-ty0Pqfvmy8I/V6Flv4woX8I/AAAAAAAAAJY/asKHk71lkKEbUYR86NLq5XmTQxMh8ytdwCEw/s1600/tata-cara-wudhu-membasuh-kaki.jpeg'
              , 'hendaklah cuci kaki dari bawah hingga mata kaki sebanyak tiga kali'),
          _createPageItemUI('Membaca Doa Setelah Wudhu'
              , 'https://nasihatsahabat.com/wp-content/uploads/2018/08/Doa-Sesudah-Wudhu-Setelah-Jangan-Lupa-Berdoa-1.jpg'
              , '"Asyhadu Alla Ila Haillallaah Wahdahu Laa Syariika Lahu Wa Asyhadu Anna Muhammadan Abduhu Wa Rasuuluhu, Alloohummajalni Minattawwaabiina Wajalni Minal Mu Tathahhiriina Wajalni Min Ibadi Kash Shaalihiina')
        ],
      ),//PageView
    );//Sccafold
  }
}

_createPageItemUI(String nama, String gambar, String deskripsi) {
  return Container(
    child: ListView(
      children: <Widget>[
        Image(
          image: NetworkImage(gambar),
          height: 300.0,
          fit: BoxFit.cover,),

        SizedBox(
          height: 20.0,
        ),//SizedBox

        Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(nama,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),

        ),//Padding



        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(deskripsi,
            style: TextStyle(fontSize: 20.0),
            textAlign: TextAlign.justify,),
        )
      ],
    ),
  );
}