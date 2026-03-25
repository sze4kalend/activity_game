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
  final List<Map<String, String>> feladvanyok = [
    {'kep': 'assets/kutya.jpg', 'valasz': 'kutya'},
    {'kep': 'assets/auto.jpg', 'valasz': 'autó'},
    {'kep': 'assets/bicikli.jpg', 'valasz': 'bicikli'},
    {'kep': 'assets/csiga.jpg', 'valasz': 'csiga'},
    {'kep': 'assets/cica.jpg', 'valasz': 'cica'},
    {'kep': 'assets/tigris.jpg', 'valasz': 'tigris'},
    {'kep': 'assets/oroszlan.jpg', 'valasz': 'oroszlán'},
    {'kep': 'assets/zebra.jpg', 'valasz': 'zebra'},
    {'kep': 'assets/lo.jpg', 'valasz': 'ló'},
    {'kep': 'assets/halacska.jpg', 'valasz': 'halacska'},
    {'kep': 'assets/elefant.jpg', 'valasz': 'elefánt'},
    {'kep': 'assets/madar.jpg', 'valasz': 'madár'},
    {'kep': 'assets/motor.jpg', 'valasz': 'motor'},
    {'kep': 'assets/majom.jpg', 'valasz': 'majom'},
    {'kep': 'assets/nyuszi.jpg', 'valasz': 'nyuszi'},
  ];

  int index = 0;
  int pontszam = 0;
  final TextEditingController controller = TextEditingController();
  String uzenet = "";
  bool jatekVege = false; // Új változó a játék végének jelzésére

  void ellenorzes() {
    String tipp = controller.text.trim().toLowerCase();

    setState(() {
      if (tipp == feladvanyok[index]['valasz']) {
        pontszam += 10;
        uzenet = "Ügyes vagy! 🎉 +10 pont";

        Future.delayed(const Duration(seconds: 1), () {
          if (mounted) {
            setState(() {
              if (index < feladvanyok.length - 1) {
                index++;
                controller.clear();
                uzenet = "";
              } else {
                uzenet = "VÉGE A JÁTÉKNAK! Összesen: $pontszam pont.🏆";
                jatekVege = true; // Itt jelezzük, hogy vége
              }
            });
          }
        });
      } else {
        uzenet = "Sajnos nem talált! ❌ Try again!";
      }
    });
  }

  // ÚJRAKEZDÉS FÜGGVÉNY
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
            Text(
              "Pontszám: $pontszam",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width: 4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  feladvanyok[index]['kep']!,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                      const Center(child: Text("Hiba a kép betöltésekor!")),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Csak akkor mutatjuk a beviteli mezőt és a gombot, ha nincs vége
            if (!jatekVege) ...[
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mi van a képen?",
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  minimumSize: const Size(double.infinity, 55),
                ),
                onPressed: ellenorzes,
                child: const Text(
                  "Beküldés",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],

            const SizedBox(height: 25),
            Text(
              uzenet,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),

            // ÚJRAKEZDÉS GOMB - Csak a játék végén jelenik meg
            if (jatekVege) ...[
              const SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: ujrakezdes,
                icon: const Icon(Icons.refresh, color: Colors.white),
                label: const Text(
                  "ÚJRA ELŐRŐL",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
