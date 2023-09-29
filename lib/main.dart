import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Widi Pangestu Danar W.')),
        backgroundColor: Colors.blue,
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 25, left: 25),
        child: SizedBox(
          width: 280,
          height: 150,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Nama :'), Text('Widi Pangestu Danar W.')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Kelas :'), Text('IT-04-2')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('NIM :'), Text('1202212018')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Alamat :'), Text('Wonokromo')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Jenis Kelamin :'), Text('Laki-Laki')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Tempat Lahir :'), Text('Trenggalek')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TxtBtn1 extends StatefulWidget {
  const TxtBtn1({super.key});

  @override
  State<TxtBtn1> createState() => _TxtBtn1State();
}

class _TxtBtn1State extends State<TxtBtn1> {
  String? txtBtn = 'Button';

  changeTextBtn() {
    txtBtn = txtBtn != 'Button' ? 'Button' : 'Text';
    setState(() {
      txtBtn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {changeTextBtn()},
      child: Text(
        txtBtn.toString(),
      ),
    );
  }
}
