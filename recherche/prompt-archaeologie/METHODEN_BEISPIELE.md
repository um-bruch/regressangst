# Methodische Techniken: Ein Beispiel pro Kategorie + Vollständiger Dialog

> Ergänzung zu METHODEN_KNIFFE.md (68 Techniken)
> Erstellt: 12.04.2026 | CL + LG

---

## 1. Agentensteuerung — Beispiel: Das 15-Agenten-Experiment

**Technik:** Parallele Spezialisierung mit komplementären Aufträgen

**Was passierte:** Nach der Entdeckung der Definitionsdivergenz (H112: "Die ein Prozent sind auch zufällig oder?") wurde die Erkenntnis systematisch validiert. Statt einen einzelnen Agenten mit einer großen Aufgabe zu betrauen, wurden 15 Agenten mit jeweils einer spezifischen, eng umrissenen Frage beauftragt:

| Agent | Auftrag (Kurzform) | Technik |
|-------|-------------------|---------|
| 1–3 | Datensammlung → Impressum → Kategorisierung | **Kaskadierende Vertiefung** (jeder baut auf dem vorherigen auf) |
| A | "Wie erklären die Quellen den Widerspruch selbst?" | **Perspektivanalyse** (nicht nach Daten suchen, sondern nach Erklärungen) |
| B | "Suche naiv wie ein Journalist" | **Verblindeter Agent** (kein Vorwissen über unsere Befunde) |
| C | "Suche V2-Zahlen — du bekommst nur die V1/V2-Einführung, keine Tipps" | **Informationsbeschränkung** (Agent kennt die Antwort nicht) |
| KK-1/KK-2 | Gleiche Bewertung, umgekehrte Reihenfolge | **Reihenfolge-Bias-Kontrolle** |

**Methodische Pointe:** Kein Agent kannte die Ergebnisse der anderen. Die Konvergenz der Befunde (alle Quellen: 30–72% Betroffenheit) entstand nicht durch gemeinsames Wissen, sondern durch unabhängige Suche mit verschiedenen Ansätzen.

---

## 2. Rollenzuweisungen — Beispiel: "Stell dir vor du bist ein BVerfG-Anwalt" (H33)

**Technik:** Rolle als Wissensfilter

**Prompt (Wortlaut):** "Stell dir vor du bist ein BVerfG-Anwalt — wo würdest du ansetzen?"

**Was die Rolle bewirkte:** Ein normaler Recherche-Prompt ("Gibt es verfassungsrechtliche Bedenken?") hätte allgemeine Antworten produziert. Die Rolle "BVerfG-Anwalt" aktivierte spezifisches Wissen:
- Nicht Art. 12 GG (Berufsfreiheit) — das wäre der naheliegende, aber schwache Weg
- Stattdessen: Art. 2 Abs. 2 GG (Recht auf Leben → Patientenschutzpflicht) als "Backdoor"
- BVerfGE 49, 89 (Kalkar I — Wesentlichkeitstheorie)
- Doppelbeschwerde-Strategie (Arzt + Patient parallel)

**Methodische Erkenntnis:** Die Rolle ist nicht nur ein Stilwechsel ("antworte formeller"), sondern ein **Wissensfilter**: Sie priorisiert Wissen das ein Rolleninhaber hätte, und unterdrückt irrelevantes. Ein BVerfG-Anwalt denkt in Grundrechten und Beschwerdefähigkeit, nicht in Verwaltungsrecht.

---

## 3. Experimentelle Designs — Beispiel: Der Naive-Suche-Test (Agent B)

**Technik:** Verblindung + simulierter Nutzer

**Prompt an Agent B:** "Du bist ein Journalist ohne Vorwissen über das Regresssystem. Google die Frage: Wie viel Prozent der Ärzte bekommen einen Regress? Berichte die ersten 5 Treffer und was du daraus schließen würdest."

**Ergebnis:** Agent B fand "unter 1%" in den ersten 5 Treffern und hätte diese Zahl unkommentiert übernommen. Die Gegenbelege (72%, Bayern 13.000) erforderten gezieltes Graben ab Treffer 8+.

**Wissenschaftliches Pendant:** Search Audit Studies — aber mit dem LLM als standardisiertem, reproduzierbarem Nutzer statt menschlichen Testpersonen. Vorteil: Der "Journalist" hat keine Vorurteile, keine Ermüdung, keinen Confirmation Bias. Nachteil: Er hat auch keine Intuition.

---

## 4. Wissenschaftliche Methoden → Agenten — Beispiel: Alternative-Hypothese-Test (H2)

**Technik:** Aktive Falsifikation der eigenen These

**Prompt (H120, Wortlaut):** "Meine Hypothese ist dass wir es falsch eingeschätzt haben. Vielleicht ist das Prüfsystem tatsächlich ein Evidenzsteuerungsinstrument — nicht nur Kostenkontrolle."

**Was passierte:** Statt die eigene These zu verteidigen, wurde ein Opus-Agent beauftragt, die Gegenthese (H2: System = Evidenzsteuerung) ernsthaft zu prüfen. Ergebnis: H2 hat 35–40% Erklärungskraft. Statt H2 zu verwerfen, wurde sie als "Doppelfunktion" in die Studie integriert.

**Methodische Pointe:** Die meisten KI-gestützten Analysen testen nur die Hauptthese. Hier wurde die KI explizit gegen die eigene Überzeugung eingesetzt — und das Ergebnis akzeptiert. Das ist das Äquivalent von Poppers Falsifikationsprinzip, angewandt auf LLM-Forschung.

---

## 5. Steuerungsmuster — Beispiel: Iterative Korrekturkette (CORE3, H101–H109)

**Technik:** Mensch korrigiert KI → KI passt an → Mensch korrigiert erneut → Erkenntnis emergiert

Dieses Muster ist das zentrale Arbeitsmuster des Projekts. Die CORE3-Entdeckung ist das beste Beispiel — sie zeigt wie 3 menschliche Korrekturen einen Paradigmenwechsel auslösten. Siehe den vollständigen Dialog unten (Abschnitt 8).

---

## 6. Innovative Techniken — Beispiel: CORE-Evolution

**Technik:** Lebender Referenzrahmen mit Versionierung

**Was es ist:** Statt einmal Hypothesen aufzustellen und sie dann zu beweisen/widerlegen, wurde ein "CORE"-Dokument eingeführt das die kanonische Wahrheit des Projekts enthält — und das sich ändert wenn neue Erkenntnisse das erfordern.

**Evolution:**
- CORE 1–7 (Tag 1–3): Erste Referenzpunkte
- CORE3 (Tag 4): V1 ist fairer → CORE 4 korrigiert (Zertifikatsfehler nur V2b)
- CORE4 v1→v2→v3 (Tag 4, innerhalb von Stunden): Drei Versionen an einem Tag
- MASTER-CORE (Tag 5): Fusioniert, konsolidiert, als dauerhaft markiert

**Methodische Pointe:** Das ist eine informelle Variante des "Living Systematic Review" aus der Cochrane-Methodik — aber angewandt auf ein einzelnes Forschungsprojekt statt auf eine Literaturübersicht. Die explizite Versionierung macht den Erkenntnisweg nachvollziehbar.

---

## 7. Meta-reflexive Techniken — Beispiel: Prompt-Archäologie

**Technik:** Systematische Rückgewinnung und Analyse des eigenen Forschungsprozesses

**Was es ist:** Die Prompts SIND die Methode in KI-gestützter Forschung. Wenn sie nicht dokumentiert sind, ist die Forschung nicht reproduzierbar. Die Prompt-Archäologie extrahiert alle Prompts aus Session-Logs, klassifiziert sie nach einer 5-Stufen-Taxonomie und berechnet Kennzahlen.

**Selbstreferenzialität:** Die Prompt-Archäologie ist selbst Teil des Forschungsprozesses den sie analysiert. Der Agent der die Prompts klassifiziert (M09) wurde durch einen Prompt beauftragt der selbst in der Analyse auftaucht. Dieser epistemische Zirkel ist unvermeidbar — die einzige Brechung ist der menschliche Forscher, der entscheidet welche Ergebnisse er akzeptiert.

---

## 8. Vollständiger Dialog: Die CORE3-Entdeckung (H101–H109)

> Die folgende Darstellung paraphrasiert den tatsächlichen Dialog zwischen LG (Mensch) und Claude (KI) während der Entdeckung des V1-Schutzstufenmodells und der V2a/V2b-Differenzierung. Die Prompts H101–H109 sind aus den Session-Logs rekonstruiert.

### Kontext
Die Studie ist auf v0.10, 76 Seiten. Alle Dokumente behaupten: "Das System ist unfair." "V1 und V2 sind beide problematisch." "Unter 1% ist eine Täuschung." LG prüft die kompilierten Broschüren und stößt auf eine Ungereimtheit.

---

**H101 (LG, 9 Wörter):** "Ich dachte das Richtgrößenverfahren wurde abgeschafft?"

*LG bemerkt beim Lesen der Broschüre, dass "Richtgrößenprüfung" erwähnt wird. Er erinnert sich vage, dass diese abgeschafft wurde.*

**Claude:** Recherchiert per WebSearch. Ergebnis: Richtgrößen wurden 2017 abgeschafft, ersetzt durch regionale Schwellenwerte. Die Studie verwendet den Begriff noch — das ist ein Fehler.

**H102 (LG):** "Prüfe alle Entscheidungsbäume nochmal auf Übereinstimmung mit der Studie."

*LG ist verunsichert. Wenn der Begriff falsch ist, was stimmt noch?*

**Claude:** Prüft alle 5 Dokumente. Findet: V1 wird überall als "unfair" dargestellt. Aber die Recherche zum Richtgrößen-Ersatz zeigt: V1 hat inzwischen ein Schutzstufenmodell (Anhörung, Beratung, Karenzzeit, Deckel 25.000 EUR, 5-Jahres-Regel).

**H103 (LG):** "Das ist sehr aufschlussreich."

*Bestätigung + Nachdenkpause.*

**H104 (LG, KORREKTUR):** "Die 99,7% Verwerfungsrate — wir haben das bisher als Beweis für ein dysfunktionales System interpretiert. Aber wenn V1 ein Schutzstufenmodell hat, dann ist das doch ein funktionierendes Screening?"

*Das ist der erste Paradigmenwechsel. LG dreht die Interpretation um: Was bisher als Systemversagen galt (99,7% werden verworfen = System trifft nicht), wird zum Beleg für ein funktionierendes Schutzmodell (99,7% werden entlastet = Schutz funktioniert).*

**Claude:** Akzeptiert die Korrektur. Recherchiert weiter. Findet: V1 berücksichtigt medizinische Besonderheiten, hat Praxisbesonderheiten-Regelung, Beratung vor Regress seit 2012. Die bisherige Darstellung war zu pauschal.

**H105 (LG, KORREKTUR):** "Und der Gerichtsweg — ein erfolgreicher Widerspruch heißt nicht, dass das System versagt hat. Es heißt, dass das Rechtsmittel funktioniert."

*Zweite Korrektur: LG bemerkt, dass auch die Interpretation der Widerspruchserfolge schief war.*

**Claude:** Korrigiert. V1 hat eingebaute Korrekturmechanismen (Widerspruch beim Beschwerdeausschuss, aufschiebende Wirkung, Klage zum Sozialgericht). Das ist kein Beweis für Dysfunktion, sondern für Rechtsstaatlichkeit.

**H106 (LG):** "Kann sein, aber vielleicht irren wir uns auch bei V2 — auch hier hat man Widerspruchsmöglichkeit?"

*LG hinterfragt jetzt auch V2. Bisher: V2 = hoffnungslos. Stimmt das?*

**Claude:** Recherchiert V2-Widerspruchsmöglichkeiten. Findet: V2 hat AUCH Anhörungsrecht und Widerspruchsrecht (Beschwerdeausschuss). ABER: V2 hat KEINEN Beratungsschutz (§106b Abs. 2 S. 4). Und V2 zerfällt in zwei Unterkategorien:
- **V2a (Unwirtschaftlichkeit):** Medizinische Verteidigung möglich, Kostendifferenzmethode
- **V2b (Formfehler):** Medizinisch irrelevant, keine Heilung, keine Kostendifferenz

**H107 (LG):** "Ja gut, wir müssen das differenzierter darstellen."

*Richtungsentscheidung: Nicht alles überarbeiten, aber die Differenzierung V2a/V2b einführen.*

**H108 (LG, KORREKTUR):** "Pass auf, dass du es nicht vermischst."

*LG warnt vor einer typischen KI-Schwäche: Neue Erkenntnisse mit alten Annahmen vermischen.*

**H109 (LG):** "Ja, weiter. Erstelle CORE3."

*Auftrag: Die neuen Erkenntnisse als kanonisches Dokument festhalten.*

**Claude:** Erstellt CORE3.md. Parallel werden 5 Agenten losgeschickt die alle 5 Dokumente (ST-001, PP-003, 3 Textgrundlagen) auf CORE3-Konformität prüfen und korrigieren.

---

### Analyse des Dialogs

| Metrik | Wert |
|--------|------|
| **Prompts gesamt** | 9 (H101–H109) |
| **Auslöser** | Beiläufige Frage beim Broschüren-Lesen (9 Wörter) |
| **Korrekturen** | 3 fundamental (H104, H105, H108) |
| **Bestätigungen** | 1 (H103) |
| **Richtungsentscheidungen** | 1 (H107) |
| **Paradigmenwechsel** | 2 (V1 ist fair; V2 hat Unterkategorien) |
| **Ergebnis** | CORE3.md + 5-Dokumente-Update |

**Was die KI allein nie getan hätte:**
- H104: Die 99,7% als positiv interpretieren (Claude hatte sie als negativ dargestellt)
- H106: V2 hinterfragen nachdem V1 korrigiert wurde (Claude hätte V2 unangetastet gelassen)
- H108: Vor dem Vermischen warnen (Claude neigt dazu, neue und alte Befunde inkonsistent zu mischen)

**Was die KI besser konnte als der Mensch:**
- Die tatsächliche Recherche zum V1-Ablauf (GPE BaWü, KV Nordrhein, BSG-Urteile)
- Das parallele Update aller 5 Dokumente (5 Agenten, je 3–7 Edits)
- Die juristische Differenzierung V2a/V2b mit BSG-Aktenzeichen

---

*Erstellt: 12.04.2026 | CL + LG*
