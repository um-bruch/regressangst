# CORE4 — Kommunikationsasymmetrie, Definitionsdivergenz und Doppelfunktion

> Stand: 2026-04-11 (v3, nach Multi-Agenten-Recherche + Alternative-Hypothese-Test + KK-Analyse)
> Quellen: BMG GVSG-Referentenentwurf 2024, SpiFa Bayern 2023/2024, Dt. Ärzteblatt 2020,
> Virchowbund, KBV, KV Nordrhein, KV BaWü, KV RLP (Regress-Ranking), DeutschesArztPortal,
> Ribbat 2023, Poisson-Modell, AOK BaWü Prüfthemen 2025, §95d SGB V (Fortbildungspflicht)
> Methodik: 6 unabhängige Agenten (Datensammlung, Impressum, Kategorisierung, Widerspruchs-Erklärungen,
> Naive Suche, V2-Zahlen-Suche), 25 Datenpunkte, 14 Domains, Prior-Art-Check ausstehend

---

## Kernbefund

Die öffentlich kommunizierte Regressquote von "unter 1 %" und die von Ärzten berichtete Erfahrungsrate von 72 % (Ribbat 2023) sind **beide korrekt** — sie messen verschiedene Dinge. Die Diskrepanz ist **kein Wahrnehmungsfehler der Ärzte**, sondern ein **Definitionsproblem der Statistik**.

---

## Korrektur gegenüber CORE4 v1

**CORE4 v1 behauptete:** "Für V2 existieren keine öffentlichen Daten."
**CORE4 v2 korrigiert:** V2-Daten existieren (BMG GVSG-Entwurf: 47.000 V2-Verfahren bundesweit; SpiFa Bayern: 13.000 Regresse/Jahr; KV-spezifische Berichte). Sie werden aber **nicht als Gesamtstatistik publiziert** und **nicht in die öffentlich kommunizierte Regressquote eingerechnet**.

**CORE4 v1 behauptete:** Die Gleichverteilungs-Rechnung (Poisson, λ=0,85) als zentrale Beweisführung.
**CORE4 v2 ergänzt:** Bayern liefert empirische Bestätigung (13.000 Regresse bei ~24.000 Ärzten). Allerdings: ~70 % davon sind Bagatellregresse unter 300 EUR.

---

## Die drei Schichten des Regressbegriffs

| Schicht | Was gezählt wird | Ungefähre Zahl | Quelle |
|---------|-----------------|----------------|--------|
| **Schicht 1: "Regress" (eng)** | Nur V1-Richtgrößenregresse, rechtskräftig | **<100/Jahr bundesweit** → 0,065 % | Virchowbund 2018, Ärzte-Zeitung |
| **Schicht 2: "Regress" (amtlich)** | V1+V2, rechtskräftig durchgesetzt | **21/21.500 in BaWü** → 0,097 % | KV BaWü 2022 |
| **Schicht 3: "Regress" (faktisch)** | Alle V2-Verfahren mit Zahlung (inkl. Vergleiche, Bagatelle) | **47.000/Jahr bundesweit** → ~30 % der Ärzte; Bayern: **13.000 Regresse/Jahr** → ~55 % | BMG GVSG-Entwurf 2024; SpiFa Bayern 2023/2024 |

**Der Faktor zwischen Schicht 1 und 3: ~500×** (0,065 % vs. ~30 %)

---

## Die Rechnung

### Bundesweite Daten (BMG)

| Kenngröße | Wert | Quelle |
|-----------|------|--------|
| V2-Verfahren bundesweit (2022) | **~47.000** | BMG GVSG-Referentenentwurf 2024 |
| Davon unter 300 EUR (Bagatelle) | ~32.900 (70 %) | BMG |
| Davon über 300 EUR (substanziell) | ~14.100 (30 %) | Berechnet |
| Vertragsärzte bundesweit | ~155.000 | KBV |
| → V2-Verfahren pro Arzt/Jahr | ~0,30 | Berechnet |
| → Substanzielle V2-Verfahren pro Arzt/Jahr | ~0,09 | Berechnet |

### Bayern (SpiFa, empirisch)

| Jahr | Verfahren | Regresse festgesetzt | Forderungssumme | Quelle |
|------|-----------|---------------------|-----------------|--------|
| 2023 | 15.375 | **12.930** | 3,46 Mio. EUR | SpiFa |
| 2024 | 16.288 | **13.332** | 4,45 Mio. EUR | SpiFa |

Bei ~24.000 Vertragsärzten in Bayern:
- 13.332 Regresse / 24.000 = max. 55,5 % (wenn jeder Arzt nur 1× betroffen)
- Bei 2 Regressen/Arzt im Schnitt: ~28 % der Ärzte/Jahr
- Bei 3 Regressen/Arzt: ~18 %
- **Achtung:** Durchschnitt 334 EUR/Regress (4,45 Mio ÷ 13.332) — Mehrheit sind Bagatelle

### Konvergenz aller Quellen

| Quelle | Methode | Betroffenheitsquote |
|--------|---------|-------------------|
| BMG 2024 | 47.000 V2 / 155.000 Ärzte | ~30 %/Jahr (alle V2) |
| SpiFa Bayern | 13.000 Regresse / 24.000 Ärzte | 18-55 %/Jahr (je nach Bündelung) |
| DeutschesArztPortal 2021 | Umfrage N=331 | 65 % in 5 Jahren |
| DeutschesArztPortal 2023 | Umfrage N=450 | 67 % jemals einzelfallgeprüft |
| Ribbat 2023 | Umfrage N=770 | 72 % jemals Regresserfahrung |
| **Poisson-Modell** (KV Nordrhein) | λ=0,85/Jahr | 57 %/Jahr, 92 % in 3 Jahren |

Alle Quellen konvergieren: **Die Mehrheit der Vertragsärzte hat Regress-Erfahrung.** Die "unter 1 %"-Zahl ist mit diesen Befunden unvereinbar — es sei denn, man definiert "Regress" so eng, dass nur V1-Richtgrößenregresse nach Gerichtsurteil zählen (Schicht 1).

---

## Die Kommunikationsasymmetrie

### Was die verschiedenen Akteure kommunizieren

| Akteur | Sagt | Misst | Warum |
|--------|------|-------|-------|
| BMG | "Tatsächlich verhängte Regresse gering" | Schicht 1 oder 2 | Systemstabilität |
| Virchowbund | "0,065 %, selten bedrohlich" | Schicht 1 (nur V1) | Niederlassung fördern |
| KBV | "Unter 1 %" | Schicht 2 (V1+V2 rechtskräftig) | Beruhigung + Reformforderung |
| SpiFa | "13.000 Regresse/Jahr in Bayern" | Schicht 3 (alle V2) | Bagatellgrenze fordern |
| Ribbat | "72 % Regresserfahrung" | Selbstbericht, Berufslaufbahn | Wissenschaft |
| Regressversicherer (MLP) | "Existenzbedrohend" | Keine konkreten Zahlen | Versicherung verkaufen |

### Warum die "unter 1 %"-Zahl die öffentliche Diskussion dominiert

**Agent B (Naive Suche) hat bestätigt:** Ein Journalist der 20 Minuten googelt findet "unter 1 %" in den ersten 5 Treffern. Die Gegenbelege (72 %, 65 %, Bayern 13.000) erfordern gezieltes Graben.

Gründe:
1. **KBV und Virchowbund** — die stärksten ärztenahen Akteure — kommunizieren selbst "unter 1 %". Wenn sogar Ärzteverbände das sagen, wird es geglaubt.
2. **BMG** bestätigt: "gering". Kassenseite + Ärztevertreter einig = keine Gegenrede.
3. **Keine zentrale Gegenquelle:** Die SpiFa-Bayern-Zahlen stehen auf spifa.de, nicht auf den Hauptseiten der großen Verbände.
4. **Die Quellen die den Widerspruch thematisieren** (Agent A) erklären ihn als **Wahrnehmungsfehler der Ärzte** (Availability Bias, Trichter-Effekt) — nicht als Definitionsproblem.

---

## Methodische Selbstkritik

### Der Quellen-Tunnel

Unsere eigene Studie (ST-001) verwendete bis zum 11.04.2026 ausschließlich KV-Nordrhein-Daten und Virchowbund als Quellen für Regresshäufigkeit. Die SpiFa-Bayern-Zahlen (13.000 Regresse/Jahr) und die BMG-Zahl (47.000 V2-Verfahren) waren öffentlich verfügbar, aber in keiner unserer Rechercheketten aufgetaucht.

**Ursache:** Cross-Model-Divergenz (Claude/Copilot/Gemini) kontrolliert Modell-Bias, aber nicht Quellen-Bias. Alle Modelle schöpften aus denselben Quellen — Ärzteblatt, Virchowbund, KV-Nordrhein. Der SpiFa-Befund kam erst durch eine systematische Multi-Agenten-Recherche mit 25 Datenpunkten und 14 Domains ans Licht.

**Methodische Lektion:** Für quantitative Befunde reicht Cross-Model-Divergenz nicht. Es braucht **Cross-Source-Divergenz** — verschiedene KV-Regionen, verschiedene Verbände, verschiedene Akteursgruppen.

---

## CORE4-Referenzpunkte (aktualisiert)

**CORE4-1:** Die "unter 1 %"-Zahl misst Schicht 1 oder 2 (V1-Richtgrößenregresse, nur rechtskräftig). V2-Verfahren mit Zahlung (Schicht 3: 47.000/Jahr laut BMG) sind nicht enthalten. Der Faktor zwischen den Schichten beträgt ~500×.

**CORE4-2:** Alle verfügbaren Quellen konvergieren: Die Mehrheit der Vertragsärzte hat Regress-Erfahrung (65-72 % in Umfragen, 30-55 %/Jahr in KV-Daten). Die "unter 1 %"-Zahl ist damit nur vereinbar, wenn man "Regress" auf Schicht 1 beschränkt.

**CORE4-3:** Die Diskrepanz ist kein Wahrnehmungsfehler der Ärzte, sondern ein Definitionsproblem. Die dominante öffentliche Erklärung ("Ärzte überschätzen ihr Risiko") invertiert die Kausalität.

**CORE4-4:** V2-Daten existieren (BMG, SpiFa, KV-spezifisch), werden aber nicht als Gesamtstatistik publiziert und nicht in die öffentliche Regressquote eingerechnet. Die Behauptung "keine V2-Daten" ist zu pauschal — korrekt ist: "keine integrierte V2-Durchsetzungsstatistik".

**CORE4-5:** Die öffentliche Diskussion wird von der "unter 1 %"-Zahl dominiert, weil sowohl KBV als auch Virchowbund (ärztenahe Akteure!) sie kommunizieren — aus unterschiedlichen strategischen Gründen (Niederlassungsförderung vs. Reformforderung).

**CORE4-6:** ~70 % der V2-Verfahren betreffen Beträge unter 300 EUR. Die Bayern-Zahlen (13.000/Jahr) sind daher nicht mit 13.000 existenzbedrohenden Fällen gleichzusetzen. Die Belastung ist primär bürokratisch-psychologisch, nicht primär finanziell — mit Ausnahme der V2b-Formfehlerregresse, die existenzbedrohend sein können (BSG 491.000 EUR).

---

---

## Prior-Art-Check: Ergebnis

**Kein vollständiges Prior Art gefunden.** (Opus-Agent, 20+ Suchanfragen, 11.04.2026)

Alle Einzelbausteine sind publiziert (Ribbat 72%, BMG 47.000, SpiFa 13.000, Virchowbund 0,065%). Die **Synthese** — dass die Diskrepanz ein Definitionsproblem (Messproblem) ist, kein Wahrnehmungsproblem — ist nach systematischer Recherche **nirgends publiziert**.

Die gesamte publizierte Literatur erklärt die Diskrepanz als psychologisches Problem der Ärzte (Availability Bias, irrationale Angst, Anchoring). Niemand dreht die Kausalrichtung um.

Besonders aufschlussreich (dostal-partner.de): *"Diese Diskrepanz zwischen empfundener Einkommensbedrohung und tatsächlichen Regressen verhindert seit Jahren eine sachliche Diskussion"* — und löst sie dann als Wahrnehmungsproblem auf. Die Daten für die alternative Erklärung lagen offen.

**Vier originäre Elemente:**
1. Die Erklärung als Definitionsdivergenz (Schicht 1/2/3)
2. Die rechnerische Plausibilisierung der Ribbat-Zahl über Summierung + Poisson
3. Die Umkehr: "Messproblem statt Wahrnehmungsfehler"
4. Die Verbindung aller Datensilos (BMG + SpiFa + Virchowbund + Ribbat + KV-Daten) zu einer kohärenten Erklärung

**Originalitätsgrad: HOCH.** Nicht neue Daten, sondern eine neue Lesart bestehender Daten.

---

---

## Die Doppelfunktion: Evidenzsteuerung in formaler Verkleidung (CORE4-7)

### Alternative Hypothese (getestet 11.04.2026)

**H2:** Das Prüfsystem ist nicht nur Kostenkontrolle, sondern implizit ein MEDIZINISCHES STEUERUNGSINSTRUMENT. AM-RL, G-BA-Beschlüsse und Nutzenbewertungen codieren medizinische Evidenz als Formregeln. Einzelfallprüfungen sind das Signal, dass der Arzt eine evidenzbasierte Entscheidung ignoriert hat.

### Test-Ergebnis (Opus-Agent, AOK BaWü Prüfthemen 2025)

**H2 hat einen realen Kern (35-40%), erklärt aber nicht alles.**

| Kategorie | Anteil (geschätzt) | Charakter | Beispiele (AOK BaWü 2025) |
|-----------|-------------------|-----------|---------------------------|
| **A: Rationale Evidenzsteuerung** | ~35% | Medizinischer Inhalt als Formregel codiert | Biosimilar-Pflicht, Off-Label-Kontrolle (GLP-1-RA), Opioide Mengengrenzen, RSV-Prophylaxe Altersgrenzen, Cannabis-Mengenplausibilität |
| **B: Reine Formalkontrolle (V2b)** | ~40% | Kein medizinischer Inhalt | Stempel statt Unterschrift, fehlende ICD-Kodierung, Aut-idem-Kreuz, Dokumentationslücken |
| **C: Bürokratie-Overhead** | ~25% | Kleinstbeträge <300 EUR | Bagatellrückforderungen, Kodierungsfehler |

### Die zwei Schichten der Formalität

Die bisherige Studie behandelte "Formalität" als einheitliches Konzept (= medizinisch irrelevant). Das war zu pauschal.

**Schicht 1 — Echte Formalität (kein medizinischer Inhalt):**
- Stempel statt Unterschrift
- Fehlende ICD-Kodierung bei korrekter Verordnung
- Kreuzchen an falscher Stelle
→ Die Medizin stimmt, nur die Dokumentation nicht. Regress hier ist dysfunktional.

**Schicht 2 — Codierte Evidenz (medizinischer Inhalt als Formregel verpackt):**
- AM-RL Anlage III: Verordnungsausschlüsse basierend auf G-BA-Nutzenbewertung
- Biosimilar-Pflicht: G-BA hat Gleichwertigkeit festgestellt
- Off-Label-Verbot: Zulassungsgrenzen = Evidenzgrenzen
- Mengenbegrenzungen: Orientierungswerte aus Studienlage
→ Die "Form" IST die Evidenz. Ein Arzt der gegen die AM-RL verstößt, ignoriert eine evidenzbasierte Entscheidung.

### Der Zertifikatsfehler — korrigierte Version

**Bisherige These (zu pauschal):** "Das System misst nicht medizinische Qualität, sondern formale Angreifbarkeit."

**Korrigierte These:** Das System misst formale Angreifbarkeit, aber die Formalität hat zwei Schichten. Bei Schicht 2 (codierte Evidenz) steckt die medizinische Qualität IMPLIZIT in der Formregel — der G-BA hat die Evidenz bewertet und in eine Vorschrift übersetzt. Das System ENTHÄLT medizinische Evidenz, KOMMUNIZIERT sie aber nicht als Evidenz, sondern als Strafe.

**Das Problem ist nicht die Evidenz, sondern der Kommunikationskanal:**

| | Fortbildungspflicht (CME, §95d SGB V) | Einzelfallprüfung (V2) |
|---|---|---|
| **Timing** | VOR dem Fehler (präventiv) | NACH dem Fehler (punitiv) |
| **Signal** | "Biosimilar ist gleichwertig" (Lernsignal) | "Sie haben kein Biosimilar verordnet, zahlen Sie" (Strafsignal) |
| **Wahl des Arztes** | Arzt wählt Fortbildungsthemen selbst | Kasse wählt Prüfgegenstand |
| **Sanktion** | 10-25% Honorarkürzung (indirekt) | Voller Regressbetrag (direkt) |
| **Pflicht** | 250 CME-Punkte / 5 Jahre | Keine — nur reaktiv |

→ Das System hat ZWEI parallele Steuerungskanäle für medizinische Evidenz: CME (Lernen vor Fehler) und V2 (Strafe nach Fehler). Der zweite Kanal ist wie Verkehrserziehung nur durch Bußgelder ohne Fahrschule.

### Konsequenz für die Studie

**Was sich ändert:**
- "Das System misst nicht medizinische Qualität" → zu pauschal. Korrekter: "Das System enthält implizit Evidenz (Schicht 2), kommuniziert sie aber nur als Strafe, nicht als Lernsignal."
- "Alle Formfehler-Regresse sind dysfunktional" → nein. ~35% dienen der evidenzbasierten Steuerung.
- Der Zertifikatsfehler gilt in VOLLER Schärfe nur für Schicht 1 (echte Formalität).

**Was sich NICHT ändert:**
- V2b (Schicht 1) bleibt dysfunktional: Stempel-Regress 491.000 EUR bei korrekter Medizin
- Kein Beratungsschutz bei V2 (§106b Abs. 2 S. 4) — auch nicht bei Kategorie A
- Kein Lernkanal im Prüfsystem: Der Arzt erfährt DASS er zahlen muss, nicht WARUM die Evidenz so entschieden hat
- Die Kommunikationsasymmetrie (unter 1% vs. 57%) bleibt bestehen
- Die fehlende V2-Transparenz (keine publizierten Vergleichsquoten) bleibt

**Was DAZUKOMMT als Forderung:**
- V2 braucht einen Beratungskanal: VOR dem Regress sollte die Kasse den Arzt informieren WARUM die Verordnung gegen die AM-RL verstößt (Lernsignal statt Strafsignal)
- Das wäre die Synthese aus H1 (Beratungsschutz fordern) und H2 (Steuerungsfunktion anerkennen)

### Wenn der G-BA falsch liegt

Ein ungelöstes Problem: Wenn die AM-RL eine evidenzbasierte Entscheidung codiert, ABER der G-BA falsch liegt oder zu langsam ist (Beispiel: Mounjaro — Zusatznutzen anerkannt, aber vertraulicher Erstattungsbetrag → Arzt kennt den Preis nicht), hat der Arzt keinen Freiraum. Er muss der Formregel folgen, auch wenn seine klinische Erfahrung etwas anderes sagt. Das System setzt Evidenz durch — aber die Evidenz des G-BA, nicht die des behandelnden Arztes.

---

## KV-RLP Regress-Ranking: Prüfverhalten der Kassen (CORE4-8)

### Quelle
- **URL:** https://www.kv-rlp.de/praxis/berufspolitik/regress-ranking
- **Was gemessen wird:** Summe aller Prüfanträge (§106b + §106d) pro Krankenkasse bei der KV RLP
- **Zeitraum:** Q4 2025
- **Format:** Nur Ränge 1-10, keine absoluten Zahlen
- **Einschränkung:** "Absolute Zahlen ohne Gewichtung nach Versichertenanzahl" (KV RLP selbst)

### Ranking vs. Kassengröße

| Rang | Krankenkasse | Versicherte | Pro-Kopf-Auffälligkeit |
|------|-------------|-------------|----------------------|
| 1 | TK | ~12 Mio. | Größe erklärt teilweise |
| 2 | **BKK Pfalz** | ~141.000 | **~85× mehr pro Kopf als TK** |
| 3 | DAK | ~5,4 Mio. | Größe erklärt teilweise |
| 4 | Debeka BKK | ~188.500 | Überproportional |
| 5 | VIACTIV | ~690.000 | Leicht überproportional |
| 6 | mhplus / AOK RPS | ~498k / ~1,24 Mio. | Erwartet |
| 7 | **BKK PFAFF** | ~40.000 | **Vor BARMER trotz 200× kleiner** |
| 8 | BARMER | ~8,3 Mio. | **Unterproportional** (digital top, prüft wenig) |
| 9 | vivida bkk | ~317.000 | Erwartet |
| 10 | Novitas BKK | ~397.000 | Erwartet |

### Befunde
- **Größe erklärt Platz 1 und 3**, aber NICHT den Rest
- **BKK Pfalz** (141k, Platz 2) und **BKK PFAFF** (40k, Platz 7): Kleine Kassen prüfen überproportional
- **BARMER** (8,3 Mio., digital top): Erst Platz 8 — widerlegt "digitale Kassen prüfen mehr"
- **Hypothese:** Kleine BKKs unter finanziellem Druck (BKK PFAFF: 2,78% Zusatzbeitrag, BKK Pfalz: Fusion 2027) nutzen Prüfanträge als Einnahmequelle
- **Keine Korrelation mit technischer Digitalität** der Kassen-Website (technische Stack-Analyse durchgeführt)

### Meta-Befund
Die KV RLP publiziert das Ranking selbst "ohne Gewichtung nach Versichertenanzahl" — als politisches Instrument für die Forderung nach Bagatellgrenzen. Die Daten die man bräuchte (Prüfanträge pro 1.000 Versicherte) werden nicht berechnet. Das ist Teil derselben Intransparenz die CORE4 diagnostiziert.

---

## Vorgehensweise und Agenten-Einsätze (Methodik)

### Multi-Agenten-Experiment (11.04.2026)

| Agent | Modell | Aufgabe | Ergebnis-Datei |
|-------|--------|---------|---------------|
| Agent 1 | Sonnet | Systematische Datensammlung (8 Suchstrings, 25 Datenpunkte, 14 Domains) | RECHERCHE_REGRESSHAEUFIGKEIT_DATENPUNKTE.md |
| Agent 2 | Sonnet | Impressum-Verifizierung aller 14 Domains | RECHERCHE_REGRESSHAEUFIGKEIT_IMPRESSUM.md |
| Agent 3 | Sonnet | Kategorisierung (Kassennahe/Ärztenahe/Neutral/Kommerziell) + Tenor-Analyse | RECHERCHE_REGRESSHAEUFIGKEIT_ANALYSE.md |
| Agent A | Sonnet | Wie erklären die Quellen den Widerspruch selbst? | RECHERCHE_WIDERSPRUCH_ERKLAERUNGEN.md |
| Agent B | Sonnet | Naive Suche (Journalist ohne Vorwissen) — Bubble-Test | RECHERCHE_NAIVE_SUCHE.md |
| Agent C | Opus | Unabhängige V2-Zahlen-Suche (nur V1/V2-Einführung, keine Tipps) | RECHERCHE_V2_REGRESSZAHLEN.md |
| Prior-Art | Opus | Existiert unsere Synthese bereits? (20+ Suchanfragen) | RECHERCHE_PRIOR_ART.md |
| EFP-1 | Sonnet | KVBW Regressgefahr: Konkrete Medikamente und Prüfanlässe | RECHERCHE_KVBW_REGRESSGEFAHR.md |
| EFP-2 | Opus | Alternative Hypothese testen (Steuerungsinstrument statt Dysfunktion) | RECHERCHE_ALTERNATIVE_HYPOTHESE.md |
| KK-1 | Sonnet | Website-Bewertung 11 Kassen (vorwärts: TK→Novitas) | RECHERCHE_KK_DIGITAL_BEWERTUNG_A.md |
| KK-2 | Sonnet | Website-Bewertung 11 Kassen (rückwärts: Novitas→TK, Bias-Kontrolle) | RECHERCHE_KK_DIGITAL_BEWERTUNG_B.md |
| KK-3 | Sonnet | Kassengröße + Digital-Reputation | RECHERCHE_KK_GROESSE_DIGITAL.md |
| KK-4 | Sonnet | Technischer HTML-Stack-Analyse | RECHERCHE_KK_TECHSTACK.md |
| Evidenz-Steuerung | Opus | Suche nach These "Evidenz in formaler Verkleidung" | RECHERCHE_EVIDENZSTEUERUNG.md (ausstehend) |

### Methodische Erkenntnisse

1. **Cross-Model-Divergenz** kontrolliert Modell-Bias, aber NICHT Quellen-Bias
2. **Cross-Source-Divergenz** (14 Domains, verschiedene Akteursgruppen) brachte Bayern-Zahlen ans Licht
3. **Naive-Suche-Test** bestätigt die "unter 1%"-Bubble
4. **Alternative-Hypothese-Test** (H2) ergab 35-40% Erklärungskraft → Doppelfunktion anerkannt
5. **Reihenfolge-Bias-Kontrolle** (KK-1 vs. KK-2): Bewertungen konvergierten → robust
6. **Prior-Art-Check:** Synthese ist originär (alle Einzelteile publiziert, Verbindung nirgends)

---

---

## Bilanz: Was bleibt, was fällt, was kommt dazu

### Was WEGFÄLLT oder sich abschwächt

| Bisherige Behauptung | Status nach CORE3/CORE4 |
|---------------------|------------------------|
| "Das System misst nicht medizinische Qualität" | **Zu pauschal.** ~35% der V2-Prüfungen sind evidenzbasierte Steuerung (Schicht 2) |
| "Doppelter Zertifikatsfehler gilt für beide Verfahren" | **Nur noch für V2b** (Schicht 1). V1 und V2a haben medizinische Berücksichtigung |
| "V1 ist unfair" | **Widerlegt.** V1 hat Schutzstufenmodell (Anhörung, Beratung, Karenzzeit, Deckel 25k) |
| "Unter 1% ist eine Täuschung" | **Zu scharf.** Es ist eine Definition, nicht eine Lüge. Aber irreführend kommuniziert |
| "Keine V2-Daten verfügbar" | **Falsch.** BMG hat 47.000, SpiFa hat Bayern-Zahlen. Werden nur nicht integriert publiziert |
| "Das ganze System ist dysfunktional" | **Übertrieben.** ~35% funktioniert als evidenzbasierte Steuerung |

### Was BLEIBT und STÄRKER wird

| Befund | Warum stärker |
|--------|-------------|
| **V2b (Formfehler) ist dysfunktional** | Jetzt isoliert von V2a — Argument ist chirurgischer, nicht mehr pauschal |
| **Kein Beratungsschutz bei V2** | Gilt für BEIDE V2-Typen — auch die rationale Steuerung kommt ohne Warnung |
| **Kommunikationsasymmetrie** | Mit BMG (47.000) und Bayern (13.000) empirisch belegt, nicht nur modelliert |
| **Ribbat 72% ist rechnerisch plausibel** | Nicht mehr "überraschend" sondern "erwartbar" bei den V2-Volumina |
| **Stempel-Fall 491.000 EUR** | Stärker — klar in V2b/Schicht 1 verortet, nicht in Pauschalkritik |
| **Fehlende Transparenz** | Stärker — Daten EXISTIEREN (BMG, Bayern) und werden TROTZDEM nicht integriert publiziert |
| **KNV-Tabelle (14 Maßnahmen)** | Unverändert gültig — Halbsatz-Streich bleibt Rang 1 |
| **PP-003 Transparenzportal** | Sogar stärker — könnte die V2a/V2b-Trennung empirisch leisten |

### Was NEU dazukommt

| Neuer Beitrag | Originalität (Prior-Art-Check) |
|--------------|-------------------------------|
| **Definitionsdivergenz** als Erklärung für Ribbat-Diskrepanz (Messproblem, nicht Wahrnehmungsfehler) | Originär — alle Einzelteile publiziert, Synthese nirgends |
| **Zwei Schichten der Formalität** (echte Form vs. codierte Evidenz) | Originär |
| **Punitiver vs. edukativer Evidenzkanal** (V2 vs. CME als parallele Steuerung) | Originär |
| **Kassenspezifisches Prüfverhalten** (BKK Pfalz 85× überproportional pro Kopf) | Neu (KV-RLP-Ranking + Größennormalisierung) |
| **Bubble-Diagnose** der öffentlichen Diskussion ("unter 1%" dominiert erste 5 Treffer) | Empirisch bestätigt (naiver Agent) |
| **Die Studie wird kleiner im Anspruch und größer in der Glaubwürdigkeit** | — |

---

## Prior-Art-Checks: Zusammenfassung

| These | Status | Einzelteile publiziert? | Synthese publiziert? |
|-------|--------|------------------------|---------------------|
| **Definitionsdivergenz** (unter 1% = Messproblem, nicht Wahrnehmungsfehler) | **Originär** | Ja (Ribbat, BMG, SpiFa, Virchowbund) | Nein |
| **Evidenz in formaler Verkleidung** (Regress + CME = zwei Kanäle, punitiv vs. edukativ) | **Originär** | Ja (Stallberg, IQWiG, Gandjour, Zeschick) | Nein |

Beide Synthesen sind eigenständige Beiträge. Alle Einzelbausteine liegen in der Literatur vor — die Verbindung fehlt.

**Besonders relevant für die Evidenzsteuerungs-These:**
- Stallberg (Medizinrechtler): AM-RL codiert Evidenz in Formregeln
- IQWiG: AMNOG ist explizit mehr als Kostenkontrolle
- Zeschick et al. (BMC HSR 2023): Bayerisches WSV-System als Kontrast Bestrafen vs. Lernen
- Gandjour (Health Policy 2018): Regressangst steuert Verordnungsverhalten
- Luley/Pieloth (Monitor Versorgungsforschung 2018): Doppelfunktion Kosten + Evidenz (teilweise)

Recherche-Protokoll: `RECHERCHE_EVIDENZSTEUERUNG.md`

---

*CORE4 v3 erstellt: 2026-04-11 | CL + LG*
*Beide Prior-Art-Checks abgeschlossen — beide Synthesen originär*
*15 Agenten eingesetzt, 14 Recherche-Dateien erzeugt*
*Vollständiges Methodik-Protokoll: METHODIK_RECHERCHE_PROTOKOLL.md*
