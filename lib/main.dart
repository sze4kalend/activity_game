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
                          const Center(
                        child: Text(
                          "Hiba a activity_game.png betöltésekor!\nKérlek, másold be az assets mappába!",
                          textAlign: TextAlign.center,
                        ),
                      ),
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
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: inditas,
                    child: const Text(
                      "👉 JÁTÉK INDÍTÁSA 👈",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Találd ki mind a 15 feladványt!",
                  style: TextStyle(fontSize: 16, color: Colors.indigo),
                ),
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
        'assets/klikk_cica.jfif',
        'assets/klikk_kutya.jfif',
        'assets/klikk_lo.jfif'
      ]
    },
    {
      'kep': 'assets/auto.jpg',
      'valasz': 'auto',
      'opciok': [
        'assets/klikk_auto.jfif',
        'assets/klikk_motor.jfif',
        'assets/klikk_bicikli.jfif'
      ]
    },
    {
      'kep': 'assets/bicikli.jpg',
      'valasz': 'bicikli',
      'opciok': [
        'assets/klikk_lo.jfif',
        'assets/klikk_bicikli.jfif',
        'assets/klikk_auto.jfif'
      ]
    },
    {
      'kep': 'assets/cica.jpg',
      'valasz': 'cica',
      'opciok': [
        'assets/klikk_cica.jfif',
        'assets/klikk_kutya.jfif',
        'assets/klikk_nyuszi.jfif'
      ]
    },
    {
      'kep': 'assets/csiga.jpg',
      'valasz': 'csiga',
      'opciok': [
        'assets/klikk_csiga.jfif',
        'assets/klikk_nyul.jfif',
        'assets/klikk_zebra.jfif'
      ]
    },
    {
      'kep': 'assets/zebra.jpg',
      'valasz': 'zebra',
      'opciok': [
        'assets/klikk_zebra.jfif',
        'assets/klikk_elefant.jfif',
        'assets/klikk_lo.jfif'
      ]
    },
    {
      'kep': 'assets/nyuszi.jpg',
      'valasz': 'nyuszi',
      'opciok': [
        'assets/klikk_nyul.jfif',
        'assets/klikk_kutya.jfif',
        'assets/klikk_cica.jfif'
      ]
    },
    {
      'kep': 'assets/lo.jpg',
      'valasz': 'lo',
      'opciok': [
        'assets/klikk_zebra.jfif',
        'assets/klikk_kutya.jfif',
        'assets/klikk_lo.jfif'
      ]
    },
    {
      'kep': 'assets/elefant.jpg',
      'valasz': 'elefant',
      'opciok': [
        'assets/klikk_elefant.jfif',
        'assets/klikk_oroszlan.jfif',
        'assets/klikk_tigris.jfif'
      ]
    },
    {
      'kep': 'assets/madar.jpg',
      'valasz': 'madar',
      'opciok': [
        'assets/klikk_madar.jfif',
        'assets/klikk_kutya.jfif',
        'assets/klikk_lo.jfif'
      ]
    },
    {
      'kep': 'assets/majom.jpg',
      'valasz': 'majom',
      'opciok': [
        'assets/klikk_majom.jfif',
        'assets/klikk_elefant.jfif',
        'assets/klikk_tigris.jfif'
      ]
    },
    {
      'kep': 'assets/tigris.jpg',
      'valasz': 'tigris',
      'opciok': [
        'assets/klikk_tigris.jfif',
        'assets/klikk_oroszlan.jfif',
        'assets/klikk_cica.jfif'
      ]
    },
    {
      'kep': 'assets/oroszlan.jpg',
      'valasz': 'oroszlan',
      'opciok': [
        'assets/klikk_oroszlan.jfif',
        'assets/klikk_majom.jfif',
        'assets/klikk_elefant.jfif'
      ]
    },
    {
      'kep': 'assets/motor.jpg',
      'valasz': 'motor',
      'opciok': [
        'assets/klikk_motor.jfif',
        'assets/klikk_auto.jfif',
        'assets/klikk_bicikli.jfif'
      ]
    },
    {
      'kep': 'assets/halacska.jpg',
      'valasz': 'halacska',
      'opciok': [
        'assets/klikk_hal.jfif',
        'assets/klikk_kutya.jfif',
        'assets/klikk_lo.jfif'
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
              uzenet = "VÉGE A JÁTÉKNAK! Összesen: $pontszam pont.🏆";
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
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width: 3),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(feladvanyok[index]['kep']!,
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
                children: (feladvanyok[index]['opciok'] as List<String>)
                    .map((kepUtvonal) {
                  return GestureDetector(
                    onTap: () {
                      // Itt a javított ellenőrzés:
                      if (kepUtvonal.contains(feladvanyok[index]['valasz'])) {
                        ellenorzes(feladvanyok[index]['valasz']);
                      } else {
                        ellenorzes("rossz");
                      }
                    },
                    child: Container(
                      width: 110,
                      height: 110,
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
                        child: Image.asset(kepUtvonal, fit: BoxFit.contain),
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
              ElevatedButton.icon(
                onPressed: ujrakezdes,
                icon: const Icon(Icons.refresh),
                label: const Text("ÚJRA ELŐRŐL"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15)),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
