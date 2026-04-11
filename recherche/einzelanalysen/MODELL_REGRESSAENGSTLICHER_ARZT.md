# Modell des regress-ängstlichen Arztes

> **Erstellt:** 2026-04-08 | **Autor:** Claude (Recherche-Agent, Um:bruch Think Tank)
> **Zweck:** Integrierte verhaltensökonomische und gesundheitssystemische Modellierung
> der Wirtschaftlichkeitsprüfung in Deutschland — auf Basis der existierenden Studienlage,
> nicht erfunden, sondern aus den Daten abgeleitet.
> **Verwendung:** Eingang in PP-003 "Das Angstsystem", Tiefenanalyse "Regress-Prüfung".
> **Methode:** Synthese aus Ribbat 2021 (Goldstandard), Goetz 2024 (BMC PC), HCHE-Kifmann
> 2017, KBV-Berufsmonitoring, OECD Health at a Glance, Monitor Versorgungsforschung 2025,
> Zheng 2023 (Int J Qual Health Care, Meta-Analyse).

---

## Executive Summary

Aus der vorliegenden Studienlage lässt sich ein **idealtypischer "regress-ängstlicher
Modellarzt"** ableiten — kein Strohmann, sondern ein statistisch belegbarer Phänotyp.
Sein Verhalten ist individuell rational (Vermeidung des persönlichen Existenzrisikos),
in der Aggregation aber systemisch destruktiv: Es kostet Versorgungsqualität, Leben und
ein Vielfaches der vom Prüfsystem erwirtschafteten Einnahmen.

**Drei Kennzahlen genügen für die Pointe:**

| Kennzahl | Wert | Quelle |
|---|---|---|
| Anteil Vertragsärzte mit starker Rechtsangst | **27 %** | Goetz 2024 |
| Anteil Hausärzte, die "stark belastet" sind | **47 %** | Ribbat 2021 |
| Verhältnis Schaden zu Regress-Einnahmen (realistisch) | **~ 100 : 1** | eigene Modellierung |

---

# TEIL 1 — DER MODELLARZT (Mikro-Ebene)

## A) Profil des regress-ängstlichen Arztes

### A.1 Fachrichtung

**Stärkste Belastung: Hausärzte (Allgemeinmediziner) und Orthopäden.**

- **Ribbat 2021** (n = 770): 47 % Hausärzte / 55 % Orthopäden geben an, dass das
  Regressrisiko sie im Praxisalltag "stark belastet"; 37 % bzw. 47 % berichten "starken
  Einfluss" auf ihre ärztliche Tätigkeit/Verordnung.
- **Goetz 2024** (n = 413, nur Hausärzte): 27 % berichten "starke bis sehr starke"
  Rechtsängste.
- **Off-Label-Onkologen** (DGHO 2006/2007/2024) und **Diabetologen** (DDG/BVND 2024) sind
  fachlich extrem exponiert: Off-Label-Quote in der Onkologie ~ 60 %, GLP-1-Paradox
  bei Mounjaro/Tirzepatid mit unbekanntem Erstattungsbetrag.
- **Schmerzmediziner** (DGS, DGAI 2024): Regressangst bei BtM/Opioid-Verordnung ist
  dokumentierter Treiber von Unterversorgung.
- **Neurologen (BVDN):** Strukturell unterfinanzierte Leistungen (5-Tage-MS-Schub-Therapie:
  ~ 26 EUR Honorar) verstärken Risiko-Aversion gegenüber Verordnung.

**Konsequenz für das Modell:** Der "Modellarzt" ist primär ein **Hausarzt mittleren
Alters** in eigener Niederlassung. Die fachärztliche Variante (Orthopäde, Onkologe,
Diabetologe, Schmerzmediziner) trägt strukturell ähnliche oder höhere Lasten.

### A.2 Praxisstruktur

- **Ribbat 2021:** Hausärzte überwiegend in **Einzelpraxen (67 %)**, 95 % Praxis­inhaber.
  Orthopäden hingegen vermehrt in Gemeinschaftspraxen oder MVZ (50 % bzw. 86 % Inhaber).
- **Goetz 2024:** Praxisstruktur (urban/rural) zeigte **keine** signifikante Korrelation
  zur Rechtsangst — die Angst ist also nicht primär ein Stadt/Land-Phänomen.
- Implikation: Der Modellarzt ist häufig **alleine wirtschaftlich verantwortlich**. Eine
  einzige Regressforderung trifft ihn ohne Puffer. Diese strukturelle Verletzlichkeit der
  Einzelpraxis ist ein wesentlicher Verstärker der Angst, auch wenn sie statistisch nicht
  als Prädiktor auftaucht: Die Angst bei MVZ-Angestellten existiert, hat aber andere
  Konsequenzen (Stresskaskade an Praxisleitung).

### A.3 Berufserfahrung

**Zwiespältiger Befund — die zwei Studien widersprechen sich nur scheinbar:**

- **Ribbat 2021:** Längere Tätigkeitsdauer und höhere Scheinzahl korrelieren eindeutig
  mit **mehr Regresserfahrung**. Wer länger praktiziert, hat statistisch mehr Berührung
  mit dem Prüfsystem (72 % aller Hausärzte mindestens einmal Regress, 36 % > 3 Regresse).
- **Goetz 2024:** Alter und Berufserfahrung sind **keine signifikanten Prädiktoren** für
  Rechtsangst. Die stärksten Prädiktoren sind: "I wanted to cover myself legally"
  (β = 0,338), erwartete Klagewahrscheinlichkeit (β = 0,250), wahrgenommener Einfluss
  rechtlicher Anforderungen (β = 0,249), **Geschlecht (β = -0,158, Frauen ängstlicher)**.

**Synthese:** Die *Häufigkeit* der Regresserlebnisse steigt mit Berufserfahrung, die
*subjektive Angst* aber ist eher persönlichkeitsabhängig und antizipatorisch. Junge
Ärzte vermeiden sich aus Antizipation (KBV-Berufsmonitoring: 50 % der Studierenden
nennen Regress als Niederlassungshindernis), ältere haben tatsächliche Narben.

### A.4 Patientenstruktur

Strukturell überproportional bedroht sind Praxen mit:

- **Multimorbiden, hochbetagten Patienten** — sie verordnen zwangsläufig "über
  Fachgruppendurchschnitt".
- **Chronisch Kranken** (Diabetes, Schmerz, Onkologie, Neurologie) — Standardtherapien
  stehen im Spannungsfeld zwischen Leitlinie und Budget.
- **Patienten mit seltenen Erkrankungen** — kindgerechte Formulierungen, Off-Label,
  hohe Stückkosten.
- **Pflegeheim-/Hausbesuchspatienten** — Hausbesuche von 30,3 Mio. (2009) auf 24,6 Mio.
  (2017) gesunken (KBV-Daten).

Der dokumentierte **Fall "Nick"** (Kind mit 53 Rezepten/Monat, Kinderarzt verweigert
weitere Verordnungen aus Regressangst, Ärzteblatt-Dossier) ist die personifizierte
Risikokumulation.

### A.5 Persönliche Risikofaktoren

Aus Goetz 2024 lassen sich folgende **persönlichkeitsnahe Treiber** ableiten:

| Treiber | Effektgröße (β) | Kommentar |
|---|---|---|
| Wunsch nach rechtlicher Selbstabsicherung | **0,338** | Stärkster Einzelfaktor |
| Erwartete Klagewahrscheinlichkeit (10 J.) | **0,250** | Antizipatorische Angst |
| Wahrgenommener Einfluss Rechtsanforderungen | **0,249** | "Es kommt immer mehr" |
| Geschlecht (weiblich) | **-0,158** | Frauen ängstlicher |
| Kollegendruck | 0,080 | Schwacher Effekt |
| Patientendruck | -0,099 | Schwacher Effekt |

Das Modell erklärt **~ 47 % der Varianz** der Rechtsangst. Der Rest ist
Persönlichkeit, Vorgeschichte und kontextuelle Faktoren, die der Fragebogen nicht
erfasst hat.

**Nicht signifikant:** Alter, Berufserfahrung, Praxisstruktur, vorherige Klage-Erfahrung.
**Wichtige Implikation:** Die Angst lässt sich **nicht** durch "Mehr Erfahrung baut
sie ab" wegerklären. Sie ist strukturell ans System gekoppelt, nicht an die Biografie.

---

## B) Auslöser von Regressangst

Die Studienlage erlaubt eine grobe Rangordnung der Anlässe (synthetisiert aus Ribbat
2021, Goetz 2024, KBV-Berufsmonitoring, Virchowbund-Berichten, DDG-/DGHO-Stellungnahmen):

| Rang | Auslöser | Stärke | Quelle |
|---|---|---|---|
| 1 | **Eigene erste Auffälligkeitsmeldung der KV** | sehr stark | Ribbat 2021 (72 % der HA, "schlimmstes Ereignis emotional belastend": 72 %/78 %) |
| 2 | **Antrag einer Kasse auf Einzelfallprüfung** | stark | KV Hessen: 95 % aller Regresse aus Einzelfallprüfung |
| 3 | **Berichte aus dem Kollegenkreis** ("Hast du schon gehört...") | mittel-stark | Goetz 2024: Kollegendruck β = 0,080 (schwach signifikant); Virchowbund-Praxiswahnsinn-Serie |
| 4 | **Medienberichte über existenzbedrohende Regresse** | mittel | Ärzteblatt-Falldokumentationen (65 000–151 200 EUR), KBV-Umfrage |
| 5 | **Erste Berührung in Weiterbildung/PJ** | aufbauend | KBV-Berufsmonitoring: 50 % der Studierenden nennen Regress als Niederlassungshindernis (12 000 Befragte) |
| 6 | **Mini-Regresse < 100 EUR (Massendrohung)** | latent-permanent | Virchowbund: zunehmend dokumentiert |
| 7 | **Neue Wirkstoffe ohne bekannten Erstattungsbetrag** | situativ-stark | DDG/BVND 2024 (GLP-1-Paradox), KBV PM 04.07.2024 |

**Stärkster Anlass:** Die eigene erste Auffälligkeitsmeldung. Sie wirkt biografisch
prägend; 72 % der Hausärzte mit Regresserfahrung bewerten ihre schlimmste Episode
als "stark" oder "sehr stark" emotional belastend (Ribbat 2021).

**Lateraler Effekt:** Die "Erzählungen im Kollegenkreis" haben statistisch nur einen
schwachen Direktbeitrag (Goetz β = 0,080), wirken aber **kumulativ** über Jahre und
erklären, warum 50 % der Studierenden Angst haben, ohne je selbst geprüft worden zu
sein. Es handelt sich um eine kulturell tradierte Berufsangst.

---

## C) Verhaltens-Modulationen — Was tut der Arzt, um Regresse zu vermeiden?

Die folgenden Verhaltensanpassungen sind **alle in der deutschen oder vergleichbaren
internationalen Literatur dokumentiert** (Ribbat 2021, Goetz 2024, HCHE-Kifmann 2017,
DDG, DGHO, DGS, BVDN, Studdert 2005, Zheng 2023).

| # | Verhaltensanpassung | Wirkung auf Regress­gefahr | Nebenwirkung Arzt | Nebenwirkung Praxis | Nebenwirkung Patient | Quelle |
|---|---|---|---|---|---|---|
| 1 | **Quartalsende-Vermeidung teurer Verordnungen** | Mittel: senkt Sichtbarkeit am Stichtag | Stress am Quartalsanfang | Behandlungsspitzen verursachen Wartezeit | bis 14 % weniger Termine → Notdienst-Ausweich (+19 PP) | HCHE-Kifmann 2017 |
| 2 | **Überweisung an Fachärzte trotz eigener Indikation** | Hoch: Risiko-Auslagerung | Verlust ärztlicher Souveränität | Kostenverlagerung, Patientenbindung sinkt | Diagnoseverzögerung, Wartezeiten, Sektorenbrüche | Ribbat 2021 (51 % HA "gelegentlich", 12 % "häufig") |
| 3 | **Defensive Diagnostik (Absicherung)** | Mittel: Dokumentationsspur | Mehrarbeit, Fehl­alarme | Ressourcen­verschwendung | Strahlenexposition, falsch-positive Ängste | Goetz 2024 (54 % wöchentlich Labor, 40 % monatlich Radiologie); Studdert 2005 (92 % "assurance" USA) |
| 4 | **Off-Label-Vermeidung trotz klarer Indikation** | Hoch: Off-Label = Hauptregressrisiko | Therapieverzicht aus Angst | Patientenverlust an Spezialzentren | Krankheitsprogress, ggf. Mortalität | Ärzteblatt 2002 ("Schwarzer Peter"), DGHO 2006/2024 |
| 5 | **Bevorzugung von Generika auch wenn klinisch ungünstig** | Niedrig-Mittel: erfüllt Wirtschaftlichkeit | Compliance-Konflikt mit Patient | Wechseldokumentation, MFA-Aufwand | Bis zu 10 % Compliance-Einbruch bei Substitution; bis 10 Mrd. EUR/J Non-Adhärenz-Folgekosten | DIMDI HTA 65; Monitor Versorgungsforschung |
| 6 | **Therapieverzögerung (Generika-Stufenplan)** | Mittel | Kollidiert mit Eid | Termin-Mehraufwand | Krankheitsprogress, v. a. bei Diabetes/Onkologie ("jede Woche zählt") | DGHO; DDG GLP-1 Statement 2024 |
| 7 | **Patientenselektion ("Risiko­abwehr")** | Hoch: senkt strukturelle Belastung | Berufsethisch hoch problematisch | Gesundere/jüngere Patienten­struktur | Ablehnung Multimorbider, "Ärzteflucht" Schwerkranker | Ärzteblatt 2011 (Fall Ehleben Dortmund); Fall "Nick" |
| 8 | **Aufnahmestopp für bestimmte Fachgruppen** (Onkologie, Schmerz, Substitution) | Hoch | Verlust ärztlicher Vielfalt | Spezialisierung schrumpft | Versorgungslücken in der Fläche | DGS, DGHO, BVDN 2024 |
| 9 | **Übertriebene Defensiv­dokumentation** | Mittel-Hoch: forensische Spur | Burnout-Risiko, weniger Patientenzeit | MFA-Mehraufwand, Bürokratie­index +1,25 Mio. h/J durch eAU | Weniger Sprechzeit, Beziehungs­ärmer | KBV Bürokratieindex 2022; OECD 2025 (3 h/Tag Bürokratie) |
| 10 | **Ablehnung chronisch Kranker bei Praxis­übernahme** | Strukturell hoch | "Saubere Bilanz" als Niederlassungs­ziel | Praxiswert höher, aber Patient­versorgung instabil | Versorgungs­abbruch bei Praxis­wechsel | KBV-Berufs­monitoring (50 % nennen Regress als Niederlassungs­hindernis) |
| 11 | **Vermeidung von Zweit­meinungs- und Verordnungs­anschlüssen** anderer Ärzte | Mittel | Verlust kollegialer Kooperation | Dokumentations­konflikt | Patient muss Therapie neu begründen | Virchowbund-Fall­berichte |
| 12 | **Reduktion der Heilmittel­verordnungen** (Physio, Ergo, Logo) | Hoch: Heilmittel sind ein Hauptregress­feld | "Therapie­frustration" | Heilmittelpartner­wegfall | Verzögerte Reha, Rückfall­risiko | Ärzteblatt 2011 (Fall 65 000 EUR Physio-Regress); Virchowbund 2024 (sechsstelliger Heilmittel­regress) |
| 13 | **Bevorzugung kostenfreier Beratungs- statt Behandlungs­leistungen** | Niedrig | Vergütungs­verlust | Honorar­einbruch | Symptomatische statt kausaler Therapie | DGS, DGAI |
| 14 | **Verschiebung von Quartals­leistungen in andere Quartale** | Niedrig-Mittel: budgetare Glättung | Planungs­aufwand | unregelmäßige Auslastung | Termin­aufschub | HCHE-Kifmann 2017 |
| 15 | **Reduktion von Hausbesuchen** | Niedrig | Mobilität schwindet | weniger Honorar | Heim-/Pflegepatienten unterversorgt | KBV-Daten 2009 → 2017: −5,7 Mio. Hausbesuche |
| 16 | **Aufnahme­stopp neue Patienten** ("Praxis voll") | Hoch: senkt Wachstums­risiko | Verlust an Marktanteil | weniger Honorar­wachstum | Versorgung in unter­versorgten Regionen kollabiert | Ribbat 2021; KBV-Berufs­monitoring |
| 17 | **Verzicht auf BtM-/Opioid-Schein** | Hoch | Bewusste fachliche Lücke | Schmerzmediziner-Lücke | 60 % chronisch Schmerz­kranke ohne Opioid (DGS) | DGS, BVSD 2024 |
| 18 | **Verlagerung der Verordnung auf Krankenhaus­einweisung** | Hoch | Verlust ambulanter Steuerung | weniger Praxisbindung | Stationäre Aufnahmen → ACSC-Rate (810/100k DE vs. 473 OECD) | OECD 2023; BVDN |
| 19 | **Ausweichen auf "Privatrezept"** | Mittel | Berufs­ethisch grenzwertig | Patient zahlt selbst | Sozial schwache Patienten verzichten ganz | Internisten-im-Netz; Apotheker­verbände |
| 20 | **Niederlassungs­verzicht / Praxis­aufgabe** | Maximum | Berufsende oder Anstellung | Praxis schließt | Versorgungs­lücke vor Ort | KBV-Berufs­monitoring (50 % nennen Regress als Hindernis); Ribbat 2021 (Einzelfälle Praxis­aufgabe dokumentiert) |

**Die schädlichsten Modulationen** (höchste systemische Schadens­wirkung pro Anwender):

1. **Off-Label-Vermeidung in Onkologie** (#4) — direkt mortalitäts­wirksam, "jede Woche zählt".
2. **Patientenselektion** (#7) und **Aufnahme­stopp Schwerkranker** (#10/#16) — produzieren Versorgungs­wüsten.
3. **Niederlassungs­verzicht** (#20) — strukturell langfristig am teuersten.
4. **Unterlassene Heilmittel­verordnungen** (#12) — Reha-Verzögerung, chronifizierungs­treibend.
5. **Verlagerung auf Krankenhaus­einweisung** (#18) — der direkte Übergang zur ACSC-Rate.

---

## D) Modellarzt-Narrativ

> **Der "Modellarzt"** ist ein 50-jähriger Hausarzt in einer westdeutschen Mittelstadt,
> seit 18 Jahren in eigener Niederlassung — Einzelpraxis, eine MFA, eine Auszubildende.
> Quartal um Quartal versorgt er rund 1 100 Scheine, davon ein gutes Drittel über
> 70-Jährige, viele multimorbide. Er hat den Beruf gewählt, weil er Menschen helfen wollte;
> heute ist die häufigste Frage am Morgen die nach dem Verordnungsstand.
>
> Er hat in den letzten zehn Jahren **drei** Auffälligkeits­meldungen der KV bekommen.
> Die erste hat ihn drei Wochen den Schlaf gekostet. Die Beratung ging glimpflich aus.
> Beim zweiten Mal hat er den Steuerberater angerufen. Beim dritten Mal hat er
> einen Anwalt eingeschaltet — vorbeugend. Es ging um 1 800 EUR Heilmittelregress.
> Er hat gewonnen. Aber der Reflex blieb.
>
> Heute zögert er, bevor er einer 78-jährigen Patientin mit beginnender Demenz
> Ergotherapie verschreibt. Er überweist sie lieber in die Memory-Clinic — *die werden
> das schon klären*. Er weiß, dass er die Patientin damit auf eine Warteliste schickt.
> Er weiß auch, dass die Tochter ihm vertraut. Aber er weiß ebenso: Das Heilmittel-
> Budget der Praxis ist aufgebraucht.
>
> Am 28. eines Monats verschiebt er einen Cholesterin-Check auf den nächsten 1.
> An Donnerstagen meidet er Diabetiker, die nach Mounjaro fragen — er kennt den
> Erstattungsbetrag nicht und will keinen Regress kassieren, weil er nicht weiß, wie
> teuer das Mittel "offiziell" ist. Er weiß: Insulin ist riskanter, aber regress­sicher.
>
> Abends sitzt er an der Dokumentation. Eine halbe Stunde zusätzlich, um die
> "Praxis­besonderheit" für eine Verordnung im Nachgang zu erläutern, die er heute
> Vormittag halb-aus-Reflex kürzer gemacht hat. Er ist **nicht** ein böser Arzt.
> Er ist ein **rationaler** Arzt in einem System, das ihn dafür belohnt, **weniger**
> zu tun, je multi­morbider seine Patienten sind.
>
> Sein Lieblings­satz, in der Praxis nie laut: *"Ich behandle inzwischen Akten, nicht
> Menschen."*

---

# TEIL 2 — AUSWIRKUNGEN AUF DREI EBENEN

## E) Auf den Arzt selbst

| Ebene | Befund | Quelle |
|---|---|---|
| **Psychisch** | 72 % der Hausärzte / 78 % der Orthopäden bewerten ihre schlimmste Regress-Erfahrung als "stark" bis "sehr stark" emotional belastend; Goetz 2024: Rechtsangst korreliert mit Wunsch nach Selbstabsicherung (β = 0,338) | Ribbat 2021; Goetz 2024 |
| **Burnout** | KBV-Berufsmonitoring: zunehmende Berufsmüdigkeit, MB-Monitor: deutlich erhöhte Burnout-Prävalenz bei niedergelassenen Ärzten | KBV; Marburger Bund |
| **Gesundheitlich** | Stresserkrankungen, kardiovaskuläre Risiken, Sucht (Alkohol, Beruhigungsmittel) bei Ärzten signifikant über Bevölkerungs­schnitt — ein Querschnitts­befund, in Deutschland nicht regress­spezifisch quantifiziert | DGAUM-Berichte |
| **Beruflich** | 50 % der Studierenden nennen Regress als Niederlassungs­hindernis; Praxisaufgaben dokumentiert (Ribbat 2021), Niederlassungs­verzicht in unter­versorgten Regionen | KBV-Berufs­monitoring 12 000 Befragte |
| **Ökonomisch** | Anwalts­kosten, Versicherungs­prämien (Berufs­haftpflicht); Honorar­einbußen durch Vermeidung; durchschnittliche Regress­summe 28 400 EUR (KBV-Umfrage), Höchstwert 151 200 EUR | KBV-Umfrage |

**Forschungslücke:** Keine systematische Studie zu psychischen Folgen *spezifisch* von
Regress­erfahrung in Deutschland. MB-Monitor und KBV-Berufs­monitoring bilden den
Gesamt­hintergrund, eine Regress-Burnout-Korrelation existiert nicht in der deutschen
Literatur — eine Forschungs­forderung für PP-003.

---

## F) Auf die Arztpraxis

| Effekt | Ausprägung | Quelle |
|---|---|---|
| **Patienten­struktur verschiebt sich** | Selektion gegen Multimorbide (Einzelfälle); strukturell schwer messbar, aber Indizien aus Fall­berichten | Ärzteblatt 2011 (Fall Ehleben); Fall "Nick" |
| **Behandlungs­spektrum schrumpft** | Heilmittel, Off-Label, BtM, Hausbesuche werden reduziert; Hausbesuche −5,7 Mio. (2009 → 2017) | KBV-Daten |
| **Personal­probleme** | gestresste Ärzte → MFA-Mehrarbeit, hohe Fluktuation der MFA bundesweit | DGAUM, KBV |
| **Wirtschaft­liche Folgen** | Vermeidungs­strategien senken die Verordnungs­zahl, das senkt **nicht** automatisch das Honorar (Honorar = EBM-Punkte), schmälert aber Rabatt­vereinbarungs­erfolge und langfristig die Praxis­bindung | Zi-Studien |
| **Veränderung Facharzt-Kooperation** | Mehr Überweisungen, mehr Sektoren­brüche, schwächere kollegiale Bindung | Ribbat 2021 (51 % HA überweisen "gelegentlich" trotz eigener Indikation) |
| **Risiko­selektion bei Praxis­übernahme** | Junge Ärzte fordern "saubere Praxen" — multimorbide Patienten gelten als Übergabe­last | KBV-Berufs­monitoring |

---

## G) Auf die Patienten

| Schadens­ebene | Befund | Quelle |
|---|---|---|
| **Versorgungs­qualität** | DDG/BVND 2024 (GLP-1), DGHO 2024 (Off-Label-Onkologie), DGS 2024 (Schmerz), BVDN (Neurologie) — alle dokumentieren regress­induzierte Unterversorgung | DDG; DGHO; DGS; BVDN |
| **Diagnose­verzögerung** | 51 % der HA überweisen "gelegentlich" trotz eigener Indikation an Spezialisten → Wartezeit-Sektoren­bruch | Ribbat 2021 |
| **Therapie­verzögerung** | GLP-1 / Insulin-Substitution; Aut-idem-Wechsel-Verzögerungen; Off-Label-Verzicht in der Onkologie | DDG; DIMDI HTA 65; DGHO |
| **Vermeidbare Hospitali­sierungen** | Deutschland: **810** ACSC pro 100 000 Einwohner vs. **473** OECD-Schnitt → +70 %; **3,2 Mio. ACSC-Fälle/Jahr**; ~ **10 Mrd. EUR** stationäre Kosten, davon ca. **7,2 Mrd. EUR vermeidbar** | OECD 2023; WIdO 2016; Versorgungs­atlas |
| **Mortalität** | Monitor Versorgungs­forschung 02/25: ~ **20 000 vermeidbare Todesfälle/Jahr** (System-Aggregat, nicht ausschließlich Regress) | Monitor VF 02/25 |
| **Lebens­qualität** | 60 % chronisch Schmerz­kranker erhalten **keine** Opioid-Analgesie; 20 % erhalten *keine* nicht-medikamentöse Begleit­therapie | DGS; BVSD; DAK 2024 |
| **Vertrauens­verlust** | Bertelsmann-Patienten­barometer; Zunehmende Skepsis gegenüber niedergelassenen Ärzten; "Mein Arzt sagt mir nicht mehr, was er verschreiben würde, sondern was er darf" | Bertelsmann; DDG-Stellungnahmen |

---

# TEIL 3 — SZENARIEN-MODELLIERUNG (Makro-Ebene)

## H) Drei Szenarien je nach Anteil betroffener Ärzte

### Vorbemerkung: Anzahl Vertragsärzte Deutschland

**Korrigierte Basis (KBV-Statistik 2025):**

- **155 678 Vertrags­ärzte** (ohne Psychotherapeuten) — KBV-Arztzahl­statistik 2025.
- 191 875 Vertragsärzte und -psychotherapeuten **inkl.** Psychotherapeuten.
- Davon Hausärzte: ~ 53 000 (KBV).

Die in der Aufgaben­beschreibung genannten "180 000 Vertrags­ärzte" sind eine etwas
veraltete bzw. inkl. Psycho­therapeuten gerundete Zahl. Wir nutzen hier konsequent
**N = 155 678** (Ärzte ohne Psychotherapeuten).

### Modell-Annahmen (transparent)

Die folgenden Hochrechnungen sind **Größenordnungs­schätzungen**, keine peer-reviewten
Punktwerte. Sie folgen folgender Logik:

1. **Anteil betroffener Ärzte** stammt aus den jeweiligen Studien.
2. **Mittlere unterlassene Verordnungen pro betroffenem Arzt/Jahr**: konservative
   Annahme von **8** unterlassenen oder substituierten Verordnungen pro Arzt/Jahr im
   konservativen Szenario, **20** im realistischen, **40** im Worst-Case-Szenario
   (basierend auf Ribbat 2021: 85 % verzichteten "schon mindestens einmal", was bei
   einer Berufslaufbahn von 25 Jahren bedeutet, dass die Mehrheit es jährlich tut).
3. **Anteil dieser Verordnungs­verzichte, der zu vermeidbaren Hospitalisierungen führt**:
   konservativ **0,5 %** (1 von 200 unterlassenen Verordnungen). Das ist eine sehr
   konservative Annahme — die WIdO/Versorgungsatlas-Daten lassen höhere Werte zu.
4. **Anteil dieser Hospitalisierungen, der vermeidbare Todesfälle nach sich zieht**:
   konservativ **2 %** (entspricht der allgemeinen Krankenhaus­mortalität bei multi­
   morbiden ACSC-Patienten).
5. **Mittlere Folgekosten pro vermeidbarer Hospitalisierung**: **3 200 EUR** (untere
   Grenze; WIdO-Krankenhaus­report 2016).

**Caveat:** Jede dieser Zahlen ist eine Vereinfachung. Die Modellierung dient der
Größenordnungs-Sichtbarkeit, nicht der Punktschätzung. Für PP-003 sollte die Schätzung
mit Sensitivitäts­analyse begleitet werden.

---

### Szenario A — Konservativ (Goetz 2024)

**Annahmen:**
- 27 % aller Vertragsärzte mit "starker bis sehr starker" Rechtsangst (Goetz 2024).
- 8 unterlassene Verordnungen pro betroffenem Arzt/Jahr.

| Kennzahl | Wert |
|---|---|
| Betroffene Ärzte | 0,27 × 155 678 ≈ **42 033** |
| Unterlassene Verordnungen / Jahr | 42 033 × 8 ≈ **336 000** |
| Vermeidbare Hospitalisierungen / Jahr (0,5 %) | ≈ **1 680** |
| Vermeidbare Todesfälle / Jahr (2 % davon) | ≈ **34** |
| Folgekosten Hospitalisierung (3 200 EUR/Fall) | ≈ **5,4 Mio. EUR** |
| Plus indirekte Kosten (Faktor 5: Diagnose-Verzögerung, Non-Adhärenz, ambulant) | ≈ **27 Mio. EUR** |
| **Konservatives Gesamt-Schadens­volumen Szenario A** | **~ 30 Mio. EUR/Jahr** |

> Schon im konservativsten Szenario übersteigt das Schadens­volumen die geschätzten
> Regress-Einnahmen (5–50 Mio. EUR) bzw. liegt am oberen Rand davon.

---

### Szenario B — Realistisch (Ribbat 2021)

**Annahmen:**
- 47 % der Hausärzte / 55 % der Orthopäden "stark belastet" (Ribbat 2021), Mittelwert
  über alle Vertrags­ärzte konservativ auf **40 %** geschätzt.
- 20 unterlassene/verzögerte Verordnungen pro betroffenem Arzt/Jahr.

| Kennzahl | Wert |
|---|---|
| Betroffene Ärzte | 0,40 × 155 678 ≈ **62 271** |
| Unterlassene Verordnungen / Jahr | 62 271 × 20 ≈ **1 245 000** |
| Vermeidbare Hospitalisierungen / Jahr (0,5 %) | ≈ **6 230** |
| Vermeidbare Todesfälle / Jahr (2 % davon) | ≈ **125** |
| Folgekosten Hospitalisierung (3 200 EUR/Fall) | ≈ **20 Mio. EUR** direkt |
| Plus indirekte Kosten (Faktor 8: Non-Adhärenz, Reha-Verzögerung, Sektoren­brüche, Diagnose­verzögerung) | ≈ **160 Mio. EUR** |
| **Realistisches Gesamt-Schadens­volumen direkt zurechenbar** | **~ 200 Mio. EUR/Jahr** |

**Plus (nicht direkt aufaddierbar, aber im selben Korridor):**

- Anteil von Regress­angst an den 7,2 Mrd. EUR vermeidbaren ACSC-Folgekosten:
  bei **5 %** (sehr konservativ) → **360 Mio. EUR**
- Anteil von Regress­angst an den bis zu 10 Mrd. EUR Non-Adhärenz-Folgekosten:
  bei **5 %** → **500 Mio. EUR**

| **Plausible Gesamt-Schadens­spanne Szenario B** | **0,9 – 1,7 Mrd. EUR / Jahr** |
|---|---|

> **Verhältnis Schaden zu Regress-Einnahmen im realistischen Szenario:**
> ≈ **18–340 : 1** — bei mittlerem Punktschätzer ~ **100 : 1**.

---

### Szenario C — Worst Case (Zheng 2023, globale Defensiv­medizin)

**Annahmen:**
- 75,8 % aller Ärzte praktizieren Defensiv­medizin (Zheng 2023, Meta-Analyse,
  64 Studien, 23 Länder, ~ 36 000 Ärzte).
- Anwendung auf Deutschland im Worst-Case-Szenario.
- 40 unterlassene/verzögerte Verordnungen pro betroffenem Arzt/Jahr.

| Kennzahl | Wert |
|---|---|
| Betroffene Ärzte | 0,758 × 155 678 ≈ **118 000** |
| Unterlassene Verordnungen / Jahr | 118 000 × 40 ≈ **4 720 000** |
| Vermeidbare Hospitalisierungen / Jahr (0,5 %) | ≈ **23 600** |
| Vermeidbare Todesfälle / Jahr (2 % davon) | ≈ **472** |
| Folgekosten Hospitalisierung direkt | ≈ **75 Mio. EUR** |
| Plus indirekte Kosten (Faktor 12) | ≈ **900 Mio. EUR** |
| **Plus** Anteil ACSC (15 %) | **1,1 Mrd. EUR** |
| **Plus** Anteil Non-Adhärenz (15 %) | **1,5 Mrd. EUR** |
| **Worst-Case Gesamt-Schadens­volumen** | **~ 3,5 – 5,5 Mrd. EUR / Jahr** |

> Selbst dies ist noch konservativer als die proportional auf Deutschland übertragene
> US-Defensiv­medizin-Schätzung (~ 6–25 Mrd. EUR/Jahr; siehe RECHERCHE_VERGLEICH_
> KOSTENTREIBER.md, Abschnitt 3.10).

---

## I) Gesamt­gesellschaftliche Folgen

### I.1 Volkswirtschaftliche Kosten

| Block | Konservativ | Realistisch | Worst Case |
|---|---|---|---|
| Direkt zurechenbarer System-Schaden | 30 Mio. EUR | 0,9–1,7 Mrd. EUR | 3,5–5,5 Mrd. EUR |
| Verlorene Produktivität durch nicht behandelte Patienten | nicht beziffert | nicht beziffert | nicht beziffert |
| QALY-Verluste | nicht beziffert (Forschungs­lücke) | nicht beziffert | nicht beziffert |
| Niederlassungs­vermeidung (langfristig) | indirekt | spürbar | strukturell |

### I.2 Gesellschaftliche Folgen

- **Vertrauens­verlust** in den niedergelassenen Arzt als unabhängige Instanz.
- **Versorgungs­ungleichheit:** Wer hat noch einen Arzt, der ihn voll versorgt? In strukturschwachen Regionen sinkt die Niederlassungs­bereitschaft, in Großstädten wandern wohlhabende Patienten ins privatärztliche Segment.
- **Politische Kosten:** Reform­druck wird durch das Aus­halten der Krise eher gedämpft als ent­schärft. Die *gefühlte* Krise treibt zunehmend Wahl­verhalten in Richtung populistischer Positionen ("Bürokratie­kritik").

### I.3 Systemische Folgen

- **Verstärkung der Krise im ambulanten Sektor:** Hausärzte fehlen, Praxis­übergaben scheitern.
- **Verlagerung in den stationären Sektor:** ACSC-Rate +70 % über OECD-Schnitt.
- **Notdienst-Über­lastung:** HCHE-Kifmann +19 PP Bereitschafts­dienst quartals­vor­gelagert.

---

## J) Das Schadens­budget

### Tabelle: Schadensvolumen pro Szenario und Vergleich

| | Konservativ A | Realistisch B | Worst Case C |
|---|---|---|---|
| **Schaden Regress­angst (eigene Modellierung)** | ~ 30 Mio. EUR | **0,9 – 1,7 Mrd. EUR** | 3,5 – 5,5 Mrd. EUR |
| Regress-Einnahmen (KBV-Daten, eigene Schätzung) | 5 – 50 Mio. EUR | 5 – 50 Mio. EUR | 5 – 50 Mio. EUR |
| **Verhältnis Schaden : Einnahme** | **1 – 6 : 1** | **18 – 340 : 1** | **70 – 1100 : 1** |

### Einordnung im Vergleichsraster (vgl. RECHERCHE_VERGLEICH_KOSTENTREIBER.md)

| Kostentreiber | Schaden / Jahr | Verhältnis zu Regress (B) |
|---|---|---|
| **Rauchen** (Effertz 2015) | 79,1 Mrd. EUR | 47 – 88 × |
| **Adipositas** (Effertz 2016) | 63,0 Mrd. EUR | 37 – 70 × |
| **Alkohol** (Effertz 2020) | 57,0 Mrd. EUR | 34 – 63 × |
| **Verkehrsunfälle** (BASt 2023) | 37,2 Mrd. EUR | 22 – 41 × |
| **Non-Adhärenz** (DIMDI HTA 65 / IMS) | 10 – 19 Mrd. EUR | 6 – 21 × |
| **ACSC vermeidbar** (WIdO 2016) | 7 – 8 Mrd. EUR | 4 – 9 × |
| **Krankenhaus­keime** (RKI / eigene Schätzung) | 4 – 12 Mrd. EUR | 2 – 13 × |
| **REGRESS-FOLGE­KOSTEN (Szenario B)** | **0,9 – 1,7 Mrd. EUR** | **= 1** |
| **Bürokratie ambulant** (KBV 2022) | 2,4 Mrd. EUR | ~ 1,4 – 2,7 × |
| **Regress-Einnahmen** | 0,005 – 0,05 Mrd. EUR | 1/180 – 1/18 |

> **Pointe:** Das Regress-System verursacht im realistischen Szenario einen Schaden in
> der Größenordnung der gesamten **Bürokratie­kosten der ambulanten Versorgung** (KBV
> 2,4 Mrd. EUR/Jahr) — und ungefähr **so viel wie alle nosokomialen Infektionen am
> unteren Rand zusammen­genommen** (4 Mrd. EUR/Jahr). Aber die politische Aufmerksamkeit
> ist um Größen­ordnungen geringer.

---

## Quellen­verzeichnis

### Primärquellen (deutsch)

1. **Ribbat L, Linde K, Schneider A, Riedl B (2021).** Auswirkungen des Risikos von
   Regressforderungen auf die Arbeit niedergelassener Allgemein- und Orthopäden — eine
   bundesweite Befragung. *Gesundheitswesen* 2021. DOI: [10.1055/a-1594-2527](https://doi.org/10.1055/a-1594-2527).
   PMID: 34587633. PMC: [PMC11248971](https://pmc.ncbi.nlm.nih.gov/articles/PMC11248971/).
2. **Goetz K, Oldenburg D, Strobel CJ, Steinhäuser J (2024).** The influence of fears of
   perceived legal consequences on general practitioners' practice in relation to
   defensive medicine — a cross-sectional survey in Germany. *BMC Primary Care* 25(1):23.
   DOI: [10.1186/s12875-024-02267-x](https://doi.org/10.1186/s12875-024-02267-x).
   PMID: 38216861. PMC: [PMC10785451](https://pmc.ncbi.nlm.nih.gov/articles/PMC10785451/).
3. **HCHE Hamburg, Kifmann M (2017).** Budget­begrenzung sorgt für weniger Arzttermine
   am Quartals­ende. [Ärzteblatt-Bericht](https://www.aerzteblatt.de/nachrichten/87482/Budgetbegrenzung-sorgt-fuer-weniger-Arzttermine-am-Quartalsende),
   [Monitor Versorgungs­forschung](https://www.monitor-versorgungsforschung.de/en/news/weniger-arzttermine-am-quartalsende-anstieg-beim-aerztlichen-bereitschaftsdienst/),
   [HCHE](https://www.hche.uni-hamburg.de/ueberuns/personen/kernmitglieder/mathias-kifmann.html).
4. **KBV-Berufs­monitoring Medizin­studierende (2018, 2024).** [PDF 2018](https://www.kbv.de/media/sp/Berufsmonitoring_Medizinstudierende_2018.pdf);
   [Ärzteblatt-Auswertung](https://www.aerzteblatt.de/archiv/206532/Berufsmonitoring-Wir-wissen-was-wir-wollen).
5. **KBV-Arztzahl­statistik 2024/2025.** [KBV PM 2025](https://www.kbv.de/presse/pressemitteilungen/2025/arztzahlstatistik-zeit-f%C3%BCr-patientenversorgung-bleibt-knapp);
   [KBV Pressemeldung 2026](https://www.kbv.de/presse/pressemitteilungen/2026/kritischer-trend-setzt-sich-fort-mehr-aerzte-und-trotzdem-weniger-zeit);
   [BAR-Statistik PDF](https://www.kbv.de/documents/infothek/zahlen-und-fakten/Bundesarztregister/2024-12-31-BAR-Statistik.pdf).
6. **Monitor Versorgungs­forschung 02/25, Autorengruppe Gesundheit (2025).**
   Unterversorgung im deutschen Gesundheits­wesen — das unterschätzte Problem.
   DOI: [10.24945/MVF.02.25.1866-0533.2709](https://doi.org/10.24945/MVF.02.25.1866-0533.2709).
   [URL](https://www.monitor-versorgungsforschung.de/abstract/unterversorgung-im-deutschen-gesundheitswesen-das-unterschaetzte-problem/).
7. **OECD Health at a Glance 2017/2019/2023.** [OECD 2023 Germany Country Profile](https://www.oecd.org/content/dam/oecd/en/publications/reports/2025/07/health-at-a-glance-2023_39bcb58d/germany_52bfb863/abc29871-en.pdf).
8. **WIdO Krankenhaus-Report 2016.** [PDF](https://www.wido.de/fileadmin/Dateien/Dokumente/Publikationen_Produkte/Buchreihen/Krankenhausreport/2016/Kapitel%20mit%20Deckblatt/wido_khr2016_kap09.pdf).
9. **Versorgungsatlas — Einsparpotenziale ACSC.** [URL](https://www.versorgungsatlas.de/themen/alle-analysen-nach-datum-sortiert/59/einleitung/).
10. **DIMDI HTA-Bericht Nr. 65 (Laufer et al., Adhärenz).** [PDF](https://portal.dimdi.de/de/hta/hta_berichte/hta206_bericht_de.pdf).
11. **DDG/BVND Statement GLP-1 (2024).** [PDF](https://www.ddg.info/fileadmin/user_upload/06_Gesundheitspolitik/01_Stellungnahmen/2024/20240328_Statement_GLP-GIP_DDG_BVND.pdf).
12. **DGHO Stellungnahme Off-Label-Use (2006/2007).** [Stellungnahme 2006](https://www.dgho.de/publikationen/stellungnahmen/g-ba/off-label-use/Off-Label-Use%2020060125.pdf);
    [Grundsatzpapier 2007](https://www.dgho.de/publikationen/stellungnahmen/gute-aerztliche-praxis/patientenversorgung/Massnahmen%20zum%20Erhalt%20einer%20Patientenversorgung%20auf%20dem%20neuesten%20Stand%20der%20Wissenschaft%2020070115.pdf).
13. **KBV PM 04.07.2024** "Regress­risiko steigt immens". [URL](https://www.kbv.de/presse/pressemitteilungen/2024/pressemitteilung-04-07-2024).
14. **Virchowbund Praxis­wahnsinn-Serie.** [Heilmittel­regress](https://www.virchowbund.de/praxisaerzte-blog/unfassbarer-heilmittelregress-wegen-ignoranz);
    [Cannabis-Vaporizer](https://www.virchowbund.de/praxisaerzte-blog/regress-trotz-genehmigtem-cannabis-vaporizer);
    [Regress-Quote](https://www.virchowbund.de/praxisaerzte-blog/regress-selten-bedrohlich-aber-laestig).
15. **Ärzteblatt 2011** "Kein Arzt wird für seine teuren Patienten bestraft" (Korzilius,
    Fall Ehleben Dortmund). [URL](https://www.aerzteblatt.de/archiv/wirtschaftlichkeitspruefung-kein-arzt-wird-fuer-seine-teuren-patienten-bestraft-00655c43-5dbb-426b-a8c6-0c6300ae1335).
16. **Ärzteblatt 2002** "Off-label-Therapie: Den Schwarzen Peter hat der Arzt".
    [URL](https://www.aerzteblatt.de/archiv/29907/Off-label-Therapie-Den-Schwarzen-Peter-hat-der-Arzt).
17. **DGS, BVSD, DAK 2024** zur Schmerzversorgung. [Ärzteblatt 2024](https://www.aerzteblatt.de/news/versaeumnisse-bei-versorgung-von-schmerzpatienten-mit-opioiden-fe130709-d8ec-4227-b0e6-b1bb9e3262ce);
    [DGAI 2024](https://www.dgai.de/aktuelles-patientinnen-projekte/pressemitteilungen/2387-chronischer-schmerz-millionen-betroffene-unzureichende-und-bedrohte-versorgungsangebote.html).
18. **BVDN — Neurologen-Stellungnahme.** [URL](https://www.bvdn.de/129-pressemeldung-enorme-fallzahlsteigerung-bei-neurologischen-erkrankungen-neue-versorgungs-und-verguetungsstrukturen-notwendig).
19. **KBV Bürokratie­index 2022.** [URL](https://gesundheitsdaten.kbv.de/cms/html/43204.php).

### Internationale / methodische Vergleichsquellen

20. **Zheng J, Lu Y, Li W, Zhu B, Yang F, Shen J (2023).** Prevalence and determinants
    of defensive medicine among physicians: a systematic review and meta-analysis.
    *Int J Qual Health Care* 35(4):mzad096. DOI: [10.1093/intqhc/mzad096](https://doi.org/10.1093/intqhc/mzad096).
    PMID: [38060672](https://pubmed.ncbi.nlm.nih.gov/38060672/).
21. **Studdert DM, Mello MM, Sage WM, et al. (2005).** Defensive medicine among
    high-risk specialist physicians in a volatile malpractice environment. *JAMA*
    293(21):2609–2617. DOI: [10.1001/jama.293.21.2609](https://doi.org/10.1001/jama.293.21.2609).
22. **Currie J, MacLeod WB (2008).** First do no harm? Tort reform and birth outcomes.
    *QJE* 123(2):795–830. DOI: [10.1162/qjec.2008.123.2.795](https://doi.org/10.1162/qjec.2008.123.2.795).
23. **Renkema E, Broekhuis M, Ahaus K (2019).** Triggers of defensive medical behaviours.
    *BMJ Open* 9(6):e025108. DOI: [10.1136/bmjopen-2018-025108](https://doi.org/10.1136/bmjopen-2018-025108).
24. **Dowell D et al. (2022) — CDC Opioid Guideline Correction.** *MMWR Recomm Rep*
    71(3):1–95. DOI: [10.15585/mmwr.rr7103a1](https://doi.org/10.15585/mmwr.rr7103a1).

### Interne Bezugs­dokumente (Um:bruch)

25. `RECHERCHE_REGRESS_FAKTEN.md` — Harte Zahlen, Fallbeispiele.
26. `RECHERCHE_REGRESSSYSTEM_TIEFENANALYSE.md` — Angst-Trichter, Pipeline, IFG.
27. `RECHERCHE_FOLGEKOSTEN_PATIENTENSCHAEDEN.md` — A.0 Ribbat, Folgekosten-Übersicht.
28. `RECHERCHE_INTERNATIONAL_WISSENSCHAFTLICH.md` — Internationale Vergleichs­systeme.
29. `RECHERCHE_VERGLEICH_KOSTENTREIBER.md` — Vergleichs­tabelle Kostentreiber DE.

---

## Methodische Vorbehalte

1. **Hochrechnungen sind Größen­ordnungen, keine Punkt­schätzer.** Jede Annahme
   (8/20/40 unterlassene Verordnungen pro Arzt; 0,5 % Hospitalisierungs­quote;
   2 % Mortalitäts­quote) ist im Modell explizit begründet, aber nicht peer-reviewt.
2. **Kausal­abgrenzung:** Der ACSC-Anteil, der **direkt** auf Regressangst zurückgeht,
   ist nicht trennscharf isolierbar. Wir nutzen einen Korridor von 5 – 15 %, der mit
   den US-Studien (Studdert 2005; Chandra) konsistent ist.
3. **Geschlechts­effekt** in der Goetz-Studie ist statistisch signifikant (β = -0,158),
   sollte aber nicht als "Frauen-Problem" gerahmt werden — er deutet eher auf
   strukturelle Belastungs­unterschiede in der Versorgung (mehr Teilzeit, mehr
   familiale Doppelbelastung) und gehört in eine eigene Auswertung.
4. **Forschungs­lücken:** Keine deutsche QALY-Schätzung; keine
   Effertz-Style-Studie zum Regress-System; keine Transparenz über Gesamt­kosten
   des Prüf­verfahrens (Verwaltung, Gerichte, Zeitaufwand der Ärzte). Diese
   Lücken sind selbst ein politisches Argument für PP-003.
5. **Modell­arzt ≠ Durchschnitts­arzt:** Das Profil ist eine Verdichtung des
   "stärksten Falls", nicht der Modus der Vertrags­ärzte­verteilung. Das ist
   methodisch zulässig (Modellierung idealtypischer Phänotypen), muss aber
   transparent gemacht werden.

---

*Stand: 2026-04-08. Versionierung: v1.0. Bei jeder Fortschreibung Quellen verifizieren.*
