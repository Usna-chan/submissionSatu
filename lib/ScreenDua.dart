import 'package:flutter/material.dart';


class ScreenDua extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Blog"),
        backgroundColor: Colors.green[700],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: ModelDasar.dummyData.length,
          itemBuilder: (context, index) {
            ModelDasar _model = ModelDasar.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(_model.photoUrl),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(_model.judul),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        _model.tanggalAwal,
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                  subtitle: Text(_model.isi),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.pushNamed(context, '/tiga');},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
class ModelDasar {
  final String photoUrl;
  final String judul;
  final String tanggalAwal;
  final String isi;

  ModelDasar({this.photoUrl, this.judul, this.tanggalAwal, this.isi});
  static final List<ModelDasar> dummyData = [
    ModelDasar(
      photoUrl: "https://i.pravatar.cc/150?img=1",
      judul: "Marmut Merah Jambu",
      tanggalAwal: "Jan 26, 2021",
      isi: "Intinya ini buku yang nulis Radityadika",
    ),
    ModelDasar(
      photoUrl: "https://i.pravatar.cc/150?img=2",
      judul: "Harry Potter",
      tanggalAwal: "Jan 28, 2021",
      isi: "Penulis bukunya J.K Rowling isinya penyihir kacamataan.Dan kacamatanya bulet",
    ),
  ];
}
