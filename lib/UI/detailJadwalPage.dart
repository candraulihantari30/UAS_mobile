import 'package:flutter/material.dart';
import 'package:mobile_desa/Models/jadwal.dart';

class DetaiJadwalPage extends StatefulWidget {
  DetaiJadwalPage({required this.jadwal});
  final Jadwal jadwal;

  @override
  _DetaiJadwalPageState createState() => _DetaiJadwalPageState();
}

class _DetaiJadwalPageState extends State<DetaiJadwalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.jadwal.rencanakerja),
      ),
      body: Container(
          width: double.infinity,
          child: ListView(
            children: [
              Image.network(
                  "http://192.168.43.13/mobile/public/" + widget.jadwal.foto),
              Container(
                padding: EdgeInsets.all(5),
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                  ),
                ),
                child: Text(
                  widget.jadwal.hari,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(widget.jadwal.waktu),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(widget.jadwal.deskripsi),
              )
            ],
          )),
    );
  }
}
