# Nachanalyse: Bugs im Containermanagement der Wirtschaftlichkeitsprüfung nach §§ 106 ff. SGB V

> **Projekt:** Regress-Melder (Um:bruch Think Tank)
> **Erstellt:** 2026-04-08
> **Autor:** Claude (im Auftrag von Lukas Geiger)
> **Methodik:** "Bug" = technische Inkonsistenz, logischer Bruch, handwerkliche Schwäche im Gesetzes-/Vorschriftensystem (nicht: politische Wertung)
> **Vorarbeit:** `RECHERCHE_CONTAINER_GENEALOGIE_PRUEFVERFAHREN.md` (Container-Genealogie 1989–2026)
> **Quellenbasis:** gesetze-im-internet.de, dejure.org, buzer.de, Haufe-Kommentar (Sommer SGB V), BSG-Datenbank, Springer Medizinrecht, KBV/GKV-SV/G-BA, regionale KV-FAQ-Seiten, Anwaltskommentare. Alle Quellen über WebSearch/WebFetch verifiziert.

---

## Vorbemerkung zur Methodik

Diese Nachanalyse betrachtet die in der Container-Genealogie identifizierten 7 SGB-V-Container plus § 48 BMV-Ä plus Rahmenvorgaben plus 17 regionale Prüfvereinbarungen unter dem Blickwinkel: **"Wo bricht das System technisch?"**.

Die Befunde sind nach 9 Bug-Klassen (A–I) sortiert. Innerhalb jeder Klasse werden konkrete Bugs benannt, jeweils mit:
- **Ort:** Welche Norm/welcher Container?
- **Befund:** Was ist der technische Bug?
- **Quelle:** Belegstelle (verifiziert)
- **Folge:** Welche praktische Auswirkung?

Am Ende des Dokuments steht eine **Top-10-Liste** mit Schwere-Ranking.

---

## A) DEFINITIONS-BUGS

### A.1 "Wirtschaftlichkeit" — definitorischer Schwebezustand

**Befund:** Der Begriff "Wirtschaftlichkeit" wird in **keinem** der einschlägigen Container definiert.

| Container | Verwendung | Definition? |
|---|---|---|
| § 12 SGB V (Wirtschaftlichkeitsgebot) | "ausreichend, zweckmäßig und wirtschaftlich" | NEIN — der Begriff ist ein Tautologismus ("wirtschaftlich = wirtschaftlich") |
| § 106 SGB V | "Die Krankenkassen ... überwachen die Wirtschaftlichkeit ..." | NEIN — vorausgesetzt |
| § 106a SGB V | "Wirtschaftlichkeitsprüfung **ärztlicher** Leistungen" | NEIN |
| § 106b SGB V | "Wirtschaftlichkeitsprüfung **verordneter** Leistungen" | NEIN |
| § 48 BMV-Ä | "**unzulässige** Verordnung" (kein Wirtschaftlichkeitsbezug) | nein, anderes Konzept |

Die **inhaltliche Kontur** entsteht erst aus BSG-Rechtsprechung seit BSGE 11, 102 (1959) — also aus 67 Jahren Richterrecht, die ein Vertragsarzt lesen müsste, um zu wissen, was "Wirtschaftlichkeit" eigentlich bedeutet.

**Quelle:**
- [gesetze-im-internet.de — § 12 SGB V](https://www.gesetze-im-internet.de/sgb_5/__12.html)
- [reimbursement.institute — Wirtschaftlichkeitsgebot Erläuterung](https://reimbursement.institute/glossar/wirtschaftlichkeitsgebot/)
- [AOK-Lexikon Wirtschaftlichkeitsgebot](https://www.aok.de/pp/lexikon/wirtschaftlichkeitsgebot/)

**Bug-Schwere:** hoch — eine Sanktionsnorm mit undefiniertem Tatbestand.

---

### A.2 "Schaden" — drei Container, drei Logiken

| Container | "Schaden" wird verwendet als | Tatbestand |
|---|---|---|
| § 48 BMV-Ä | "sonstiger durch einen Vertragsarzt verursachter Schaden" | unzulässige Verordnung, fehlerhafte Bescheinigung, falscher Kostenträger |
| § 106 ff. SGB V | "Schaden" als Folge unwirtschaftlicher Leistungen (implizit über Regress) | unwirtschaftliche, aber zulässige Verordnung |
| § 275c SGB V | Begriff "Schaden" kommt nicht vor — stattdessen "Minderung des Abrechnungsbetrags" | falsche Krankenhausabrechnung |
| § 113 SGB X | "Erstattungsanspruch" (zwischen Sozialleistungsträgern) | Verjährung 4 Jahre |

**Bug:** Drei verschiedene Schadensbegriffe in einem System, ohne Legaldefinition. Die **Abgrenzung Wirtschaftlichkeitsregress vs. Schadensregress** ist seit Jahrzehnten ein Dauerstreitthema. Christoph Hauck (Dr. iur.) hat in einer Springer-Medizinrecht-Publikation (2022) die Rechtsprechung zum "sonstigen Schaden" als "verfassungs- und gesetzeswidrig" und seit fast 40 Jahren strukturell defizitär bezeichnet.

**Quelle:**
- [Haufe — § 48 BMV-Ä](https://www.haufe.de/id/norm/bundesmantelvertrag-aerzte-bmv-ae-48-feststellung-sonstigen-schadens-durch-pruefungseinrichtungen-und-die-kassenaerztliche-vereinigung-HI5583942_p48.html)
- [Springer — "Der sonstige Schaden im Recht der GKV" (Hauck 2022)](https://link.springer.com/article/10.1007/s00350-022-6375-7)
- [BSG 05.06.2024, B 6 KA 5/23 R — Differenzkostenregelung Anwendungsbereich](https://www.bsg.bund.de/SharedDocs/Verhandlungen/DE/2024/2024_06_05_B_06_KA_05_23_R.html)

**Bug-Schwere:** hoch — die Abgrenzung entscheidet, ob § 106b Abs. 2a (Differenzkostenregelung) anwendbar ist oder voller Regress droht.

---

### A.3 "Auffälligkeit" — kein Tatbestand, sondern Vereinbarungssache

**Befund:** § 106b Abs. 2 SGB V verlangt eine "Auffälligkeitsprüfung", definiert aber nicht, was eine Auffälligkeit ist. Die Definitionsmacht ist an die regionalen Prüfvereinbarungen delegiert.

Die Rahmenvorgaben nach § 106b Abs. 2 SGB V (KBV/GKV-SV) füllen diese Lücke nur teilweise: Sie nennen Schwellenwerte, Methoden und maximale Quoten (max. 5 % der Ärzte je Fachgruppe), aber keine inhaltliche Definition.

| Container | Wer definiert "Auffälligkeit"? |
|---|---|
| § 106a SGB V | "begründeter Verdacht auf fehlende Notwendigkeit", "Ineffektivität" — als Aufzählung, keine Definition |
| § 106b SGB V | nicht definiert — verweist auf Prüfvereinbarung |
| Rahmenvorgaben § 106b Abs. 2 | Verfahrensvorgaben, keine Inhaltsdefinition |
| 17 regionale Prüfvereinbarungen | jeweils unterschiedlich (z. B. KVWL: prozentuale Überschreitung; KV Berlin: andere Schwelle) |

**Quelle:**
- [GKV-SV — Wirtschaftlichkeitsprüfung Rahmenvorgaben](https://www.gkv-spitzenverband.de/krankenversicherung/ambulante_leistungen/wirtschaftlichkeitspruefung/wirtschaftlichkeitspruefung_leistungen.jsp)
- [Deutsches Ärzteblatt — Rahmenvorgaben § 106b Abs. 2 (Original)](https://www.aerzteblatt.de/archiv/214460/)
- [KBV — Rahmenvorgaben PDF](https://www.kbv.de/documents/infothek/rechtsquellen/weitere-vertraege/praxen/verordnungen/rahmenvorgaben-wirtschaftlichkeitspruefungen.pdf)

**Bug-Schwere:** mittel — formal sauber (Subsidiarität), praktisch ein Definitionsvakuum.

---

### A.4 "Beratung" — drei Bedeutungen in derselben Norm

In § 106 ff. SGB V kommt "Beratung" mit unterschiedlicher Bedeutung vor:

| Norm | "Beratung" bedeutet |
|---|---|
| § 106 Abs. 1 SGB V | allgemeine Aufgabe der KV/Kassen (informelle Beratung der Vertragsärzte) |
| § 106a Abs. 3 SGB V | "individuelle Beratung" als Ergebnis einer Prüfung (statt Sanktion) |
| § 106b Abs. 2 S. 4 SGB V | "Beratung vor Nachforderung" — Pflichtinstrument bei Auffälligkeitsprüfung — **explizit ausgenommen für Einzelfallprüfungen** |
| BSG 06.05.2009, B 6 KA 3/08 R | "Beratung" als Sanktion mit Bindungswirkung — nicht jede Auskunft ist eine Beratung |
| LSG NRW L 11 KA 49/13 | Regressbescheid ist KEINE Beratung |

**Bug:** Derselbe Begriff bezeichnet (a) Aufklärung, (b) milderes Mittel, (c) verbindliches Sanktionsinstrument. Die KBV hat dies bereits in Stellungnahmen angemerkt; mehrere LSG-Urteile (insbesondere LSG NRW) mussten klarstellen, was eine "Beratung" rechtlich bedeutet.

**Quelle:**
- [BSG 06.05.2009 — Beratung als Sanktion](https://www.iww.de/aaa/kassenabrechnung/richtgroessenpruefung--106-sgb-v-wann-ist-eine-beratung-eine-beratung-f77205)
- [LSG NRW L 11 KA 49/13](https://nrwe.justiz.nrw.de/sgs/lsg_nrw/j2013/NRWE_L_11_KA_49_13.html)
- [OUP — Beratung vor Regress – Widerspruch gegen Beratung?](https://www.online-oup.de/article/beratung-vor-regress-widerspruch-gegen-beratung/arzt-und-recht/y/m/362)

**Bug-Schwere:** hoch — die unterschiedlichen Begriffsbedeutungen führen zu echten Verfahrensfehlern und Klagen.

---

### A.5 "Praxisbesonderheit" — Begriff ohne Legaldefinition

**Befund:** Der Begriff "Praxisbesonderheit" erscheint in § 106b Abs. 1b und Abs. 2 SGB V, wird aber nirgends im SGB V definiert. Die Definition lebt aus:
- BSG-Rechtsprechung (st. Rspr. seit BSGE 76, 53)
- § 130b SGB V (Arzneimittelvereinbarungen → "bundesweite Praxisbesonderheiten")
- § 84 Abs. 8 S. 3 SGB V (Heilmittel-Praxisbesonderheiten)
- Rahmenvorgaben KBV/GKV-SV (Anlagen 1–3)
- regionale Prüfvereinbarungen

**Bug:** Vier verschiedene Rechtsquellen mit teils unterschiedlichen Konturen für denselben Begriff. Der Vertragsarzt muss alle vier Ebenen synchronisieren.

**Quelle:**
- [Wikipedia — Praxisbesonderheit](https://de.wikipedia.org/wiki/Praxisbesonderheit)
- [GKV-SV — Anlage 1 zu § 130b SGB V Praxisbesonderheiten](https://www.gkv-spitzenverband.de/media/dokumente/krankenversicherung_1/arzneimittel/amnog_praxisbesonderheiten/18083pb20181101.pdf)
- [Deutsches Ärzteblatt — Heilmittel-Praxisbesonderheiten § 84 Abs. 8 S. 3](https://www.aerzteblatt.de/archiv/133343/)

**Bug-Schwere:** mittel.

---

## B) VERWEIS-BUGS

### B.1 Verweis aus alter Literatur auf alten § 106a SGB V

**Bug:** Vor 2017 war § 106a SGB V die "Abrechnungsprüfung". Ab 2017 ist § 106a SGB V die "Wirtschaftlichkeitsprüfung ärztlicher Leistungen" — und die Abrechnungsprüfung wohnt in § 106d SGB V. Ältere Literatur, ältere Urteile und ältere Kommentare (Stand vor 2017) verwenden "§ 106a" mit der alten Bedeutung. Sie sind ohne Quervermerk auf den Container-Tausch faktisch irreführend.

**Beleg für die Umnummerierung:**
- [buzer.de — § 106a SGB V Versionshistorie](https://www.buzer.de/106a_SGB_V.htm) (alte Fassung bis 31.03.2018)
- Der § 106a war ursprünglich die mit dem GMG 2003/04 neu geschaffene Abrechnungsprüfungs-Norm.
- Mit dem GKV-VSG 2015 wanderte die Abrechnungsprüfung in den neuen § 106d SGB V; § 106a wurde mit anderem Inhalt belegt.

**Folge:** Wenn ein Arzt 2025 einen Bescheid über "§ 106a SGB V" erhält und in einem Ratgeber oder Lehrbuch von 2014 nachschlägt, erhält er Information zur falschen Norm.

**Bug-Schwere:** sehr hoch — strukturell die schädlichste aller Container-Operationen.

---

### B.2 § 106 Abs. 1 S. 2 SGB V verweist ins Nichts (für die Einzelfallprüfung)

**Bug:** Die zentrale gesetzliche Erwähnung der ambulanten Einzelfallprüfung lautet:

> "Die Landesverbände der Krankenkassen ... vereinbaren ... die **Voraussetzungen für Einzelfallprüfungen**." (§ 106 Abs. 1 S. 2 SGB V)

Das ist ein Verweis auf eine zu vereinbarende Regelung, die im SGB V nicht geregelt wird. Die "Voraussetzungen" finden sich in 17 regionalen Prüfvereinbarungen (KVWL, KV Berlin, KV Nordrhein, KVB Bayern, ...). Es gibt **keine zentrale Übersicht** dieser regionalen Regelungen.

**Folge:** Ein Vertragsarzt, der § 106 SGB V liest, lernt aus dem Gesetz nicht, unter welchen Voraussetzungen er einer Einzelfallprüfung unterworfen ist. Er muss erst recherchieren, ob seine KV überhaupt eine veröffentlichte Prüfvereinbarung hat — was nicht überall transparent ist.

**Quelle:**
- [KVWL — Gemeinsame Prüfvereinbarung PDF](https://www.kvwl.de/fileadmin/user_upload/pdf/Mitglieder/Rechtsquellen_und_Vertraege/Pruefvereinbarung/Gemeinsame_Pruefvereinbarung.pdf)
- [KV Berlin — Prüfvereinbarung Wirtschaftlichkeitsprüfung](https://www.kvberlin.de/fuer-praxen/alles-fuer-den-praxisalltag/vertrage-und-recht/vertraege/pruefvereinbarung-wirtschaftlichkeitspruefung)

**Bug-Schwere:** sehr hoch — die zentrale Schutzlücke der Einzelfallprüfung beruht auf diesem Verweis.

---

### B.3 § 48 BMV-Ä verweist auf § 106c SGB V — aber kein Container des SGB V verweist zurück auf § 48 BMV-Ä

**Bug:** § 48 BMV-Ä Abs. 1 S. 1 verweist auf "Prüfungseinrichtungen nach § 106c SGB V". Dieser Verweis ist gesetzlich notwendig, weil ohne ihn die Zuständigkeit der Prüfungsstelle für Schadensregresse nicht herstellbar wäre.

Umgekehrt: **Kein einziger SGB-V-Paragraf verweist auf § 48 BMV-Ä.** Wer das SGB V liest, erfährt nicht, dass es einen wichtigen Schadensregress-Tatbestand außerhalb des Gesetzbuchs gibt. Der BMV-Ä ist kein Gesetz und nicht in gesetze-im-internet.de abrufbar — er ist ein Kollektivvertrag nach § 82 SGB V.

**Folge:** Der bedeutendste Regressgrund (unzulässige Verordnung) hat keinen Anker im SGB V. Ein typischer 490.000-EUR-Regressfall wie BSG 27.08.2025 (B 6 KA 9/24 R, Unterschriftenstempel) basiert auf § 48 BMV-Ä, nicht auf § 106 ff. SGB V.

**Quelle:**
- [Haufe — § 48 BMV-Ä](https://www.haufe.de/id/norm/bundesmantelvertrag-aerzte-bmv-ae-48-feststellung-sonstigen-schadens-durch-pruefungseinrichtungen-und-die-kassenaerztliche-vereinigung-HI5583942_p48.html)
- [KBV — Bundesmantelvertrag-Ärzte](https://www.kbv.de/html/bundesmantelvertrag.php)
- [BSG 27.08.2025 — B 6 KA 9/24 R (Unterschriftenstempel)](https://dejure.org/dienste/vernetzung/rechtsprechung?Gericht=BSG&Datum=27.08.2025&Aktenzeichen=B+6+KA+9/24+R)

**Bug-Schwere:** sehr hoch — strukturelle Auseinanderreissung von Sanktion und Norm.

---

### B.4 § 106 Abs. 4 SGB V Vorstandshaftung — ein Verweisfragment

**Bug:** § 106 Abs. 4 SGB V regelt die Vorstandshaftung der KV bei unterlassenen Datenmitteilungen nach §§ 296, 297 SGB V. Die Norm verweist auf §§ 296, 297, ohne dass im Containertext klargestellt würde, welche konkreten Datenpunkte gemeint sind. Die **funktional zugehörigen Paragrafen 296 und 297 selbst verweisen** ihrerseits auf § 106b Abs. 1 — also gibt es eine **Verweis-Schleife**: § 106 → § 296/297 → § 106b → Prüfvereinbarung → ?

**Folge:** Praktisch ist die Vorstandshaftung ein toter Buchstabe. Es ist kein Fall bekannt, in dem ein KV-Vorstand auf dieser Grundlage in Anspruch genommen wurde. Die Vorschrift wurde 2015 mit dem GKV-VSG eingeführt, um die KVen zur Datenlieferung zu zwingen.

**Quelle:**
- [§ 106 Abs. 4 SGB V](https://www.gesetze-im-internet.de/sgb_5/__106.html)
- [§ 296 SGB V](https://www.gesetze-im-internet.de/sgb_5/__296.html)
- [§ 297 SGB V](https://www.gesetze-im-internet.de/sgb_5/__297.html)

**Bug-Schwere:** mittel.

---

### B.5 Verweise auf Rahmenvorgaben, die nicht im Gesetzblatt stehen

**Bug:** § 106b Abs. 2 SGB V verweist auf "Rahmenvorgaben" zwischen KBV und GKV-SV. Diese Rahmenvorgaben sind:
- nicht im Bundesgesetzblatt veröffentlicht
- nicht in gesetze-im-internet.de
- aber im Deutschen Ärzteblatt veröffentlicht und auf der KBV-/GKV-SV-Website abrufbar

Es existieren bisher mindestens 4 Änderungsvereinbarungen, jeweils mit eigener Lesefassung. Die aktuelle "rechtlich nicht verbindliche Lesefassung" stammt vom 19.11.2025. Drei Anlagen (Arzneimittel, Heilmittel, sonstige Verordnungen) sind ebenfalls nur dort verfügbar.

**Folge:** Ein Vertragsarzt kann den exakten aktuellen Stand seiner Pflichten nicht ohne Weiteres feststellen. Es gibt keinen autoritativen Konsolidierungsort.

**Quelle:**
- [Aerzteblatt — Rahmenvorgaben Original](https://www.aerzteblatt.de/archiv/173666/)
- [Aerzteblatt — 4. Änderungsvereinbarung](https://www.aerzteblatt.de/archiv/199496/)
- [GKV-SV — Lesefassung Rahmenvorgaben PDF](https://www.gkv-spitzenverband.de/media/dokumente/krankenversicherung_1/ambulante_leistungen/wirtschaftlichkeitspruefung/20200501_Rahmenvorgaben_106b_Wirtschaftlichkeitspruefungen_Korrektur_19.01.2021.pdf)

**Bug-Schwere:** hoch.

---

## C) FRISTBUGS

### C.1 Drei Fristen in einem Container, vier in zwei Containern

| Frist | Norm | Bedeutung |
|---|---|---|
| 2 Jahre | § 106 Abs. 3 S. 1 SGB V (seit TSVG 2019) | Amtsprüfung ärztlicher Leistungen, ab Honorarbescheid |
| 2 Jahre | § 106 Abs. 3 S. 2 SGB V | Amtsprüfung verordneter Leistungen, ab Jahresende |
| 18 Monate | § 106 Abs. 3 S. 3 SGB V | Antragsfrist Wirtschaftlichkeitsprüfung |
| 12 weitere Monate | § 106 Abs. 3 S. 4 SGB V | Festsetzung nach Antrag |
| 4 Monate | § 275c Abs. 1 SGB V | Stationäre MD-Prüfung ab Rechnungseingang |
| 2 Jahre | § 106d Abs. 5 SGB V | Abrechnungsprüfung Festsetzung ab Honorarbescheid |
| 6 Monate | § 106d Abs. 5 S. 6 SGB V | KV-Bearbeitungsfrist Antragsverfahren |
| 1 Monat | § 84 SGG | Widerspruch gegen Bescheid Beschwerdeausschuss |
| 1 Monat | § 87 SGG | Klage Sozialgericht |
| 4 Jahre | § 113 SGB X | Erstattungsansprüche zwischen Sozialleistungsträgern |

**Bug:** Verschiedene Fristen für funktional ähnliche Vorgänge in unterschiedlichen Containern. Der Vergleich Wirtschaftlichkeitsprüfung (2 Jahre) vs. stationäre Einzelfallprüfung (4 Monate) ist eklatant: Ein ambulanter Arzt hat 2 Jahre Unsicherheit, ein Krankenhaus 4 Monate. Es gibt keinen nachvollziehbaren Sachgrund für diese Diskrepanz.

**Quelle:**
- [§ 106 SGB V](https://www.gesetze-im-internet.de/sgb_5/__106.html)
- [§ 275c SGB V](https://www.gesetze-im-internet.de/sgb_5/__275c.html)
- [§ 106d SGB V](https://www.gesetze-im-internet.de/sgb_5/__106d.html)
- [§ 84 SGG](https://www.gesetze-im-internet.de/sgg/__84.html)
- [§ 113 SGB X](https://www.gesetze-im-internet.de/sgb_10/__113.html)

**Bug-Schwere:** mittel.

---

### C.2 Fristverkürzung 2019 — Konflikt mit § 113 SGB X

**Bug:** Mit dem TSVG 2019 wurde die Frist in § 106 Abs. 3 SGB V von **4 Jahren auf 2 Jahre** halbiert (BSG-Rechtsprechung hatte zuvor 4 Jahre als "Ausschlussfrist" entwickelt — BSG 05.05.2010, B 6 KA 5/09 R).

Demgegenüber gilt § 113 SGB X (Verjährung von Erstattungsansprüchen zwischen Sozialleistungsträgern) **unverändert mit 4 Jahren**. Im Verhältnis Krankenkasse–KV können also nach 2 Jahren keine Wirtschaftlichkeitsregresse mehr festgesetzt werden, aber Erstattungsansprüche zwischen den Leistungsträgern selbst weiterhin 4 Jahre lang.

**Folge:** Inkohärenz zwischen Sanktionsfrist und Erstattungsfrist.

**Bug-Schwere:** mittel.

---

### C.3 Übergangsregelungen ohne Auflösung

**Bug:** Mit dem GKV-VSG 2015 wurden viele Regelungen "ab 01.01.2017" wirksam. Für Verfahren, die zu diesem Stichtag schon liefen (z. B. Richtgrößenprüfungen 2015 mit Bescheid 2018), gelten Übergangsregelungen, die in der Lesefassung des SGB V nicht mehr sichtbar sind. Sie sind nur im Originaltext des Änderungsgesetzes zu finden.

Das BSG hat in mehreren Urteilen (u. a. BSG 28.10.2015, B 6 KA 45/14 R) klären müssen, ob alte Richtgrößenprüfungen noch nach altem oder neuem Recht abgeschlossen werden — das ist Symptom, nicht Lösung.

**Quelle:**
- [BSG 28.10.2015, B 6 KA 45/14 R — Heilmittelregress nach altem Recht](https://datenbank.nwb.de/Dokument/597253/)

**Bug-Schwere:** mittel.

---

## D) INKLUSIONS-/EXKLUSIONS-BUGS

### D.1 Heilmittel — verteilt auf vier Container

**Befund:** Wer Heilmittel verordnet, ist potenziell betroffen von:
1. **§ 106b SGB V** (Wirtschaftlichkeitsprüfung — Auffälligkeit)
2. **§ 84 Abs. 8 S. 3 SGB V** (Heilmittel-Praxisbesonderheiten)
3. **§ 92 Abs. 2 Nr. 6 SGB V → Heilmittel-Richtlinie G-BA** (Verordnungsfähigkeit)
4. **Rahmenvorgaben § 106b Abs. 2 (Anlage 2)** — nationale Prüfregeln Heilmittel
5. **regionale Prüfvereinbarung** — Schwellenwerte
6. **§ 32 Abs. 1a SGB V** — langfristiger Heilmittelbedarf
7. **§ 48 BMV-Ä** bei unzulässiger Verordnung

**Bug:** Sieben (!) verschiedene normative Quellen für ein Verordnungsfeld. Doppelregelungen sind systemimmanent — die G-BA-Heilmittel-Richtlinie und die Rahmenvorgaben überlappen sich teilweise.

**Quelle:**
- [G-BA — 12-wöchige Verordnung Heilmittel](https://www.g-ba.de/service/fachnews/43/)
- [KV Niedersachsen — Langfristdiagnosen/Besondere Verordnungsbedarfe](https://www.kvn.de/Mitglieder/Verordnungen/Heilmittel/Langfristdiagnosen+_+Besondere+Verordnungsbedarfe-p-21549.html)

**Bug-Schwere:** hoch.

---

### D.2 Hilfsmittel — Lücke und Doppelung

**Befund:** Hilfsmittel-Verordnungen sind:
- in § 106b SGB V grundsätzlich erfasst (als "ärztlich verordnete Leistungen")
- in der Rahmenvorgabe nach § 106b Abs. 2 erwähnt ("Anlage 3 — Verordnungen außer Arzneimittel/Heilmittel")
- aber weitgehend in der **Hilfsmittel-Richtlinie des G-BA** geregelt (Verordnungsfähigkeit)
- bei unzulässiger Hilfsmittelverordnung: § 48 BMV-Ä

Demgegenüber: **Es gibt keine bundesweit einheitliche Bagatellgrenze**, und Hilfsmittelregresse sind in der Praxis selten (KV Nordrhein: meiste Anträge betreffen Sprechstundenbedarf, nicht Hilfsmittel).

**Quelle:**
- [KV Nordrhein — Wirtschaftlichkeitsprüfung FAQ](https://www.kvno.de/praxis/haeufige-fragen/wirtschaftlichkeitspruefung)

**Bug-Schwere:** niedrig (in der Praxis selten relevant).

---

### D.3 Sprechstundenbedarf — eigene normative Welt

**Befund:** Sprechstundenbedarf (SSB) ist ein Verordnungsfeld, das **rechtlich gar nicht im SGB V geregelt** ist — sondern in:
- **Sprechstundenbedarfsvereinbarungen** der KVen mit den Kassen (auf Landesebene, also untergesetzlich)
- regionalen Prüfvereinbarungen (Bagatellgrenzen für SSB)
- Anlage 3 der Rahmenvorgaben

Die rechtliche Grundlage des SSB-Regresses leitet das BSG aus § 106 Abs. 2 SGB V her (BSG 11.12.2019, B 6 KA 23/18 R). Praktische Schwellenwerte: in der Regel 150 EUR pro BSNR und Quartal, in den meisten regionalen Prüfvereinbarungen.

**Bug:** Das wahrscheinlich häufigste Regressfeld der niedergelassenen Praxen (nach KV Nordrhein: ca. 10.000 SSB-Anträge/Jahr) hat im SGB V **keine eigene Norm**. Die Vertragsärzte müssen die SSB-Vereinbarung ihres Bundeslandes kennen.

**Quelle:**
- [BSG 11.12.2019 — B 6 KA 23/18 R](https://www.bsg.bund.de/SharedDocs/Entscheidungen/DE/2019/2019_12_11_B_06_KA_23_18_R.html)
- [KV Berlin — Verordnungs-News Nr. 5 Juli 2025 (Bagatellgrenzen)](https://www.kvberlin.de/verordnungs-news-nr-5-juli-2025-sonderausgabe-pruefvereinbarung-und-arzneimittelvereinbarung-mit-zielen)

**Bug-Schwere:** hoch.

---

### D.4 Off-Label-Use — Sondertatbestand mit eigener Logik

**Befund:** Off-Label-Verordnungen werden vom BSG als **"unzulässige" (nicht "unwirtschaftliche")** Verordnungen behandelt. Die Differenzkostenregelung des § 106b Abs. 2a SGB V gilt **nicht** — voller Regress.

Maßgebende Rechtsquelle: § 2 Abs. 1a SGB V (Verfassungsgerichtsentscheidung 2005, "Nikolaus-Beschluss") + BSG-Rechtsprechung (zuletzt BSG 05.06.2024, B 6 KA 10/23 R).

**Bug:** Kein Container regelt Off-Label-Use explizit als Tatbestand der Wirtschaftlichkeitsprüfung. Die Sanktion (voller Regress) ergibt sich aus richterlicher Auslegung. Die KBV hat 2023 in einem Brief an Lauterbach um Klarstellung gebeten — bisher ohne Reaktion.

**Quelle:**
- [BSG 05.06.2024 — B 6 KA 10/23 R](https://www.bsg.bund.de/SharedDocs/Entscheidungen/DE/2024/2024_06_05_B_06_KA_10_23_R.html)
- [Aerzteblatt — KBV will Klarstellung bei Wirtschaftlichkeitsprüfung](https://www.aerzteblatt.de/nachrichten/152238/KBV-will-Klarstellung-bei-Wirtschaftlichkeitspruefung-Brief-an-Lauterbach)

**Bug-Schwere:** sehr hoch — die Differenzierung unwirtschaftlich/unzulässig entscheidet über Existenz des Arztes.

---

### D.5 Cannabis nach § 31 Abs. 6 SGB V — eigener Insellösung

**Befund:** Cannabis-Verordnungen erfordern eine vorherige Genehmigung der Kasse (§ 31 Abs. 6 SGB V seit 2017). Fehlt die Genehmigung, ist die Verordnung "unzulässig" (nicht "unwirtschaftlich") — voller Regress, Differenzkostenregelung greift nicht. Bestätigt durch BSG 26.03.2025, B 6 KA 2/24 R (ca. 7.000 EUR Regress).

**Bug:** § 31 Abs. 6 SGB V ist mit § 106b SGB V **überhaupt nicht verzahnt**. Wer in § 106b nach Cannabis sucht, findet nichts. Nur wer beide Container kennt UND die BSG-Rechtsprechung dazu, weiß, dass der "Genehmigungs-Bug" einen vollen Regress ohne Differenzkosten auslöst.

**Quelle:**
- [BSG 26.03.2025 — B 6 KA 2/24 R](https://www.bsg.bund.de/SharedDocs/Entscheidungen/DE/2025/2025_03_26_B_06_KA_02_24_R.html)
- [kmh-medizinrecht — Voller Regress bei Cannabis ohne Genehmigung](https://www.kmh-medizinrecht.de/single-post/bsg-voller-regress-bei-cannabisverordnung-ohne-genehmigung)

**Bug-Schwere:** hoch.

---

### D.6 Bagatellgrenzen — regional uneinheitlich, teils bei 30 EUR

**Befund:** Es gibt keine bundeseinheitliche Bagatellgrenze für die Einzelfallprüfung. Beispiele:
- KV Nordrhein 2018: 150 EUR/Quartal, **2024: 30 EUR/Quartal**
- KV Berlin: 100 EUR/BSNR/Quartal
- KVWL: 150 EUR/BSNR/Quartal SSB, 100 EUR/LANR/Quartal andere Verordnungen
- Manche Bundesländer: keine Bagatellgrenze für die Einzelfallprüfung

Das geplante GVSG (Lauterbach 2024) sah eine bundeseinheitliche Bagatellgrenze von 300 EUR vor — gescheitert mit Ende der Ampel-Koalition.

**Bug:** Verfassungsrechtlich problematische **regionale Ungleichbehandlung** identischer Verordnungstatbestände. Ein Arzt in Bayern und ein Arzt in NRW können denselben Sachverhalt verordnen und unterschiedliche Regressrisiken tragen.

**Quelle:**
- [Aerzteblatt — Große regionale Unterschiede](https://www.aerzteblatt.de/nachrichten/113630/)
- [Solidaris — Umstrittene Bagatellgrenze GVSG](https://www.solidaris.de/aktuelles/umstrittene-bagatellgrenze-fuer-regresse-was-bedeutet-das-scheitern-des-gvsg)

**Bug-Schwere:** sehr hoch — der **Kernbug** des regionalen Auseinanderfallens.

---

## E) ZUSTÄNDIGKEITS-BUGS

### E.1 Wer prüft was?

| Sachverhalt | Zuständig |
|---|---|
| Auffälligkeitsprüfung ärztl. Leistungen ambulant | Prüfungsstelle § 106c SGB V |
| Auffälligkeitsprüfung verordn. Leistungen ambulant | Prüfungsstelle § 106c SGB V |
| Einzelfallprüfung ambulant | Prüfungsstelle § 106c SGB V |
| Plausibilitätsprüfung ambulant | KV (§ 106d Abs. 2 SGB V) |
| Sachlich-rechnerische Richtigkeit | KV (§ 106d Abs. 2 SGB V) |
| Stationäre Einzelfallprüfung | Medizinischer Dienst (§ 275c SGB V) |
| Strukturprüfung Krankenhaus | Medizinischer Dienst (§ 275d SGB V) |
| Sonstiger Schaden (unzulässige Verordnung) | Prüfungsstelle nach § 106c oder KV (§ 48 BMV-Ä) |
| Beschwerdeverfahren | Beschwerdeausschuss § 106c SGB V |
| Klage gegen Beschwerdeausschuss | Sozialgericht § 87 SGG |

**Bug:** Bei "sonstigem Schaden" gibt es **alternative Zuständigkeiten** (Prüfungsstelle ODER KV). Welche Instanz tatsächlich zuständig wird, hängt davon ab, wer den Antrag stellt — ein klassischer Forum-Shopping-Bug.

**Quelle:**
- [Sozialgericht Düsseldorf S 2 KA 1177/16](https://nrwe.justiz.nrw.de/sgs/sg_duesseldorf/j2017/NRWE_S_2_KA_1177_16.html)
- [LSG NRW — Abgrenzung sachlich-rechnerische Richtigstellung und Wirtschaftlichkeitsprüfung](https://www.kmh-medizinrecht.de/single-post/lsg-nrw-abgrenzung-sachlich-rechnerische-richtigstellung-und-wirtschaftlichkeitspr%C3%BCfung-fehlende)
- [Sommer SGB V § 106d — Prüfmethoden der KV](https://www.haufe.de/id/kommentar/sommer-sgbv-106d-abrechnungspruefung-in-der-vertragsae-221-pruefmethoden-der-kv-HI10964970.html)

**Bug-Schwere:** hoch.

---

### E.2 Doppelzuständigkeit Wirtschaftlichkeit/Plausibilität

**Bug:** Die Abgrenzung zwischen Wirtschaftlichkeitsprüfung (§ 106 ff., Prüfungsstelle) und Plausibilitätsprüfung (§ 106d, KV) ist ein **Dauerstreitthema vor den Sozialgerichten**. Mehrere LSG-Urteile mussten klären, ob im konkreten Fall eine sachlich-rechnerische Richtigstellung (KV) oder eine Wirtschaftlichkeitsprüfung (Prüfungsstelle) vorlag.

Konkretes Beispiel: LSG NRW hatte zu entscheiden, ob bei "fehlender Patientenidentifikation" die KV (sachlich-rechnerisch) oder die Prüfungsstelle (Wirtschaftlichkeit) zuständig ist.

**Folge:** Verfahrensbescheide werden aus formalen Zuständigkeitsgründen aufgehoben — auch wenn der materielle Sachverhalt unstreitig ist.

**Bug-Schwere:** hoch.

---

### E.3 Wer prüft die Prüfungseinrichtungen?

**Bug:** Aufsicht über die Prüfungsstelle/Beschwerdeausschuss führt nach § 106c Abs. 4 SGB V "die für die Sozialversicherung zuständige oberste Verwaltungsbehörde des Landes". Faktisch ist das in vielen Bundesländern eine Abteilung des Sozial- oder Gesundheitsministeriums **ohne eigene fachliche Prüfkompetenz** im Wirtschaftlichkeitsrecht.

Eine **inhaltliche Kontrolle** der Bescheide erfolgt erst über das Sozialgericht — und nur dann, wenn ein betroffener Arzt klagt. Es gibt keine systematische Stichprobenkontrolle der Prüfungsstellen-Bescheide. Die Vorarbeit `RECHERCHE_GKV_BELEGE_EINZELFALLPRUEFUNG.md` hat dies bereits dokumentiert: niemand prüft systematisch, wie viele Einzelfallprüfungen mit welchem Ergebnis enden.

**Quelle:**
- [§ 106c Abs. 4 SGB V](https://www.gesetze-im-internet.de/sgb_5/__106c.html)
- Eigene Vorrecherche `RECHERCHE_GKV_BELEGE_EINZELFALLPRUEFUNG.md`

**Bug-Schwere:** sehr hoch — strukturelle Aufsichtslücke.

---

## F) REFORMRESIDUEN

### F.1 § 106 Abs. 5e SGB V (alt) — abgeschafft, aber in BSG-Urteilen weiter zitiert

**Bug:** Der "Beratung vor Regress"-Baustein wurde 2012 in § 106 Abs. 5e SGB V eingefügt und 2017 mit dem GKV-VSG aufgehoben. In BSG-Entscheidungen aus 2015–2018 (zu noch laufenden Altfällen) wird die Norm weiter zitiert. Wer einen Bescheid mit Verweis auf "§ 106 Abs. 5e a.F." erhält, muss wissen, dass diese Norm gar nicht mehr gilt — sondern nur noch für Altfälle.

**Quelle:**
- [BSG 28.10.2015, B 6 KA 45/14 R](https://datenbank.nwb.de/Dokument/597253/)
- [iww — Wann ist eine Beratung eine Beratung?](https://www.iww.de/aaa/kassenabrechnung/richtgroessenpruefung--106-sgb-v-wann-ist-eine-beratung-eine-beratung-f77205)

**Bug-Schwere:** mittel.

---

### F.2 Stichprobenprüfung 2 % — die Zombie-Norm

**Bug:** Die ärztliche **Stichprobenprüfung 2 %** (alt: § 106 Abs. 2 Nr. 3 SGB V) wurde 2017 abgeschafft. Trotzdem führt die KV nach § 106d SGB V weiterhin "Stichprobenprüfungen ... von mindestens 2 % je Quartal" durch — aber nun als **Plausibilitätsprüfung**, nicht als Wirtschaftlichkeitsprüfung. Die Zahl ist gleich, der rechtliche Charakter ist anders.

**Folge:** Die Begrifflichkeit ist verwirrend. Ältere Literatur spricht von "2 %-Stichprobe" als Wirtschaftlichkeitsmechanik, neue Literatur als Plausibilitätsmechanik. In der Praxis wird unterschiedslos "Stichprobenprüfung" gesagt.

**Quelle:**
- [Sommer SGB V § 106d — Stichprobenprüfung der KV](https://www.haufe.de/id/kommentar/sommer-sgbv-106d-abrechnungspruefung-in-der-vertragsae-224-stichprobenpruefung-der-kv-HI10964973.html)

**Bug-Schwere:** mittel.

---

### F.3 "Prüfungsausschuss" vs. "Prüfungsstelle"

**Bug:** Die Umbenennung 2007 (VÄndG) ist in vielen älteren Texten und Bescheiden noch nicht vollzogen. Ein 2025 zugestellter Bescheid einer "Prüfungsstelle" referenziert eventuell Verfahrenshandlungen aus 2008, in denen noch der "Prüfungsausschuss" handelte. Die Synonymfrage ist juristisch geklärt, aber sprachlich verwirrend.

**Bug-Schwere:** niedrig.

---

### F.4 § 106 SGB V verweist auf §§ 296, 297 — die ihrerseits auf § 106b verweisen

**Bug:** Verweis-Schleife: § 106 (Vorstandshaftung) → §§ 296, 297 (Datenmitteilung) → § 106b Abs. 1 (Prüfvereinbarung) → unbestimmt. Die Schleife ist nicht durch explizite Inkonsistenz gebrochen, sondern durch endlose Subordination.

**Bug-Schwere:** niedrig.

---

## G) DOKUMENTATIONS-BUGS

### G.1 BMV-Ä nicht in gesetze-im-internet.de

**Bug:** Der § 48 BMV-Ä — die wichtigste Norm für Schadensregresse — ist auf dem amtlichen Portal **gesetze-im-internet.de NICHT abrufbar**. Die Volltexte finden sich nur auf:
- KBV-Website ([kbv.de/html/bundesmantelvertrag.php](https://www.kbv.de/html/bundesmantelvertrag.php))
- Haufe-Portal (kommerziell)
- juris (kommerziell)

**Folge:** Wer das amtliche deutsche Rechtsportal nutzt, erfährt nicht, dass es eine zentrale Norm außerhalb des SGB V gibt.

**Bug-Schwere:** sehr hoch.

---

### G.2 Regionale Prüfvereinbarungen — variable Transparenz

**Bug:** Manche KVen veröffentlichen ihre Prüfvereinbarung als PDF (KV Berlin, KVWL), andere nur in Auszügen, manche überhaupt nicht. Es gibt keine zentrale Datenbank der 17 regionalen Prüfvereinbarungen. Die Mitgliedsbereiche der KVen sind teils nur mit Login zugänglich.

**Quelle:**
- [KV Berlin — Prüfvereinbarung Wirtschaftlichkeitsprüfung](https://www.kvberlin.de/fuer-praxen/alles-fuer-den-praxisalltag/vertrage-und-recht/vertraege/pruefvereinbarung-wirtschaftlichkeitspruefung)
- [KVWL — Gemeinsame Prüfvereinbarung](https://www.kvwl.de/fileadmin/user_upload/pdf/Mitglieder/Rechtsquellen_und_Vertraege/Pruefvereinbarung/Gemeinsame_Pruefvereinbarung.pdf)

**Bug-Schwere:** hoch.

---

### G.3 BSG-Urteile als de-facto-Recht ohne Container-Anker

**Bug:** Zentrale Tatbestände (z. B. "voller Regress bei unzulässiger Verordnung", "25 %-Sicherheitsabschlag bei Hochrechnung", "Bindungswirkung der Beratung") sind im SGB V **nicht kodifiziert**. Sie ergeben sich allein aus BSG-Rechtsprechung. Beispiele:
- BSG 27.11.1959, BSGE 11, 102 — Grundsatzentscheidung Wirtschaftlichkeit
- BSG 08.04.1992, 6 RKa 27/90 — repräsentative Einzelfallprüfung
- BSG 06.05.2009, B 6 KA 3/08 R — Bindungswirkung Beratung
- BSG 05.05.2010, B 6 KA 5/09 R — 4-Jahres-Ausschlussfrist
- BSG 11.12.2019, B 6 KA 23/18 R — Sachverhaltsermittlung Einzelfall
- BSG 05.06.2024, B 6 KA 5/23 R — Differenzkostenregelung-Anwendungsbereich
- BSG 26.03.2025, B 6 KA 2/24 R — Cannabis voller Regress
- BSG 27.08.2025, B 6 KA 9/24 R — Unterschriftenstempel 490.000 EUR

**Folge:** Wer das Wirtschaftlichkeitsrecht verstehen will, muss neben dem Gesetz auch ca. 2.000 Seiten BSG-Rechtsprechung kennen.

**Bug-Schwere:** sehr hoch — Code-as-Law-Mangel.

---

### G.4 Vollzugsstatistiken nicht öffentlich

**Bug:** Die jährliche Berichterstattung der Prüfungsstellen (§ 106c Abs. 5 S. 7 SGB V) erfolgt ausweislich der Praxis intern an Aufsichtsbehörden, nicht öffentlich. Es gibt **keine bundesweite Datenbank** über:
- Anzahl der Prüfverfahren pro Jahr
- Anteil mit Regress / mit Beratung / ohne Maßnahme
- Durchschnittliche Regresshöhe
- Quote der erfolgreichen Widersprüche

Recherche der Vorarbeit `RECHERCHE_GKV_BELEGE_EINZELFALLPRUEFUNG.md` zeigt: Die GKV-SV publiziert keine Vollzugsstatistik.

**Bug-Schwere:** sehr hoch — strukturelle Intransparenz.

---

## H) VERHÄLTNIS-BUGS (zwischen Containern)

### H.1 "Beratung vor Regress" — Asymmetrie als Bug

**Befund:** § 106b Abs. 2 S. 4 SGB V verlangt "Beratung vor Nachforderung" bei Auffälligkeitsprüfungen, aber **ausdrücklich nicht** bei Einzelfallprüfungen.

**Bug oder Feature?** Aus Sicht der Krankenkasse ein Feature (kein Schutz für Einzelfälle). Aus Sicht des Arztes ein Bug, weil:
- die Einzelfallprüfung **kein systembedingter Hochrechnungsfehler** ist, sondern auf **konkretem Verdacht** beruht — eine Beratung wäre sogar besonders sinnvoll
- die Folgen der Einzelfallprüfung (regelmäßig 100% Regress) härter sind als die der Auffälligkeitsprüfung (Differenzkostenregelung möglich)
- der Arzt bei Einzelfall **weniger Vorlaufzeit** hat als bei statistischer Auffälligkeit

Die KBV hat 2015 in ihrer Stellungnahme vor genau dieser Asymmetrie gewarnt. Die Asymmetrie wurde dennoch ins Gesetz übernommen.

**Quelle:**
- [§ 106b Abs. 2 S. 4 SGB V](https://www.gesetze-im-internet.de/sgb_5/__106b.html)
- KBV-Stellungnahme zum GKV-VSG-Referentenentwurf (BMG-Archiv)
- [Praxistipps — Effektive Regressprävention bei Einzelfallprüfungen](https://der-niedergelassene-arzt.de/praxis/news-details/wirtschaft/praxistipps-fuer-eine-effektive-regresspraevention-von-einzelfallpruefungen)

**Bug-Schwere:** sehr hoch.

---

### H.2 Lex specialis-Verletzung: Schadensregress vs. Wirtschaftlichkeitsregress

**Bug:** Der Schadensregress nach § 48 BMV-Ä (untergesetzliches Recht) und der Wirtschaftlichkeitsregress nach § 106 ff. SGB V (Bundesgesetz) sind **nicht im Verhältnis lex specialis–lex generalis** geordnet, obwohl beide demselben Sachverhalt (Regress wegen Verordnung) entstammen können.

Das BSG hat jahrzehntelang versucht, diese Konkurrenz richterrechtlich zu strukturieren — mit dem Ergebnis, dass:
- Schadensregress (BMV-Ä) **kein Wirtschaftlichkeitsregress** ist, also eigenen Verfahrensregeln folgt
- aber von **derselben Prüfungsstelle** entschieden wird
- mit teils anderen Fristen (BMV-Ä-Verfahren ist nicht durchgehend an § 106 Abs. 3 SGB V gebunden)

Christoph Hauck (Springer Medizinrecht 2022) hat die ständige BSG-Rechtsprechung zum "sonstigen Schaden" als verfassungswidrig kritisiert.

**Quelle:**
- [Springer Medizinrecht — Hauck: "Der sonstige Schaden"](https://link.springer.com/article/10.1007/s00350-022-6375-7)

**Bug-Schwere:** sehr hoch.

---

### H.3 § 106 Abs. 5 SGB V — Krankenhaus-Eskapaden im ambulanten Container

**Bug:** § 106 Abs. 5 SGB V bestimmt: "Die Absätze 1 bis 4 gelten auch für die Prüfung der Wirtschaftlichkeit der **im Krankenhaus erbrachten ambulanten ärztlichen und belegärztlichen Leistungen**." Das schafft eine **Brücke vom ambulanten in den stationären Bereich** in einem Container, der eigentlich nur ambulant sein sollte. Gleichzeitig regelt § 275c SGB V die stationäre Einzelfallprüfung — mit ganz anderer Logik (4-Monats-Frist, MD-Zuständigkeit, Aufwandspauschale).

**Folge:** Bei "ambulanten" Leistungen im Krankenhaus überlagern sich zwei Container — § 106 SGB V (ambulant) und § 275c SGB V (stationär) — mit unterschiedlichen Fristen, Zuständigkeiten und Verfahrensregeln. Die KBV hat eine FAQ-Seite genau zu diesem Spannungsfeld eingerichtet (BSG 06.04.2022, B 6 KA 6/21 R).

**Quelle:**
- [BSG 06.04.2022, B 6 KA 6/21 R — Abgrenzung MDK/Wirtschaftlichkeitsprüfung](https://dejure.org/dienste/vernetzung/rechtsprechung?Gericht=BSG&Datum=06.04.2022&Aktenzeichen=B+6+KA+6/21+R)

**Bug-Schwere:** hoch.

---

### H.4 Schutzklauseln nur in einer Verfahrensart

**Bug:** Mehrere Schutzklauseln gelten nur teilweise:

| Schutzklausel | Container | Gilt für |
|---|---|---|
| Beratung vor Nachforderung | § 106b Abs. 2 S. 4 SGB V | nur Auffälligkeitsprüfung, nicht Einzelfall |
| Differenzkostenregelung | § 106b Abs. 2a SGB V | nur unwirtschaftliche Verordnungen, nicht unzulässige |
| Grippeimpfstoff-Korridor | § 106b Abs. 1a SGB V | nur Grippeimpfstoffe |
| Arzneimittelrückruf-Schutz | § 106b Abs. 1b SGB V | nur Rückruf-Fälle |
| Versorgungslücken-Schutz | § 106b Abs. 1c SGB V | nur Listen nach § 129 Abs. 2b |

**Folge:** Statt eines konsistenten Schutzkonzepts gibt es eine **Kaskade von Mikro-Schutzklauseln**, die nur in eng definierten Sondersituationen greifen. Der allgemeine Vertragsarzt-Alltag ist von keiner dieser Klauseln umfasst.

**Bug-Schwere:** hoch.

---

## I) PRAKTISCHE BUGS — wie sich das in der ärztlichen Realität äußert

### I.1 BSG 27.08.2025, B 6 KA 9/24 R — Unterschriftenstempel 490.000 EUR

**Befund:** Ein Vertragszahnarzt wurde mit ca. 490.000 EUR Schadensersatz belegt, weil er auf KV-Abrechnungen einen Unterschriftenstempel statt einer eigenhändigen Unterschrift verwendet hat. Die Sanktion stützt sich auf § 48 BMV-Ä (sonstiger Schaden).

**Was der Bug zeigt:**
- Der Arzt sah keinen formalen Inhalt der Abrechnung verfälscht — er hat die Leistungen tatsächlich erbracht
- Die Sanktion fußt nicht auf "unwirtschaftlicher" sondern auf "formal unzulässiger" Praxis
- Die Höhe (490.000 EUR) ist existenzvernichtend
- Differenzkostenregelung (§ 106b Abs. 2a SGB V) wurde nicht angewendet, weil "unzulässig" ≠ "unwirtschaftlich"

**Quelle:**
- [iww — Vertragszahnarztrecht 490.000 EUR Regress](https://www.iww.de/aaz/recht/vertragszahnarztrecht-bsg-bestaetigt-490000-euro-regress-unterschriftenstempel-nicht-ausreichend-f170731)

---

### I.2 KBV-Beschwerde an Lauterbach 2023 — Klarstellung Off-Label

**Befund:** Die KBV hat 2023 in einem offiziellen Brief an Bundesgesundheitsminister Lauterbach um Klarstellung gebeten, weil die Praxis bei Off-Label-Verordnungen unkalkulierbar sei. Die Differenzkostenregelung greift nicht; die Verfahren werden uneinheitlich regional gehandhabt.

**Quelle:**
- [Aerzteblatt — KBV will Klarstellung bei Wirtschaftlichkeitsprüfung](https://www.aerzteblatt.de/nachrichten/152238/KBV-will-Klarstellung-bei-Wirtschaftlichkeitspruefung-Brief-an-Lauterbach)

---

### I.3 Virchowbund — "Warum das Regress-Risiko für Ärzte steigen könnte"

**Befund:** Der Virchowbund warnt explizit vor steigenden Regressrisiken durch:
- Fehlender bundeseinheitlicher Bagatellgrenze (GVSG-Scheitern)
- Erhöhte Zahl von Einzelfall-Prüfanträgen einzelner Krankenkassen
- Verwirrung über die richtige Verfahrensart

**Quelle:**
- [Virchowbund — Warum das Regress-Risiko für Ärzte steigen könnte](https://www.virchowbund.de/praxisaerzte-blog/warum-das-regress-risiko-fuer-aerzte-steigen-koennte)

---

### I.4 KBV-Bürokratie-Dossier — 61 Tage pro Jahr

**Befund:** Die KBV-Studie zur Bürokratiebelastung beziffert den Aufwand niedergelassener Ärzte mit ca. 61 Tagen pro Jahr. Wirtschaftlichkeits- und Qualitätsprüfungen sind explizit als belastend benannt.

**Quelle:**
- [KBV — Dossier Bürokratieabbau](https://www.kbv.de/positionen/dossiers/buerokratieabbau)

---

### I.5 Rechtsanwaltskommentare — strukturelle Kritik

**Befund:** Praktiker-Kommentare aus dem Medizinrecht (kmh-medizinrecht, lennmed.de, Anwaltskanzlei Kahlen) thematisieren wiederholt:
- Die Abgrenzung zwischen Wirtschaftlichkeits- und Schadensregress
- Die Cannabis-Falle nach § 31 Abs. 6 SGB V
- Die Nicht-Anwendbarkeit der Differenzkostenregelung bei "unzulässigen" Verordnungen
- Die Notwendigkeit, Bescheide formell zu prüfen, weil materiell oft kein Spielraum besteht

**Quelle:**
- [kmh-medizinrecht — Cannabis voller Regress](https://www.kmh-medizinrecht.de/single-post/bsg-voller-regress-bei-cannabisverordnung-ohne-genehmigung)
- [lennmed.de — Cannabis Regress](https://www.lennmed.de/veroeffentlichungen/meldungen-und-beitraege/veroeffentlichung/regress-wegen-verordnung-von-cannabis-ohne-genehmigung/)
- [Anwaltskanzlei Kahlen — Cannabis § 31 Abs. 6 SGB V](https://anwaltskanzlei-kahlen.de/aktuelles/kostenuebernahme-fuer-cannabis-nach-31-abs-6-sgb-v)

---

## TOP-10 BUGS — Schwere-Ranking

> Sortiert nach **Schwere** (höchste zuerst), bewertet nach: (a) systemische Reichweite, (b) praktische Folgen für Ärzte, (c) Häufigkeit, (d) Reparierbarkeit.

| # | Bug | Container/Norm | Folge | Trivial fixbar? |
|---|---|---|---|---|
| 1 | **Container-Umnummerierung § 106a (Abrechnungsprüfung → Wirtschaftlichkeit ärztlicher Leistungen)** ohne Sperrkennzeichnung in Lesefassung | § 106a SGB V (alt vs. neu) | Ältere Literatur, Urteile, Bescheide werden missverstanden. Ärzte schlagen falsche Norm nach. | NEIN — Normwechsel ist bereits vollzogen, fixbar nur durch Übergangsklarstellung im Gesetz und in Lesefassungen. |
| 2 | **§ 48 BMV-Ä — Schadensregress versteckt in Kollektivvertrag**, nicht im SGB V verlinkt, nicht in gesetze-im-internet.de | § 48 BMV-Ä | Wichtigster existenzvernichtender Regressgrund (Beispiel: BSG 27.08.2025, 490.000 EUR) ist im amtlichen Rechtsportal unsichtbar. | JA — Aufnahme in einen neuen § 106e SGB V wäre einzeiliger Akt. |
| 3 | **Beratungs-Asymmetrie** (§ 106b Abs. 2 S. 4 SGB V) — Beratung vor Regress nur bei Auffälligkeitsprüfung, nicht bei Einzelfallprüfung | § 106b Abs. 2 S. 4 SGB V | Einzelfallprüfung ist die strengere Verfahrensart und hat trotzdem den geringeren Schutz. Strukturelle Schutzlücke seit 2017. | JA — Streichung des "dies gilt nicht für Einzelfallprüfungen". |
| 4 | **Bagatellgrenzen regional uneinheitlich** (30 EUR–150 EUR), keine bundeseinheitliche Untergrenze | regionale Prüfvereinbarungen nach § 106b Abs. 1 SGB V | Verfassungsrechtlich problematische regionale Ungleichbehandlung. Geplante 300-EUR-Grenze (GVSG) gescheitert. | JA — Bundesgesetzliche Mindest-Bagatellgrenze in § 106b SGB V einfügen. |
| 5 | **Kein Bauplan für die Einzelfallprüfung im SGB V** — § 106 Abs. 1 S. 2 SGB V verweist nur auf zu vereinbarende "Voraussetzungen" | § 106 Abs. 1 S. 2 SGB V + 17 regionale Prüfvereinbarungen | Materielle Substanz vollständig in 17 untergesetzliche Vereinbarungen ausgelagert; kein bundeseinheitliches Schutzniveau. | NEIN — der politische Wille der Auslagerung war 2017 explizit; Rückverlagerung wäre große Reform. |
| 6 | **Fehlende Aufsicht über Prüfungsstellen** — keine systematische Vollzugsstatistik, keine Stichprobenkontrolle | § 106c Abs. 4 SGB V | Niemand prüft, wie viele Einzelfallprüfungen mit welchem Ergebnis enden. Keine Datenbasis für Reformen. | JA — Veröffentlichungspflicht in § 106c SGB V ergänzen. |
| 7 | **"Unwirtschaftlich" vs. "unzulässig" — keine kodifizierte Trennlinie**, BSG-Richterrecht entscheidet über voller Regress vs. Differenzkosten | § 106b Abs. 2a SGB V vs. BSG-Rspr. | Off-Label, Cannabis, Sprechstundenbedarf, Unterschriftenstempel — alles "unzulässig", voller Regress, kein Schutz. | JA — Legaldefinition oder Liste in § 106b SGB V. |
| 8 | **"Wirtschaftlichkeit" undefiniert in § 12 SGB V** — Tautologie statt Tatbestand | § 12 SGB V | Sanktionsnorm ohne klaren Inhalt, gesamte Sanktionsprozedur lebt aus 67 Jahren BSG-Rechtsprechung. | NEIN — eine Legaldefinition wäre denkbar, aber politisch umstritten. |
| 9 | **Sprechstundenbedarf — kein eigener SGB-V-Container**, Regelung nur in untergesetzlichen Sprechstundenbedarfsvereinbarungen | nirgends im SGB V; SSB-Vereinbarung der Länder; Anlage 3 Rahmenvorgabe | Häufigstes Regressfeld (KV Nordrhein: ~10.000 Anträge/Jahr) ohne Anker im Bundesgesetz. | JA — Aufnahme in § 106b SGB V als eigener Absatz. |
| 10 | **BMV-Ä nicht in gesetze-im-internet.de** — strukturelle Sichtbarkeitslücke | § 48 BMV-Ä, BMV-Ä insgesamt | Wer das amtliche Rechtsportal nutzt, verpasst die wichtigste Schadensregress-Norm. | JA — technische Verlinkung wäre einzeiliger Akt für das BMJ. |

---

## Quellenübersicht (verifiziert)

### Primärnormen (alle über gesetze-im-internet.de und dejure.org verifiziert)

- [§ 12 SGB V — Wirtschaftlichkeitsgebot](https://www.gesetze-im-internet.de/sgb_5/__12.html)
- [§ 106 SGB V](https://www.gesetze-im-internet.de/sgb_5/__106.html)
- [§ 106a SGB V (Wirtschaftlichkeitsprüfung ärztlicher Leistungen)](https://www.gesetze-im-internet.de/sgb_5/__106a.html)
- [§ 106b SGB V](https://www.gesetze-im-internet.de/sgb_5/__106b.html)
- [§ 106c SGB V](https://www.gesetze-im-internet.de/sgb_5/__106c.html)
- [§ 106d SGB V](https://www.gesetze-im-internet.de/sgb_5/__106d.html)
- [§ 275 SGB V](https://www.gesetze-im-internet.de/sgb_5/__275.html)
- [§ 275c SGB V](https://www.gesetze-im-internet.de/sgb_5/__275c.html)
- [§ 296 SGB V](https://www.gesetze-im-internet.de/sgb_5/__296.html)
- [§ 297 SGB V](https://www.gesetze-im-internet.de/sgb_5/__297.html)
- [§ 84 SGG](https://www.gesetze-im-internet.de/sgg/__84.html)
- [§ 113 SGB X](https://www.gesetze-im-internet.de/sgb_10/__113.html)
- [§ 48 BMV-Ä — Haufe Volltext](https://www.haufe.de/id/norm/bundesmantelvertrag-aerzte-bmv-ae-48-feststellung-sonstigen-schadens-durch-pruefungseinrichtungen-und-die-kassenaerztliche-vereinigung-HI5583942_p48.html)
- [KBV — Bundesmantelvertrag-Ärzte Übersicht](https://www.kbv.de/html/bundesmantelvertrag.php)

### Versionshistorien

- [buzer.de — § 106 SGB V](https://www.buzer.de/106_SGB_V.htm)
- [buzer.de — § 106a SGB V (alte Fassung)](https://www.buzer.de/106a_SGB_V.htm)
- [buzer.de — § 106b SGB V](https://www.buzer.de/106b_SGB_V.htm)
- [buzer.de — § 106d SGB V](https://www.buzer.de/106d_SGB_V.htm)
- [buzer.de — § 275c SGB V](https://www.buzer.de/275c_SGB_V.htm)
- [buzer.de — § 106 SGB V Fassung bis 01.01.2017](https://www.buzer.de/gesetz/2497/al58208-0.htm)

### Rahmenvorgaben

- [GKV-SV — Wirtschaftlichkeitsprüfung Übersicht](https://www.gkv-spitzenverband.de/krankenversicherung/ambulante_leistungen/wirtschaftlichkeitspruefung/wirtschaftlichkeitspruefung_leistungen.jsp)
- [Aerzteblatt — Rahmenvorgaben § 106b Abs. 2 (Original 2016)](https://www.aerzteblatt.de/archiv/173666/)
- [Aerzteblatt — Rahmenvorgaben Aktualisierung](https://www.aerzteblatt.de/archiv/214460/)
- [Aerzteblatt — 2. Änderungsvereinbarung](https://www.aerzteblatt.de/archiv/2-aenderungsvereinbarung-zu-den-rahmenvorgaben-nach-106b-abs-2-sgb-v-fuer-die-wirtschaftlichkeitspruefung-aerztlich-verordneter-leistungen-f4d011b2-8c12-4a3a-b7e7-9158eb5c3cc0)
- [Aerzteblatt — 3. Änderungsvereinbarung](https://www.aerzteblatt.de/archiv/199493/)
- [Aerzteblatt — 4. Änderungsvereinbarung](https://www.aerzteblatt.de/archiv/199496/)
- [GKV-SV — Rahmenvorgaben PDF Lesefassung](https://www.gkv-spitzenverband.de/media/dokumente/krankenversicherung_1/ambulante_leistungen/wirtschaftlichkeitspruefung/20200501_Rahmenvorgaben_106b_Wirtschaftlichkeitspruefungen_Korrektur_19.01.2021.pdf)
- [KBV — Rahmenvorgaben PDF](https://www.kbv.de/documents/infothek/rechtsquellen/weitere-vertraege/praxen/verordnungen/rahmenvorgaben-wirtschaftlichkeitspruefungen.pdf)

### Regionale Prüfvereinbarungen

- [KVWL — Gemeinsame Prüfvereinbarung PDF](https://www.kvwl.de/fileadmin/user_upload/pdf/Mitglieder/Rechtsquellen_und_Vertraege/Pruefvereinbarung/Gemeinsame_Pruefvereinbarung.pdf)
- [KV Berlin — Prüfvereinbarung](https://www.kvberlin.de/fuer-praxen/alles-fuer-den-praxisalltag/vertrage-und-recht/vertraege/pruefvereinbarung-wirtschaftlichkeitspruefung)
- [KV Berlin — Verordnungs-News Juli 2025 (Bagatellgrenzen)](https://www.kvberlin.de/verordnungs-news-nr-5-juli-2025-sonderausgabe-pruefvereinbarung-und-arzneimittelvereinbarung-mit-zielen)
- [KV Hamburg — Prüfungsvereinbarung PDF](https://www.kvhh.net/_Resources/Persistent/2/e/0/4/2e04b4bc7783a13bbb69e8acf81276c45909b39e/pruefungsvereinbarung_idf4.nachtrag_vertragssammlung_2015-05-12.pdf)
- [KV Berlin — Prüfvereinbarung 2020 PDF](https://www.kvberlin.de/fileadmin/user_upload/vertraege_kv_berlin/pruefvereinbarung_wirtschaftlichkeitspruefung/pruefvereinbarung_vereinbarung2020.pdf)

### BSG-Rechtsprechung

- [BSG 11.12.2019 — B 6 KA 23/18 R (Sprechstundenbedarf)](https://www.bsg.bund.de/SharedDocs/Entscheidungen/DE/2019/2019_12_11_B_06_KA_23_18_R.html)
- [BSG 05.06.2024 — B 6 KA 5/23 R (Differenzkostenregelung Anwendung)](https://www.bsg.bund.de/SharedDocs/Verhandlungen/DE/2024/2024_06_05_B_06_KA_05_23_R.html)
- [BSG 05.06.2024 — B 6 KA 10/23 R (Off-Label)](https://www.bsg.bund.de/SharedDocs/Entscheidungen/DE/2024/2024_06_05_B_06_KA_10_23_R.html)
- [BSG 26.03.2025 — B 6 KA 2/24 R (Cannabis voller Regress)](https://www.bsg.bund.de/SharedDocs/Entscheidungen/DE/2025/2025_03_26_B_06_KA_02_24_R.html)
- [BSG 27.08.2025 — B 6 KA 9/24 R (Unterschriftenstempel 490.000 EUR)](https://dejure.org/dienste/vernetzung/rechtsprechung?Gericht=BSG&Datum=27.08.2025&Aktenzeichen=B+6+KA+9/24+R)
- [BSG 06.04.2022 — B 6 KA 6/21 R (Abgrenzung MD/Wirtschaftlichkeit)](https://dejure.org/dienste/vernetzung/rechtsprechung?Gericht=BSG&Datum=06.04.2022&Aktenzeichen=B+6+KA+6/21+R)
- [BSG 28.10.2015 — B 6 KA 45/14 R (Heilmittelregress alt)](https://datenbank.nwb.de/Dokument/597253/)
- [BSG 18.08.2010 — B 6 KA 14/09 R (Sprechstundenbedarf)](https://dejure.org/dienste/vernetzung/rechtsprechung?Gericht=BSG&Datum=18.08.2010&Aktenzeichen=B+6+KA+14/09+R)

### LSG/SG-Rechtsprechung

- [LSG NRW — L 11 KA 49/13 (Beratung)](https://nrwe.justiz.nrw.de/sgs/lsg_nrw/j2013/NRWE_L_11_KA_49_13.html)
- [SG Düsseldorf — S 2 KA 1177/16 (Zuständigkeit)](https://nrwe.justiz.nrw.de/sgs/sg_duesseldorf/j2017/NRWE_S_2_KA_1177_16.html)
- [LSG NRW — Abgrenzung sachlich-rechnerisch/Wirtschaftlichkeit (Kurzkommentar)](https://www.kmh-medizinrecht.de/single-post/lsg-nrw-abgrenzung-sachlich-rechnerische-richtigstellung-und-wirtschaftlichkeitspr%C3%BCfung-fehlende)

### Kommentarliteratur und Praktiker-Quellen

- [Sommer SGB V § 106b — Rahmenvorgaben](https://www.haufe.de/id/kommentar/sommer-sgb-v-106b-wirtschaftlichkeitspruefung-aerztlich-23-rahmenvorgaben-fuer-die-pruefungen-nach-abs1-HI10884990.html)
- [Sommer SGB V § 106d — Stichprobenprüfung der KV](https://www.haufe.de/id/kommentar/sommer-sgbv-106d-abrechnungspruefung-in-der-vertragsae-224-stichprobenpruefung-der-kv-HI10964973.html)
- [Sommer SGB V § 106d — Prüfmethoden der KV](https://www.haufe.de/id/kommentar/sommer-sgbv-106d-abrechnungspruefung-in-der-vertragsae-221-pruefmethoden-der-kv-HI10964970.html)
- [Springer Medizinrecht — "Der sonstige Schaden im Recht der GKV" (Hauck 2022)](https://link.springer.com/article/10.1007/s00350-022-6375-7)

### Praktiker-/Fachportale

- [iww — Wann ist eine Beratung eine Beratung?](https://www.iww.de/aaa/kassenabrechnung/richtgroessenpruefung--106-sgb-v-wann-ist-eine-beratung-eine-beratung-f77205)
- [iww — Vertragszahnarztrecht 490.000 EUR Regress](https://www.iww.de/aaz/recht/vertragszahnarztrecht-bsg-bestaetigt-490000-euro-regress-unterschriftenstempel-nicht-ausreichend-f170731)
- [iww — Beratung vor Regress nicht voreilig zustimmen](https://www.iww.de/aaa/recht/vertragsarztrecht-beratung-vor-regress-nicht-voreilig-zustimmen-f98040)
- [iww — Wirtschaftlichkeitsprüfung ab 2017 bleibt alles anders](https://www.iww.de/pfb/steuern-und-recht-aktuell/wirtschaftlichkeitspruefung-ab-2017-bleibt-alles-anders-f91334)
- [kmh-medizinrecht — Cannabis ohne Genehmigung](https://www.kmh-medizinrecht.de/single-post/bsg-voller-regress-bei-cannabisverordnung-ohne-genehmigung)
- [lennmed.de — Cannabis Regress](https://www.lennmed.de/veroeffentlichungen/meldungen-und-beitraege/veroeffentlichung/regress-wegen-verordnung-von-cannabis-ohne-genehmigung/)
- [Anwaltskanzlei Kahlen — Cannabis § 31 Abs. 6](https://anwaltskanzlei-kahlen.de/aktuelles/kostenuebernahme-fuer-cannabis-nach-31-abs-6-sgb-v)
- [OUP — Beratung vor Regress – Widerspruch](https://www.online-oup.de/article/beratung-vor-regress-widerspruch-gegen-beratung/arzt-und-recht/y/m/362)
- [Praxistipps Niedergelassener Arzt — Regressprävention bei Einzelfallprüfungen](https://der-niedergelassene-arzt.de/praxis/news-details/wirtschaft/praxistipps-fuer-eine-effektive-regresspraevention-von-einzelfallpruefungen)

### KV-FAQ-Seiten

- [KV Nordrhein — Wirtschaftlichkeitsprüfung FAQ](https://www.kvno.de/praxis/haeufige-fragen/wirtschaftlichkeitspruefung)
- [KV Berlin — Wirtschaftlichkeitsprüfung Übersicht](https://www.kvberlin.de/fuer-praxen/alles-fuer-den-praxisalltag/verordnung/wirtschaftlichkeitspruefung)
- [KVB Bayern — Wirtschaftlichkeitsgebot/-prüfung](https://www.kvb.de/mitglieder/praxisfuehrung/pflichten/wirtschaftlichkeitsgebot)

### Ärzte-Kritik / Bürokratiebelastung

- [KBV — Dossier Bürokratieabbau](https://www.kbv.de/positionen/dossiers/buerokratieabbau)
- [Aerzteblatt — KBV will Klarstellung Wirtschaftlichkeitsprüfung (Brief Lauterbach)](https://www.aerzteblatt.de/nachrichten/152238/KBV-will-Klarstellung-bei-Wirtschaftlichkeitspruefung-Brief-an-Lauterbach)
- [Aerzteblatt — Große regionale Unterschiede](https://www.aerzteblatt.de/nachrichten/113630/Grosse-regionale-Unterschiede-bei-Wirtschaftlichkeitspruefungen)
- [Solidaris — Umstrittene Bagatellgrenze GVSG-Scheitern](https://www.solidaris.de/aktuelles/umstrittene-bagatellgrenze-fuer-regresse-was-bedeutet-das-scheitern-des-gvsg)
- [Virchowbund — Warum das Regress-Risiko für Ärzte steigen könnte](https://www.virchowbund.de/praxisaerzte-blog/warum-das-regress-risiko-fuer-aerzte-steigen-koennte)

### Vorarbeiten (eigene Recherchen)

- `RECHERCHE_CONTAINER_GENEALOGIE_PRUEFVERFAHREN.md` — Container-Genealogie 1989–2026
- `RECHERCHE_GESCHICHTE_PRUEFVERFAHREN.md` — geschichtlicher Überblick
- `RECHERCHE_EINZELFALLPRUEFUNG_CHANGELOG.md` — Detail-Changelog § 106 ff.
- `RECHERCHE_EINZELFALLPRUEFUNG_MECHANIK.md` — Verfahrensmechanik
- `RECHERCHE_GKV_BELEGE_EINZELFALLPRUEFUNG.md` — GKV-SV-Belege
- `ANALYSE_SYSTEMWIDERSPRUCH_PRUEFVERFAHREN.md` — Systemwiderspruch
- `RECHERCHE_FORMFEHLER_EIGENTUMSRECHT.md` — Formfehler-Praxis

---

*Recherche 2026-04-08, Claude (Research-Agent) im Auftrag Lukas Geiger, Projekt Regress-Melder, Um:bruch Think Tank. Diese Datei vertieft die strukturelle Container-Genealogie um eine technische Bug-Analyse. Alle Zitate aus Normen über die offiziellen Portale (gesetze-im-internet.de, dejure.org, buzer.de) verifiziert; alle BSG-Aktenzeichen über das BSG-Entscheidungsportal verifiziert; Springer Medizinrecht über doi.org-Verknüpfung verifiziert.*
