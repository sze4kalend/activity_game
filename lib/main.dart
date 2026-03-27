import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: FoOldal(), debugShowCheckedModeBanner: false));
}

class FoOldal extends StatefulWidget {
  const FoOldal({super.key});

  @override
  State<FoOldal> createState() => _FoOldalState();
}

class _FoOldalState extends State<FoOldal> {
  bool jatekElindult = false;

  void inditas() {
    setState(() {
      jatekElindult = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!jatekElindult) {
      return Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: AppBar(
          title: const Text("Junior Activity Dolgozat"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigo, width: 6),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/activity_game.png',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(child: Text("Hiba a kezdőképnél!")),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onPressed: inditas,
                    child: const Text(
                      "👉 JÁTÉK INDÍTÁSA 👈",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Találd ki mind a 15 feladványt!",
                    style: TextStyle(fontSize: 16, color: Colors.indigo)),
              ],
            ),
          ),
        ),
      );
    } else {
      return const JatekOldal();
    }
  }
}

class JatekOldal extends StatefulWidget {
  const JatekOldal({super.key});

  @override
  State<JatekOldal> createState() => _JatekOldalState();
}

class _JatekOldalState extends State<JatekOldal> {
  final List<Map<String, dynamic>> feladvanyok = [
    {
      'kep': 'assets/kutya.jpg',
      'valasz': 'kutya',
      'opciok': [
        {'kep': 'assets/klikk_cica.jfif', 'nev': 'cica'},
        {'kep': 'assets/klikk_kutya.jfif', 'nev': 'kutya'},
        {'kep': 'assets/klikk_lo.jfif', 'nev': 'lo'},
      ]
    },
    {
      'kep': 'assets/auto.jpg',
      'valasz': 'auto',
      'opciok': [
        {'kep': 'assets/klikk_auto.jfif', 'nev': 'auto'},
        {'kep': 'assets/klikk_motor.jfif', 'nev': 'motor'},
        {'kep': 'assets/klikk_bicikli.jfif', 'nev': 'bicikli'},
      ]
    },
    {
      'kep': 'assets/bicikli.jpg',
      'valasz': 'bicikli',
      'opciok': [
        {'kep': 'assets/klikk_lo.jfif', 'nev': 'lo'},
        {'kep': 'assets/klikk_bicikli.jfif', 'nev': 'bicikli'},
        {'kep': 'assets/klikk_auto.jfif', 'nev': 'auto'},
      ]
    },
    {
      'kep': 'assets/cica.jpg',
      'valasz': 'cica',
      'opciok': [
        {'kep': 'assets/klikk_cica.jfif', 'nev': 'cica'},
        {'kep': 'assets/klikk_kutya.jfif', 'nev': 'kutya'},
        {'kep': 'assets/klikk_nyul.jfif', 'nev': 'nyuszi'},
      ]
    },
    {
      'kep': 'assets/csiga.jpg',
      'valasz': 'csiga',
      'opciok': [
        {'kep': 'assets/klikk_csiga.jfif', 'nev': 'csiga'},
        {'kep': 'assets/klikk_nyul.jfif', 'nev': 'nyuszi'},
        {'kep': 'assets/klikk_zebra.jfif', 'nev': 'zebra'},
      ]
    },
    {
      'kep': 'assets/zebra.jpg',
      'valasz': 'zebra',
      'opciok': [
        {'kep': 'assets/klikk_zebra.jfif', 'nev': 'zebra'},
        {'kep': 'assets/klikk_elefant.jfif', 'nev': 'elefant'},
        {'kep': 'assets/klikk_lo.jfif', 'nev': 'lo'},
      ]
    },
    {
      'kep': 'assets/nyuszi.jpg',
      'valasz': 'nyuszi',
      'opciok': [
        {'kep': 'assets/klikk_nyul.jfif', 'nev': 'nyuszi'},
        {'kep': 'assets/klikk_kutya.jfif', 'nev': 'kutya'},
        {'kep': 'assets/klikk_cica.jfif', 'nev': 'cica'},
      ]
    },
    {
      'kep': 'assets/lo.jpg',
      'valasz': 'lo',
      'opciok': [
        {'kep': 'assets/klikk_zebra.jfif', 'nev': 'zebra'},
        {'kep': 'assets/klikk_kutya.jfif', 'nev': 'kutya'},
        {'kep': 'assets/klikk_lo.jfif', 'nev': 'lo'},
      ]
    },
    {
      'kep': 'assets/elefant.jpg',
      'valasz': 'elefant',
      'opciok': [
        {'kep': 'assets/klikk_elefant.jfif', 'nev': 'elefant'},
        {'kep': 'assets/klikk_oroszlan.jfif', 'nev': 'oroszlan'},
        {'kep': 'assets/klikk_tigris.jfif', 'nev': 'tigris'},
      ]
    },
    {
      'kep': 'assets/madar.jpg',
      'valasz': 'madar',
      'opciok': [
        {'kep': 'assets/klikk_kutya.jfif', 'nev': 'kutya'},
        {'kep': 'assets/klikk_lo.jfif', 'nev': 'lo'},
        {'kep': 'assets/klikk_madar.jfif', 'nev': 'madar'},
      ]
    },
    {
      'kep': 'assets/majom.jpg',
      'valasz': 'majom',
      'opciok': [
        {'kep': 'assets/klikk_majom.jfif', 'nev': 'majom'},
        {'kep': 'assets/klikk_elefant.jfif', 'nev': 'elefant'},
        {'kep': 'assets/klikk_tigris.jfif', 'nev': 'tigris'},
      ]
    },
    {
      'kep': 'assets/tigris.jpg',
      'valasz': 'tigris',
      'opciok': [
        {'kep': 'assets/klikk_oroszlan.jfif', 'nev': 'oroszlan'},
        {'kep': 'assets/klikk_cica.jfif', 'nev': 'cica'},
        {'kep': 'assets/klikk_tigris.jfif', 'nev': 'tigris'},
      ]
    },
    {
      'kep': 'assets/oroszlan.jpg',
      'valasz': 'oroszlan',
      'opciok': [
        {'kep': 'assets/klikk_oroszlan.jfif', 'nev': 'oroszlan'},
        {'kep': 'assets/klikk_majom.jfif', 'nev': 'majom'},
        {'kep': 'assets/klikk_elefant.jfif', 'nev': 'elefant'},
      ]
    },
    {
      'kep': 'assets/motor.jpg',
      'valasz': 'motor',
      'opciok': [
        {'kep': 'assets/klikk_auto.jfif', 'nev': 'auto'},
        {'kep': 'assets/klikk_motor.jfif', 'nev': 'motor'},
        {'kep': 'assets/klikk_bicikli.jfif', 'nev': 'bicikli'},
      ]
    },
    {
      'kep': 'assets/halacska.jpg',
      'valasz': 'halacska',
      'opciok': [
        {'kep': 'assets/klikk_kutya.jfif', 'nev': 'kutya'},
        {'kep': 'assets/klikk_lo.jfif', 'nev': 'lo'},
        {'kep': 'assets/klikk_hal.jfif', 'nev': 'halacska'},
      ]
    }
  ];

  int index = 0;
  int pontszam = 0;
  final TextEditingController controller = TextEditingController();
  String uzenet = "";
  bool jatekVege = false;

  void ellenorzes(String tipp) {
    String tisztaTipp = tipp.trim().toLowerCase();
    if (tisztaTipp == feladvanyok[index]['valasz'].toString().toLowerCase()) {
      setState(() {
        pontszam += 10;
        uzenet = "Ügyes vagy! 🎉 +10 pont";
      });

      Future.delayed(const Duration(seconds: 1), () {
        if (mounted) {
          setState(() {
            if (index < feladvanyok.length - 1) {
              index++;
              controller.clear();
              uzenet = "";
            } else {
              uzenet = "GRATULÁLOK! 🏆";
              jatekVege = true;
            }
          });
        }
      });
    } else {
      setState(() {
        uzenet = "Sajnos nem talált! ❌ Próbáld újra!";
      });
    }
  }

  void ujrakezdes() {
    setState(() {
      index = 0;
      pontszam = 0;
      uzenet = "";
      jatekVege = false;
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: const Text("Óvodás Activity"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Pontszám: $pontszam",
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo)),
            const SizedBox(height: 10),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width: 3),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: jatekVege
                    ? Image.asset('assets/king-julien-madagascar.gif',
                        fit: BoxFit.contain)
                    : Image.asset(feladvanyok[index]['kep']!,
                        fit: BoxFit.contain),
              ),
            ),
            const SizedBox(height: 25),
            if (!jatekVege) ...[
              const Text("Melyik van a képen? Kattints rá!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.indigo)),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:
                    (feladvanyok[index]['opciok'] as List<Map<String, String>>)
                        .map((opcio) {
                  return GestureDetector(
                    onTap: () => ellenorzes(opcio['nev']!),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.indigo, width: 3),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(opcio['kep']!, fit: BoxFit.contain),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Vagy írd be ide a választ...",
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                ),
                onSubmitted: (value) => ellenorzes(value),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    minimumSize: const Size(double.infinity, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () => ellenorzes(controller.text),
                child: const Text("Ellenőrzés",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ],
            const SizedBox(height: 20),
            Text(uzenet,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange)),
            if (jatekVege) ...[
              const SizedBox(height: 20),
              const Text("🏆 GRATULÁLOK! 🏆",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo)),
              const Text("Szuperügyes vagy!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: ujrakezdes,
                icon: const Icon(Icons.refresh),
                label: const Text("ÚJRA JÁTSZOM"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    textStyle: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold)),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
