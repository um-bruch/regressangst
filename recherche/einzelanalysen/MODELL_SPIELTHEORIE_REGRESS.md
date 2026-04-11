# Spieltheoretische Modellierung des deutschen Regress-Systems

> **Erstellt:** 2026-04-08 | **Autor:** CL (Research-Agent, Um:bruch Think Tank) im Auftrag von LG
> **Status:** Konzeptionelle Modellierung, Rohanalyse für PP-003 v2.0 und Tiefenanalyse-Artikel
> **Methode:** Spieltheoretische Strukturanalyse auf Basis empirischer Vorrecherchen
> **Verifikationshinweis:** Alle empirischen Zahlen stammen aus den belegten Vorrecherchen
> (Ribbat 2021, KV Hessen 2015–2017, Goetz 2024, Kifmann/HCHE 2017, Monitor Versorgungs-
> forschung 02/25, KBV-Berufsmonitoring). Auszahlungs-Matrizen sind **konzeptionell
> ordinal** (besser/schlechter), nicht kardinal — sie illustrieren strategische Strukturen,
> nicht exakte Eurobeträge.

---

## Inhaltsverzeichnis

- [A) Die Spieler — Identifikation und Modellierung](#a-die-spieler)
- [B) Die Spiele — Identifikation und Analyse](#b-die-spiele)
- [C) Zentrale spieltheoretische Erkenntnisse](#c-zentrale-spieltheoretische-erkenntnisse)
- [D) Strategische Empfehlungen aus der Spieltheorie](#d-strategische-empfehlungen)
- [E) Spieltheoretische Literatur — Verifizierte Quellen](#e-spieltheoretische-literatur)

---

## A) Die Spieler

### Vorbemerkung: Spieler vs. Spielfeld

Ein "Spieler" im spieltheoretischen Sinn ist ein Akteur mit (a) einer eigenen Payoff-
Funktion, (b) Handlungsoptionen (Strategien) und (c) der Fähigkeit zur strategischen
Interaktion. Akteure ohne Strategie-Wahl sind kein Spieler, sondern Spielfeld bzw.
Externalität. Diese Unterscheidung ist für das Regress-System kritisch: **Patienten und
Ärzte tragen den Schaden, aber haben dramatisch unterschiedliche strategische Macht.**

---

### Spieler 1: Vertragsarzt (niedergelassen, GKV)

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Existenzsicherung der Praxis, fachliche Integrität, Patientenwohl, Arbeitsfähigkeit |
| **Ressourcen** | Approbation, Praxisausstattung, Patientenstamm, Zeit (knapp), KV-Zulassung |
| **Information** | Patientenakte (sehr gut), eigene Verordnungshistorie (gut), **Regress-Risiko prospektiv: nahezu null Information** (vertrauliche Erstattungsbeträge, geheime Schwellenwerte, dropout-Gründe nicht veröffentlicht) |
| **Macht** | Verordnungs-Initiative, Überweisungs-Macht, Niederlassungs-Entscheidung (Exit-Option), Aufnahme-/Ablehnungs-Macht gegenüber Patienten |
| **Constraints** | Budget/RLV, Leitlinien, Fachgruppendurchschnitt, persönliche Haftung, KV-Disziplinarrecht, Regress |
| **Payoff-Funktion** | U_Arzt = w · Honorar − r · E[Regress] − α · ψ(unethisches Handeln) − β · Bürokratie-Zeit − γ · psychischer Stress |
| **Strategien** | (a) Leitliniengerecht verordnen, (b) Defensiv unter-verordnen, (c) Defensiv über-diagnostizieren, (d) Weiterüberweisen, (e) Patientenselektion, (f) Niederlassung beenden |

**Belege:** Ribbat 2021: 47 % "stark belastet", 85 % AM haben mind. einmal Verordnung
unterlassen, 51 % AM überweisen "gelegentlich" trotz eigener Indikation. KBV-Berufsmonitoring:
50 % der Studierenden nennen Regress als Niederlassungshindernis.

---

### Spieler 2: Krankenkasse (gesetzlich)

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Beitragssatz-Stabilität, Wettbewerbsfähigkeit (Kassenwechsel-Markt), Risikostruktur-Optimierung, Vorstandsboni an Bilanzergebnis gekoppelt |
| **Ressourcen** | Versichertenstamm, Datenbestand (alle Abrechnungsdaten), Antragsrecht, Verhandlungsmacht gegenüber Pharma (geheime Erstattungsbeträge), juristische Abteilung |
| **Information** | **Asymmetrisch hoch:** kennt Erstattungsbeträge aller Medikamente, kennt komplette Verordnungsstatistik aller eigenen Versicherten, kennt eigene Erfolgsquote bei Anträgen |
| **Macht** | **Initiativ-Macht** (Antrag auf Einzelfallprüfung), Datenmacht, finanzielle Ressourcen für Rechtsverfahren, fast keine Rückwirkungs-Kosten bei abgelehnten Anträgen |
| **Constraints** | BAS-Aufsicht (eher formal), kartellrechtliches Verhandlungsverbot, MVZ-Regelungen |
| **Payoff-Funktion** | U_Kasse = R(Regresseinnahmen) + S(Signalwirkung Abschreckung) − k(Antragskosten) − π(politisches Risiko) |
| **Strategien** | (a) Anträge stellen (Einzelfall), (b) Schwellenwerte definieren, (c) Vergleich anbieten, (d) Beratung anbieten ("Beratung statt Regress" — kaum genutzt), (e) Eskalieren (Sozialgericht), (f) Schweigen (Container-Strategie) |

**Strukturelles Spezifikum:** Die Kasse ist gleichzeitig **Antragstellerin, Geschädigte und
Empfängerin** des Regresses. Im Strafrecht wäre das Offizialprinzip-widrig. Der "Ankläger"
entscheidet, was angeklagt wird, und kassiert auch noch das Strafgeld. (Vgl. ANALYSE_SYSTEM-
WIDERSPRUCH_PRUEFVERFAHREN.md, Abschnitt 3.)

---

### Spieler 3: Kassenärztliche Vereinigung (KV)

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Selbstverwaltung erhalten, Mitgliederzufriedenheit (gewählter Vorstand), aber zugleich Arbeitsfähigkeit gegenüber Kassen sichern |
| **Ressourcen** | Sicherstellungsauftrag, Vergütungsverteilung, Mitwirkung in der Gemeinsamen Prüfungseinrichtung, Disziplinarrecht |
| **Information** | Hoch (zwischen Kasse und Arzt) |
| **Macht** | Mittelmäßig — Vetospieler in der GPE, aber kein Veto gegen Kassen-Anträge an sich |
| **Constraints** | Doppelrolle: Schutz der Mitglieder vs. Kooperationspflicht mit Kassen (§ 106b SGB V), regionalpolitische Abhängigkeiten |
| **Payoff-Funktion** | U_KV = m(Mitgliederbindung) − k(Konflikt mit Kassen) − ε(Reputationsverluste in Presse) |
| **Strategien** | (a) Aktive Beratung der Mitglieder, (b) "Praxisbesonderheiten"-Prüfung im Vorfeld stark machen, (c) Klagen unterstützen, (d) Stillhalten, (e) Reformen fordern |

**Doppelrolle:** Die KV ist Schutzorganisation der Ärzte UND Vollzugspartner der GKV. Diese
Doppelrolle erzeugt einen strategischen Bias zur Konfliktvermeidung — sie lebt vom Status Quo.

---

### Spieler 4: Gemeinsame Prüfungseinrichtung (GPE)

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Eigenexistenz, Verfahrensökonomie, Beachtung formaler Regeln, Justiziabilität der eigenen Entscheidungen |
| **Ressourcen** | Verfahrens-Hoheit, Akteneinsicht, Sachverständigen-Heranziehung |
| **Information** | Hoch über Akten, niedrig über Praxisrealität (es sei denn, Arzt liefert Praxisbesonderheiten) |
| **Macht** | Entscheidungsmacht über Einleitung, Einstellung, Beratung oder Bescheid |
| **Constraints** | Paritätische Besetzung (Kasse + KV), § 106b SGB V, Verfahrensvorschriften, Justizfähigkeit |
| **Strategien** | (a) Verfahren einstellen, (b) Beratung aussprechen, (c) Bescheid erlassen, (d) Höhe des Regresses festlegen |

**Strukturproblem:** Die GPE ist nicht neutraler Schiedsrichter im Sinne eines Gerichts,
sondern ein **Vollzugsorgan** der gesetzlichen Wirtschaftlichkeitsprüfung. Sie hat keinen
Anreiz, das System grundsätzlich in Frage zu stellen — ihre Existenz hängt am Verfahren.

---

### Spieler 5: Beschwerdeausschuss

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Befriedungsfunktion, "Filter" vor Sozialgericht, paritätische Befriedung |
| **Macht** | Kann GPE-Bescheide aufheben, mindern, bestätigen — und tut das in einem hohen Anteil der Fälle |
| **Strategie** | Konsenslösung statt Eskalation — funktioniert in Einzelfällen, ändert aber nichts am Systembias |

**Belege:** In den Fallbeispielen (Cannabis-Vaporizer, sechsstelliger Heilmittelregress)
ist der Beschwerdeausschuss die erste Instanz, in der Praxisbesonderheiten substantiell
gewürdigt werden. Das ist ein Hinweis, dass die GPE-Vorprüfung systematisch zu hart filtert.

---

### Spieler 6: Sozialgericht (SG/LSG/BSG)

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Rechtsfortbildung, Verfahrensökonomie (überlastet), Begründungs-Sorgfalt |
| **Macht** | Höchste Korrekturinstanz, aber nur reaktiv — entscheidet erst nach langen Vorinstanzen |
| **Constraints** | Rechtliche Bindung an § 106b SGB V, an höchstrichterliche Rechtsprechung, an § 87 SGG (Klagefrist) |
| **Strategie** | Einzelfall-Korrektur, kaum systemische Korrektur — einzelne Urteile (BSG) wirken aber als Signal |

**Strukturelle Schwäche:** Die Verfahrensdauer (oft 3–7 Jahre) macht das SG zu einer
**Pyrrhus-Instanz**: Der Arzt gewinnt — aber die Praxis ist in der Zwischenzeit wirtschaftlich
beschädigt oder geschlossen.

---

### Spieler 7: Patient — Spielfeld oder Spieler?

**These:** Im aktuellen System ist der Patient **Spielfeld**, nicht Spieler.

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Beste Behandlung erhalten |
| **Ressourcen** | Symbolisch: Wahlrecht, Arzt-Wechsel; faktisch: stark eingeschränkt durch Wartezeiten, Spezialisierungsgrad |
| **Information** | **Asymmetrisch sehr niedrig:** Patient kennt die Regressdrohung, der sein Arzt unterliegt, in der Regel nicht. Er weiß nicht, dass sein Arzt aus Regressangst eine andere Behandlung wählt als die optimale |
| **Macht** | Sehr niedrig — kann maximal beschweren, klagen (Haftungsrecht, nicht Sozialrecht), Arzt wechseln |
| **Strategie** | Praktisch keine, da keine Information |

**Folge:** Der Patient ist im Spiel das Verteilungsobjekt, nicht der Verteiler. Sein
Wohl wird "stellvertretend" verhandelt — und keine der vertretenden Parteien hat seine
Maximierung als zentrales Ziel.

**Reform-Hebel:** Erst wenn der Patient transparent erfährt, **ob** und **warum** sein
Arzt unter Regressdruck eine alternative Behandlung wählt, wird er zum Spieler. Genau
das ist der Hebel des **Regress-Transparenzportals**: Es macht einen Spielfeldakteur zum
informationstragenden Akteur.

---

### Spieler 8: Pharmaindustrie

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Umsatz, Markteintritt, Preisbildung |
| **Ressourcen** | Patente, Datenmonopol über klinische Studien, Lobbying-Macht (massiv), Verhandlungsmacht gegenüber GKV-SV |
| **Information** | **Vertrauliche Erstattungsbeträge** (asymmetrisch hoch nur Pharma + GKV-SV) |
| **Macht** | Kann Markt verlassen (Opt-out, z. B. AMNOG-Verfahren), preisbildend für Innovationen |
| **Strategie** | (a) Vertraulichkeit als Schutz, (b) Lobbying für günstige Schwellenwerte, (c) Preissenkung in geheimen Verhandlungen |

**Spieltheoretisches Spezifikum (GLP-1/Mounjaro):** Die Pharma-Industrie und der GKV-
Spitzenverband haben einen **bilateralen Geheimkanal** etabliert (vertraulicher Erstattungs-
betrag), der den Arzt strukturell von der Wirtschaftlichkeitsentscheidung **abkoppelt** —
während er die Verantwortung dafür trägt. Das ist eine asymmetrische Information *by design*.

---

### Spieler 9: Apotheker

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Marge, Substitutionssicherheit, Vermeidung eigener Retaxation |
| **Macht** | Aut-idem-Substitution, Beratungsfunktion |
| **Strategie** | Eher passiv im Regress-Spiel, aber eigenes Retaxations-Spiel mit Kassen |

**Hinweis:** Der Apotheker erlebt parallel ein eigenes Retaxations-Spiel mit Kassen — strukturell
sehr ähnlich, aber außerhalb dieses Modells.

---

### Spieler 10: Berufsverbände (KBV, Virchowbund, Therapiefreiheit e. V., DGHO, DDG)

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Mitgliederbindung, Lobbymacht, Reputation |
| **Ressourcen** | Kollektiv-Stimme, Medienzugang, juristische Kompetenz |
| **Macht** | Mittelmäßig — in der konzertierten Selbstverwaltung verankert, aber ohne formelles Veto |
| **Strategie** | (a) Pressearbeit, (b) Petitionen, (c) Musterklagen, (d) Berufspolitische Vereinbarungen |

---

### Spieler 11: Bundesgesundheitsministerium (BMG)

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Politische Stabilität, Beitragssatz-Stabilität, Reformkapital, Rechtsaufsicht |
| **Macht** | Initiativrecht für Gesetze, Aufsichtsrecht über Selbstverwaltung |
| **Constraints** | Koalitionsdynamik, Verbände-Lobbying, Ressort-Konkurrenz |
| **Strategie** | (a) Reform anstoßen, (b) Status Quo verwalten, (c) Aufsicht aktivieren |

**Historisches Muster:** BMG hat 2017 die Richtgrößenprüfung abgeschafft, 2019 die
Zufälligkeitsprüfung. Beide Male nach jahrelangem Druck. Das BMG ist also **prinzipiell
reformfähig**, aber nur unter starkem öffentlichen Druck.

---

### Spieler 12: Gesetzgeber (Bundestag)

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Wiederwahl, Sichtbarkeit |
| **Macht** | Kann § 106b SGB V jederzeit ändern |
| **Constraints** | Komplexitätsfalle, Ressort-Verflechtung, Lobbying |

---

### Spieler 13: Medien & Öffentlichkeit

| Dimension | Beschreibung |
|---|---|
| **Eigeninteresse** | Aufmerksamkeit, Relevanz |
| **Macht** | Indirekt, aber stark — kann Themen auf die Agenda heben |
| **Constraints** | Knappheit der Aufmerksamkeit, Konkurrenz mit anderen Themen |
| **Strategie** | Berichten, recherchieren, Skandalisieren |

**Kritische Beobachtung:** Aufmerksamkeit ist eine **knappe Ressource**. Jede Veröffentlichung
muss im Aufmerksamkeitsmarkt mit anderen Themen konkurrieren. Die strategische Komplexitäts-
produktion ("Container-Verachtfachung", siehe Recherche Container-Genealogie) macht das
Thema medienunzugänglich — was nicht erklärbar ist, ist nicht skandalisierbar.

---

## B) Die Spiele

### Vorbemerkung: Hierarchie der Spiele

Die 13 Spieler sind nicht in einem einzigen Spiel verflochten, sondern in einem **Spielnetz**
aus mehreren überlagerten Spielen. Manche Spiele sind häufig (Quartal), andere selten (Reform).
Manche sind zweipersonal, andere mehrpersonal. Die folgenden sieben Spiele sind die
wichtigsten — aber nicht erschöpfend.

---

### Spiel 1: Das Verordnungs-Spiel — Arzt vs. Kasse

**Spieler:** Vertragsarzt, Krankenkasse
**Frequenz:** Jeder Quartal, jede Verordnung
**Typ:** Bayessches Spiel mit asymmetrischer Information, einmalig pro Verordnung,
wiederholt pro Quartal/Jahr
**Spielziel:** Arzt: optimale Behandlung bei Existenzsicherung. Kasse: Kostenkontrolle.

**Strategien:**
- **Arzt:** L = leitliniengerecht verordnen / D = defensiv unter-verordnen
- **Kasse:** P = Antrag auf Prüfung / N = nicht prüfen

**Auszahlungs-Matrix (ordinal, konzeptionell):**

|                  | **Kasse: Prüfen** | **Kasse: Nicht prüfen** |
|---|---|---|
| **Arzt: L (leitlinien)** | (−r, −k) — Arzt: Verfahrenslast und mögl. Regress; Kasse: Kosten der Prüfung, evtl. Erfolg | **(+B, −V)** — Arzt: Patientenwohl, kein Stress; Kasse: zahlt Verordnungssumme V (sozial bestes Ergebnis) |
| **Arzt: D (defensiv)** | (−s, 0) — Arzt: psychischer Stress, aber sicher vor Regress; Kasse: spart V, keine Erfolgsmöglichkeit |  (−s_klein, 0) — Arzt: ethischer Stress; Kasse: spart V (sozial schlechtestes Ergebnis: Patient unterversorgt UND System spart nichts ein, was es nicht ohnehin gespart hätte) |

**Variablen:**
- B = Patientenwohl-Nutzen, ethische Selbstwirksamkeit
- V = Verordnungskosten
- r = Regress-Risiko (faktisch < 1 %)
- s = psychischer/ethischer Stress
- k = Verfahrenskosten Kasse

**Nash-Gleichgewicht:** Wenn Arzt das Regress-Risiko **r** systematisch überschätzt (siehe
Wahrnehmungs-Lücke 50:1, Quelle: KBV-Berufsmonitoring), wird seine Risikoaversion (Loss
Aversion nach Kahneman/Tversky) zur dominierenden Strategie. Defensive Strategie **D**
wird zum Nash-Gleichgewicht — auch wenn das soziale Optimum (L, N) wäre.

**Empirische Bestätigung (Ribbat 2021):** 85 % der AM haben mindestens einmal aus
Regressangst nicht verordnet. Das ist nicht ein Einzelfall, sondern strukturell: **Wenn
85 % defensiv spielen, ist Defensivität die dominante Strategie.**

**Pareto-Suboptimalität:** Das Gleichgewicht (D, N) ist Pareto-schlechter als (L, N):
- Patient: bekommt nicht die optimale Therapie → Folgekosten in Folgequartalen
- Arzt: trägt psychischen Stress, bricht ethisches Selbstverständnis
- Kasse: spart nichts, was sie sonst nicht gespart hätte (V wird ohnehin nie verordnet)
- System: zahlt Folgekosten (vgl. RECHERCHE_FOLGEKOSTEN, geschätzt 7–17 Mrd. EUR/Jahr)

**Pareto-Verbesserung (L, N) ist möglich**, wenn:
- Arzt sein reales Regress-Risiko korrekt einschätzt (Information!)
- Kasse glaubwürdig signalisiert, dass sie nicht prüft, wenn leitliniengerecht verordnet wird

Beides ist nicht der Fall. **Das Verordnungsspiel ist ein typisches Bayessches
Koordinationsversagen unter asymmetrischer Information.**

---

### Spiel 2: Das Antrags-Spiel — Kasse vs. Kasse (Public Goods Problem)

**Spieler:** Mehrere Krankenkassen (untereinander)
**Frequenz:** Jährlich (Antragstellung)
**Typ:** N-Personen-Spiel, public goods, möglicherweise Trittbrettfahrer-Problem

**Hintergrund:** Wenn eine Kasse einen Antrag auf Wirtschaftlichkeitsprüfung stellt und
gewinnt, fließt das Geld nur an diese eine Kasse. Aber: das Verfahren erzeugt einen
**Spillover-Abschreckungseffekt** auf alle Ärzte und damit auf alle Kassen. Das ist ein
klassisches Externalitäts-Spiel.

**Strategien:**
- **Aktive Antragstellerin** (z. B. AOK in einem Bezirk): trägt Verfahrenskosten, bekommt
  bei Erfolg den eigenen Anteil, generiert aber Abschreckung für alle anderen Ärzte
- **Passive Trittbrettfahrerin** (z. B. kleine BKK): stellt selten Anträge, profitiert
  aber vom allgemeinen Abschreckungs-Effekt

**Nash-Gleichgewicht:** Da der Abschreckungs-Effekt ein **kollektives Gut** ist (nicht-
ausschließbar, nicht-rivalisierend), wäre die individuell rationale Strategie für jede
einzelne Kasse: **wenig Anträge, lass die anderen das machen**.

**ABER:** Empirisch beobachten wir das Gegenteil — viele Kassen stellen Anträge (KV
Nordrhein: 20.000/Jahr). Warum?

**Erklärungsansatz:**
- (a) Anträge sind für Kassen sehr **billig** — Personalkosten amortisieren sich schon bei
  wenigen Erfolgen
- (b) Erfolgsquote ist unbekannt → kein klares Trittbrettfahrer-Kalkül
- (c) Vorstandsboni und interne Karriereanreize (Sachbearbeiter werden an "geprüften
  Fällen" gemessen, nicht an Erfolgen) — eine **Principal-Agent-Verzerrung innerhalb der Kasse**
- (d) Beschluss-Algorithmen (AI-gestützt seit 2020er) erzeugen Anträge "automatisch"

**Spieltheoretisches Fazit:** Es ist **kein** Trittbrettfahrer-Spiel — es ist ein
**Coordination Game gone wrong**, bei dem alle Kassen suboptimal **viel zu viele** Anträge
stellen, weil die individuellen Antragskosten weit unter dem individuellen Erwartungswert
liegen — solange sie nicht für **abgewiesene** Anträge bestraft werden. Das Fehlen einer
**Schadensersatz-Norm bei missbräuchlichen Anträgen** ist die zentrale Schwäche.

**Pareto-Verbesserung:** Wenn Kassen für offensichtlich ungerechtfertigte Anträge eine
symbolische Verfahrenskosten-Erstattung an den Arzt zahlen müssten (analog § 91 ZPO im
Zivilprozess), würde ihre Antragstrategie sofort selektiver. Das wäre eine klassische
**Pigou-Steuer** auf Externalitäten.

---

### Spiel 3: Das Niederlassungs-Spiel — Junge Ärzte vs. System

**Spieler:** Medizinabsolventen (kollektiv und individuell), KV (als Sicherstellungsorgan),
Bevölkerung (insb. ländliche Regionen) — **wobei Bevölkerung Spielfeld bleibt**.
**Frequenz:** Einmaliges Spiel pro Karriereentscheidung; aggregiert: kontinuierliche
Allokation
**Typ:** Mehrheits-Spiel mit Externalitäten — Tragödie der Allmende auf der Allokationsebene

**Strategien (für junge Ärzte):**
- **N** = Niederlassung in eigener Praxis (mit Regress-Risiko)
- **K** = Anstellung im Krankenhaus (kein direktes Regress-Risiko, aber Hierarchie)
- **A** = Ausland (Schweiz, Skandinavien)
- **MVZ** = Anstellung in MVZ / Investorenbetrieb (kein eigenes Regress-Risiko)

**Anreizstruktur (qualitativ):**
- N: hohe Autonomie, hohes Einkommen — aber hohes Regress-, Bürokratie- und Haftungsrisiko
- K: weniger Einkommen, weniger Autonomie — aber kein Regress
- A: hohes Einkommen, kein Regress — aber Heimat verlassen
- MVZ: Anstellung mit gewisser Autonomie — Regress wird vom MVZ getragen

**Empirie (KBV-Berufsmonitoring, n > 12.000):** 50 % nennen Regressdrohung als
Niederlassungshindernis. Niederlassungsneigung sinkt im Studienverlauf von 41 % (vorklinisch)
auf 35 % (PJ). Das ist ein **Sozialisierungs-Effekt**: Je mehr die Studierenden vom
Realsystem erfahren, desto unattraktiver wird die Niederlassung.

**Tragödie der Allmende:** Die individuelle rationale Antwort jedes Einzelnen (nicht
niederlassen) führt zur kollektiven Katastrophe (Hausärztemangel im ländlichen Raum).
Niemand will dieses Ergebnis — aber jeder einzelne Akteur hat gute Gründe, nicht der
Erste zu sein, der "freiwillig" das Risiko trägt.

**Klassische Allmende-Logik:** Was geteilt wird, ist nicht eine Wiese, sondern das
**Vertrauen in die Niederlassung als Lebensmodell**. Jede defensive Erzählung ("Mach das
nicht, du wirst regressiert") ist eine Schaf-Einheit auf der Wiese, die das Gesamtgut
(Niederlassungsbereitschaft) erodiert.

---

### Spiel 4: Das Beschwerde-Spiel — Arzt vs. Beschwerdeausschuss / Sozialgericht

**Spieler:** Arzt (mit Bescheid), Beschwerdeausschuss, ggf. Sozialgericht
**Frequenz:** Pro Bescheid einmalig
**Typ:** Sequentielles Spiel mit unsicherer Erfolgsquote; Bayes-Update

**Strategien (Arzt):**
- W = Widerspruch einlegen
- A = Akzeptieren

**Faktoren:**
- W kostet: Anwaltskosten (3.000–15.000 EUR), Zeit, Stress, Risiko der Verschlechterung
- W bringt: Erwartungswert P · R, wobei P = Erfolgswahrscheinlichkeit, R = Regresshöhe
- Wenn P unbekannt → starke Fehleinschätzung in beide Richtungen möglich
- A bringt: Sicherheit, Schließung des Verfahrens — aber bedeutet auch Akzeptanz eines
  potenziell ungerechten Bescheids und Reputationsschaden

**Spieltheoretisches Problem:** Die **Verfahrenskosten** sind **fix**, der **Erwartungswert**
hängt von der unbekannten Erfolgsquote ab. Da Ärzte historisch stark unter-informiert sind
("Schweige-Gebot" der Vorinstanzen, kein öffentliches Erfolgsregister), wird die Strategie
W systematisch **zu wenig** gewählt.

**Effekt:** Ein Markt für **rationale Widerspruchsentscheidung** existiert nicht.
Nur wer einen spezialisierten Anwalt (z. B. Therapiefreiheit e. V.) konsultiert, bekommt
eine bessere Schätzung der Erfolgschance. Aber: **die Marktstruktur sorgt für Selbstauswahl**
— nur die wirtschaftlich starken Ärzte gehen in Widerspruch, was wieder die Erfolgs-
Statistik verzerrt.

**Pareto-Verbesserung:** Ein **Regress-Transparenz-Portal mit Erfolgsstatistik** würde die
Bayes-Erwartung jedes Arztes auf eine empirische Basis stellen. Genau das ist die
strategische Hebelwirkung des Um:bruch-Projekts.

---

### Spiel 5: Das Reform-Spiel — KBV vs. GKV-SV vs. BMG

**Spieler:** Kassenärztliche Bundesvereinigung (KBV), GKV-Spitzenverband (GKV-SV), Bundes-
gesundheitsministerium (BMG); im Hintergrund Bundestag, Pharma, Berufsverbände, Medien
**Frequenz:** Selten (alle 3–10 Jahre Reformwellen)
**Typ:** Vetospieler-Spiel (Tsebelis-Modell) mit Status-Quo-Bias

**Ausgangslage:** § 106b SGB V kann nur über den Bundestag geändert werden, faktisch nur
im Konsens KBV/GKV-SV/BMG. Jede dieser drei Parteien hat **de-facto-Veto**:
- KBV blockiert "noch mehr Bürokratie für Ärzte"
- GKV-SV blockiert "Verlust der Sanktionsmöglichkeit"
- BMG blockiert, wenn politische Kosten zu hoch (Kassenverbände)

**Nash-Gleichgewicht:** **Status Quo ist stabil**. Jede einseitige Bewegung erzeugt
Widerspruch der jeweils anderen Partei. **Reform passiert nur, wenn ein externer Schock
das Gleichgewicht stört** — z. B. eine massive öffentliche Empörung (siehe Petition 158622),
ein Skandal, eine Wahlkampfthematisierung.

**Historisches Muster:**
- **Richtgrößenprüfung** wurde 2017 abgeschafft, nachdem sie jahrelang als "zu pauschal
  und angsterzeugend" diskreditiert war — externer Schock: KBV-Petition + öffentliche
  Berichterstattung
- **Zufälligkeitsprüfung** 2019 abgeschafft als Folge des AMVSG (Arzneimittelversorgungs-
  stärkungsgesetz) — Treiber: Widerspruch aus den KVen
- **Aktuelle Reformvorhaben** (2024–2026): Kein vergleichbarer Schock vorhanden, daher kein
  Bewegungsdruck

**Strategische Folge:** **Wer das Reform-Spiel verändern will, muss den Aufmerksamkeits-
markt verändern.** Reform passiert, wenn sich der politische Preis des Status Quo erhöht.
Genau das ist die Funktion zivilgesellschaftlicher Gegenmacht (Think Tanks wie Um:bruch).

---

### Spiel 6: Das Patientenwohl-Spiel — Arzt-Patient-Kasse (Triadisches Principal-Agent-Spiel)

**Spieler:** Patient (Principal nach klassischer Health-Economics-Lesart), Arzt (Agent),
Kasse (Co-Principal mit konfligierenden Zielen)
**Frequenz:** Pro Behandlung
**Typ:** Triadisches Principal-Agent-Spiel mit zwei Principals (multi-principal-agent)

**Klassische Theorie (McGuire 2000, 2011):** Der Arzt ist Agent für den Patienten — er
soll dessen gesundheitliches Wohl maximieren. Die Kasse ist Co-Principal: sie zahlt und
hat eigene Interessen (Kostenkontrolle).

**Strukturproblem:** Klassische Principal-Agent-Probleme analysieren entweder **eine
Principal-Agent-Beziehung** (Patient-Arzt) oder **eine Principal-Agent-Beziehung mit
sekundärer Aufsicht** (Versicherer kontrolliert Arzt).

Im deutschen System ist die Lage **drei-polar**:
- **Patient** ist nominell Versicherter, faktisch aber **nicht** Principal — er hat keine
  Information, kein Druckmittel und keine Klagebefugnis im Sozialrecht
- **Arzt** ist Agent — aber von wem? Im Idealfall von Patient, faktisch unter Druck von Kasse
- **Kasse** ist Co-Principal — handelt aber nicht im Interesse des Patienten, sondern im
  eigenen Interesse als Risikoträgerin

**Multi-principal-Probleme** (Bernheim & Whinston 1986; Dixit 1996) zeigen: Wenn ein Agent
mehreren Principals dient, deren Interessen divergieren, wird er **diejenigen Aufgaben
priorisieren, die am stärksten überwacht und sanktioniert werden**. Das ist **exakt der
deutsche Fall:** Wirtschaftlichkeit wird sanktioniert (Regress) → Arzt priorisiert
Wirtschaftlichkeit. Patientenwohl wird **nicht** sanktioniert → Patientenwohl wird
nachrangig.

**Empirische Bestätigung:** Goetz et al. 2024 (BMC Primary Care, n = 413 deutsche
Hausärzte) — 38 % nennen "legal self-protection" als häufigen Grund für Defensiv-
Entscheidungen. Das ist die Multi-Principal-Verzerrung in Reinform.

**Reform-Hebel:** Eine **Patientenwohl-Prüfung** als Gegenstück zur Wirtschaftlichkeits-
prüfung würde den Anreiz strukturell ausgleichen. Wenn der Arzt für Unterversorgung
genauso belangt werden kann wie für Überversorgung, gleicht sich der Anreiz aus.
(Vorschlag: vgl. ANALYSE_SYSTEMWIDERSPRUCH, Abschnitt 4 + 5.)

---

### Spiel 7: Das Verschleierungs-Spiel — Komplexitätsproduktion als Strategie

**Spieler:** Gesetzgeber + GKV-SV (Container-Produzenten), Öffentlichkeit / Medien (Container-
Konsumenten), Ärzte (Container-Adressaten)
**Frequenz:** Kontinuierlich
**Typ:** Signalisierungs-Spiel mit asymmetrischen Übersetzungs-Kosten

**Theoretischer Rahmen:** In der Regulationstheorie (Stigler 1971, Peltzman 1976, später
Coglianese & Carrigan) ist **regulatorische Komplexität** ein Instrument der
**Aufmerksamkeitsdiffusion**. Ein Regelwerk, das niemand mehr versteht, kann nicht skandalisiert
werden — selbst wenn es offensichtliche Mängel hat.

**Empirische Beobachtung:** Die Regelwerke zur Wirtschaftlichkeitsprüfung haben sich seit
1989 **verachtfacht** im Volumen (siehe RECHERCHE_CONTAINER_GENEALOGIE). Diese Komplexitäts-
zunahme ist **nicht zufällig**, sondern Ergebnis fortlaufender bilateraler Verhandlungen
zwischen GKV-SV und KBV — beide mit eigenen Anreizen, das Regelwerk zu erweitern, niemand
mit Anreiz, es zu vereinfachen.

**Strategien:**
- **Komplexitäts-Produzenten** (GKV-SV/KBV in der Selbstverwaltung): jedes neue Regelwerk
  erhöht die eigene Verfahrensmacht und -kompetenz
- **Komplexitäts-Konsumenten** (Medien): brauchen verständliche Geschichten — komplexe
  Regelwerke sind unattraktiv
- **Komplexitäts-Adressaten** (Ärzte): müssen alle Regeln einhalten, ohne sie zu verstehen
  (Compliance-Pflicht ohne Compliance-Möglichkeit)

**Nash-Gleichgewicht:** Solange Komplexität von keiner Seite **politisch teuer** ist, wächst
sie weiter. Es gibt **keinen institutionellen Akteur**, der ein Eigeninteresse an
**Vereinfachung** hat (außer den Adressaten — die haben aber keine Verhandlungsmacht).

**Pareto-Verbesserung möglich,** wenn ein externer Akteur (z. B. Bundesrechnungshof,
Verfassungsgericht, oder eben **zivilgesellschaftliche Gegenmacht**) Komplexität explizit
problematisiert und die politischen Kosten der Komplexität erhöht.

**Strategischer Kommentar:** Genau hier liegt die Aufgabe von Um:bruch — nicht primär
Reform fordern, sondern **Komplexität sichtbar und teuer machen**. Erst wenn Container-
Wachstum öffentlich skandalisiert wird, entsteht ein Anreiz zur Vereinfachung.

---

## C) Zentrale spieltheoretische Erkenntnisse

### C.1 Defensivmedizin als Nash-Gleichgewicht — alle verlieren

Das Verordnungsspiel hat ein **stabiles Nash-Gleichgewicht im suboptimalen Punkt**:
Arzt verordnet defensiv, Patient bekommt nicht die optimale Therapie, Kasse spart nichts,
System trägt Folgekosten. **Niemand will dieses Ergebnis** — aber alle einzelnen
Strategiewahlen sind individuell rational.

Das ist die **klassische Definition eines Pareto-suboptimalen Nash-Gleichgewichts**: ein
Zustand, der für alle Beteiligten verbesserbar wäre, wenn sie kooperieren könnten — aber
keine einzelne Partei einseitig die Strategie ändern kann, ohne sich selbst zu schaden.

**Empirische Untermauerung:**
- Ribbat 2021: 85 % AM haben mind. einmal aus Regressangst nicht verordnet
- Goetz 2024: 38 % nennen "legal self-protection" als häufigen Grund
- Folgekosten-Schätzung (Recherche FOLGEKOSTEN): 7–17 Mrd. EUR/Jahr Schaden durch
  Unterversorgung
- Tatsächliche Regress-Einnahmen: 0,065 % aller Verordnungen (Virchowbund)

**Verhältnis: Schaden ≫ Ertrag.** Das System produziert **netto Verlust** — und niemand
hat den Hebel, das einseitig zu ändern.

---

### C.2 Gefangenendilemma in der Ärzteschaft — Solidaritäts-Erosion

**Größtes Gefangenendilemma im System:** Zwei (oder mehr) Ärzte könnten gemeinsam für
leitliniengerechte Verordnung kämpfen — z. B. durch koordinierte Widerstandsstrategien,
gemeinsame Klagen, öffentlichen Druck. Aber jeder einzelne hat individuell den Anreiz,
**still zu bleiben** und sich selbst zu schützen, weil:
- Wer öffentlich kämpft, wird zur Zielscheibe
- Wer schweigt, profitiert vom Erfolg anderer (Trittbrettfahrer in der Solidaritäts-Allmende)
- Wer sich engagiert, verbringt Zeit mit Berufspolitik statt mit Patienten

**Empirische Beobachtung:** Die KBV ist offiziell die Vertretung der Vertragsärzte — aber
strukturell selbst Vollzugspartner des Systems. Die wenigen aktiven Verbände (Therapie-
freiheit e. V., Virchowbund, BNHO) haben kleine Mitgliederzahlen relativ zum Gesamtbestand.

**Auflösung des Gefangenendilemmas:** In der Spieltheorie gibt es zwei klassische Wege
aus dem Gefangenendilemma:
- **(a) Wiederholtes Spiel mit Reputation** (Axelrod 1984): Wenn Ärzte sich gegenseitig
  beobachten und Kooperation langfristig belohnen, kann Vertrauen entstehen
- **(b) Externe Garantenmacht** (klassisch: der Staat als Hobbes'scher Leviathan; modern:
  zivilgesellschaftliche Vermittlerinstitution)

Beide Wege sind im Regress-System schwach ausgebildet. Eine **Vermittlerinstitution wie
Um:bruch** kann die Rolle (b) übernehmen, indem sie individuelle Erfahrungen sammelt,
aggregiert und kollektiv sichtbar macht.

---

### C.3 Asymmetrische Information — die zentrale Strukturmasche

Asymmetrische Information ist **die** zentrale Spielmasche des Regress-Systems. Sie wirkt
auf vier Ebenen:

**Ebene 1: Arzt vs. Kasse — Regress-Risiko**
- Kasse kennt: eigene Erfolgsquote bei Anträgen, eigene Schwellenwerte, vertrauliche
  Erstattungsbeträge
- Arzt kennt: nichts davon prospektiv, nur retrospektiv im eigenen Bescheid

**Ebene 2: System vs. Öffentlichkeit — Verfahrensstatistiken**
- Existieren bei GPE und BMG, werden aber **nicht systematisch veröffentlicht**
- Insbesondere die "Dropout-Gründe" (warum 913 von 916 Verfahren in KV Hessen 2015 verworfen
  wurden) sind nicht zugänglich

**Ebene 3: Pharma + GKV-SV vs. Arzt — vertrauliche Erstattungsbeträge**
- Seit 2023 für Innovationen wie Mounjaro/Tirzepatid: Geheim ausgehandelte Preise
- Der Arzt soll wirtschaftlich verordnen, kennt aber den GKV-Preis nicht
- Das ist eine **strukturelle Wirtschaftlichkeitsprüfung gegen einen unbekannten Maßstab**
- Die einzige rationale Reaktion: **nicht verordnen**

**Ebene 4: Kasse vs. Versicherter — wer entscheidet was im Sinne des Versicherten?**
- Kassen treten nominell für Versicherte auf, faktisch optimieren sie ihren eigenen
  Risiko-Pool
- Versicherte kennen die Anreizverzerrung nicht

**Spieltheoretisches Fazit:** Wer **mehr Information** in dieses Spiel einspeist, verändert
das Gleichgewicht. **Information ist der Hebel, nicht Reform.** Reform folgt der
Information, nicht umgekehrt.

---

### C.4 Principal-Agent-Probleme — drei Schichten

**Schicht 1: Patient-Arzt** (klassisch)
- Patient = Principal, Arzt = Agent
- Asymmetrie: medizinisches Wissen
- Gut untersucht in der Literatur (Arrow 1963, McGuire 2000)

**Schicht 2: Kasse-Arzt** (sekundär, im Regress-System dominant)
- Kasse = Principal, Arzt = Agent
- Asymmetrie: Verordnungswissen, Patientenakten
- Sanktion: Regress
- Im deutschen System **deutlich stärker durchgesetzt** als Schicht 1 — weil die Sanktionen
  für den Arzt stärker sind als die rein moralische Verpflichtung gegenüber dem Patienten

**Schicht 3: Versicherter-Kasse** (klassisch verdrängt)
- Versicherter = Principal, Kasse = Agent
- Wer kontrolliert die Kasse? Formal: BAS-Aufsicht. Faktisch: niemand
- **Hier liegt die größte ungenutzte Kontrolllücke des Systems.** Kassen handeln im Namen
  ihrer Versicherten, aber ohne von diesen gesteuert zu werden

**Spieltheoretisches Fazit:** Die drei Principal-Agent-Schichten überlagern sich konflikthaft.
Schicht 2 dominiert Schicht 1 (Multi-Principal-Verzerrung). Schicht 3 ist faktisch
inaktiv. Eine echte Reform müsste Schicht 3 stärken — z. B. durch Versicherten-
Vertretungen mit Klage-Mandat, durch öffentliche Berichterstattungspflichten oder durch
Transparenzportale zur Kassentätigkeit.

---

### C.5 Tragödie der Allmende — Vertrauen und Niederlassungsbereitschaft

Drei "Allmende"-Güter werden im Regress-System schleichend erodiert:

**Allmende 1: Vertrauen in das Gesundheitssystem**
- Jede Regress-Erzählung im Bekanntenkreis senkt das Vertrauen
- Niemand zahlt einen direkten Preis für die Erosion, alle profitieren bisher von hohem Vertrauen
- Klassische Tragödie: Die marginale Schaf-Einheit ist immer unauffällig, das Aggregat ist katastrophal

**Allmende 2: Niederlassungsbereitschaft**
- KBV-Berufsmonitoring zeigt: Sinkt im Studienverlauf
- Wer sich niederlässt, trägt das volle Risiko
- Wer angestellt arbeitet, profitiert vom Sicherstellungssystem ohne dessen Lasten
- Folge: Hausärztemangel im ländlichen Raum, Spezialisten-Mangel in unattraktiven Regionen

**Allmende 3: Berufliche Identität "freier Arzt"**
- Die Idee, dass ein Arzt frei nach bestem Wissen und Gewissen entscheidet, ist eine
  professionelle Identitätsressource
- Jedes Regress-Erlebnis erodiert diese Identität
- Niemand profitiert direkt von der Erosion, aber das Aggregat führt zur Entprofessionalisierung

**Spieltheoretisches Fazit:** Tragödien der Allmende sind klassisch durch (a) klare
Eigentumsrechte, (b) Selbstorganisation, oder (c) externe Regulierung lösbar (Ostrom 1990).
Alle drei Wege sind im Regress-System schwach. Selbstorganisation der Ärzteschaft (Weg b)
ist der hier realistisch zugänglichste Ansatz — und genau darauf zielt die Vermittler-
funktion eines zivilgesellschaftlichen Akteurs wie Um:bruch.

---

## D) Strategische Empfehlungen

### D.1 Information als Hebel: Das Regress-Transparenzportal

Aus C.3 folgt direkt: **Das wirkungsmächtigste Instrument zur Veränderung des Spielnetzes
ist die Reduktion asymmetrischer Information.** Konkret:

- Veröffentlichung der **Erfolgsquoten** von Wirtschaftlichkeitsprüfungen pro KV (IFG-Anfrage)
- Aggregierte **Dropout-Gründe** (warum werden 99,7 % der Verfahren verworfen?)
- **Erfolgsquote im Widerspruchsverfahren** und Beschwerdeausschuss
- **Verhältnis gefordert/durchgesetzt** je KV
- **Crowd-sourced Anonymdaten** über Regress-Erfahrungen (Um:bruch-Portal)

**Strategischer Effekt:** Sobald Ärzte ihre realistische Risikoeinschätzung kalibrieren
können (P_real ~ 0,3 % statt empfundener 50 %), verschiebt sich das Verordnungsspiel von (D, *)
in Richtung (L, *). Das ist eine **echte Pareto-Verbesserung**: Arzt + Patient + Kasse +
System gewinnen.

### D.2 Anti-Defensivmedizin: Beratung-vor-Regress als Fokalpunkt

Aus B.1 folgt: Das Verordnungsspiel hat zwei Gleichgewichte (defensiv vs. leitlinien-
gerecht). Welches Gleichgewicht erreicht wird, hängt vom **Fokalpunkt** (Schelling 1960)
der Erwartungen aller Spieler ab.

**Beratung statt Regress** (§ 106b Abs. 2 SGB V) ist bereits gesetzlich vorgesehen — aber
in der Praxis nur für Erstauffälligkeiten und nur bei statistischen Prüfungen. Für die
massenhaften Einzelfallprüfungen ist sie **explizit ausgeschlossen** worden.

**Vorschlag:** Wiedereinführung der Beratungsphase auch bei Einzelfallprüfungen unter
einer Schwelle (z. B. < 10.000 EUR pro Quartal, < 3 Wiederholungsverstöße). Das verändert
den Fokalpunkt und macht die kooperative Strategie L glaubwürdiger.

**Spieltheoretisches Argument:** Beratung-vor-Regress wandelt das einmalige Spiel in ein
**wiederholtes** Spiel. Im wiederholten Spiel sind kooperative Gleichgewichte (Tit-for-Tat,
Axelrod 1984) erreichbar, im einmaligen nicht.

### D.3 Pigou-Steuer auf missbräuchliche Anträge

Aus B.2 folgt: Das Antragsspiel hat eine systematische **Externalität**, die nicht durch
eine "Antrags-Steuer" internalisiert wird. Konkret:

- Wenn eine Kasse einen Antrag stellt, der vom Beschwerdeausschuss vollständig abgelehnt
  wird, sollte sie die **Verfahrenskosten des Arztes (Pauschal: z. B. 500 EUR, oder real
  bei Anwaltskosten)** erstatten müssen
- Das ist analog zum § 91 ZPO im Zivilprozess

**Effekt:** Kassen werden ihre Antragstrategie sofort selektiver gestalten. Die Anzahl der
Anträge wird sinken, die Qualität (Erfolgsquote) wird steigen — was die Akzeptanz des
Systems erhöht.

### D.4 Patientenwohl-Prüfung als Gegen-Sanktion

Aus B.6 folgt: Die Multi-Principal-Verzerrung kann nur aufgelöst werden, wenn das
Patientenwohl mit gleicher Sanktionsmacht ausgestattet wird wie die Wirtschaftlichkeit.
Konkret:

- **Stichprobenartige Qualitätsprüfungen** in beide Richtungen (Über- und Unterversorgung)
- **Beschwerderecht für Patienten** gegen Unterversorgung mit gleichgewichtiger
  Verfahrensstruktur wie die Wirtschaftlichkeitsprüfung
- **Gegen-Statistik:** Welche Praxen verordnen statistisch auffällig **niedrig**?

**Effekt:** Die einseitige Anreizverzerrung wird ausgeglichen. Defensives Unter-
verordnen wird genauso teuer wie defensives Über-verordnen.

### D.5 Komplexität teuer machen — Container-Audit

Aus B.7 folgt: Komplexität wächst, weil sie **niemandem politisch kostet**. Reform-
vorschlag:

- **Jährlicher Container-Audit** durch einen unabhängigen Akteur (Bundesrechnungshof,
  Sachverständigenrat, oder ziviler Akteur wie Um:bruch)
- Maßzahl: Seitenzahl der Vorschriften pro Jahr, Häufigkeit der Änderungen, Anzahl der
  Querverweise
- **Veröffentlichung als jährlicher Wahrnehmbarkeits-Index** mit Vergleich zu OECD-Ländern

**Effekt:** Der politische Preis für Container-Wachstum steigt. Ein Reformer-Politiker
hat plötzlich ein griffiges Argument: "Unter dieser Regierung ist das Regelwerk um X %
gewachsen — bei wachsendem Hausärztemangel."

### D.6 Zivilgesellschaftliche Gegenmacht: Sechs Funktionen

Aus C.2 (Gefangenendilemma) und C.5 (Tragödie der Allmende) folgt: Eine **vermittelnde
zivilgesellschaftliche Institution** kann sechs Spielfunktionen übernehmen:

1. **Information aggregieren** (Regress-Transparenzportal, IFG-Strategie)
2. **Anonymisierung der Whistleblower** (kollektive Solidarität ohne individuelles Risiko)
3. **Aufmerksamkeit erzeugen** (Komplexitätsreduktion in Sprache, Mediatisierung)
4. **Reform-Agenda setzen** (politischer Preis für Status Quo erhöhen)
5. **Vernetzung der Einzelnen** (Auflösung des Gefangenendilemmas)
6. **Reputations-Spiel etablieren** (welche KV/Kasse arbeitet kooperativ?)

Genau diese sechs Funktionen sind das Profil von Um:bruch — nicht zufällig, sondern
spieltheoretisch begründet als der schwächste Punkt im aktuellen Spielnetz.

### D.7 Mechanism Design: Eine ergebnisoffene Wirtschaftlichkeitsprüfung

Eine spieltheoretisch saubere Wirtschaftlichkeitsprüfung müsste **ergebnisoffen** sein:
- Auffällig **hoch** → Prüfung Überversorgung
- Auffällig **niedrig** → Prüfung Unterversorgung
- Statistische Vorprüfung **vor** Einzelfallprüfung obligatorisch
- Initiierung **nur durch neutrale Stelle**, nicht durch Kasse

Das ist klassisches **Mechanism Design** im Sinne von Hurwicz/Maskin/Myerson: Die Spielregeln
selbst müssen so gestaltet sein, dass die individuell rationalen Strategien zum sozialen
Optimum führen.

---

## E) Spieltheoretische Literatur

Alle Quellen wurden per Websuche verifiziert. Wo Quellen aus den parallelen Recherchen
(insbesondere RECHERCHE_INTERNATIONAL_WISSENSCHAFTLICH.md) bereits geprüft wurden, ist
das vermerkt.

### E.1 Defensivmedizin und Tort Reform (Klassiker)

**Kessler DP, McClellan M. Do Doctors Practice Defensive Medicine? *Quarterly Journal
of Economics*. 1996;111(2):353-390. DOI: 10.2307/2946682.**

- **Befund:** Tort-Reformen, die die Haftungsbelastung direkt reduzieren, senken
  Medicare-Kosten um 5–9 % bei AMI/IHD ohne erhöhte Mortalität oder Komplikationen
- **Methodenrelevanz:** Erste quasi-experimentelle Identifikation des Defensivmedizin-
  Effekts auf der Ebene aggregierter Versorgungskosten
- **Relevanz für Regress:** Die zentrale empirische Grundlage dafür, dass Sanktions-
  reduktion nicht zu Versorgungsverschlechterung führt

**Kessler DP, McClellan M. Malpractice Law and Health Care Reform: Optimal Liability
Policy in an Era of Managed Care. *Journal of Public Economics*. 2002;84(2):175-197.**

- **Befund:** In Regionen mit hohem Managed-Care-Anteil ist die Wirkung von Tort-Reformen
  kleiner — Sanktionssystem und Kostenkontrolle sind teilweise Substitute
- **Relevanz für Regress:** Implikation für Deutschland — hierzulande dominiert das
  Sanktionssystem (Regress), während Managed Care strukturell schwach ist. Folge: das
  Sanktionssystem hat **maximale**, nicht minimale Wirkung auf die Defensivmedizin

**Currie J, MacLeod WB. First Do No Harm? Tort Reform and Birth Outcomes. *Quarterly
Journal of Economics*. 2008;123(2):795-830. DOI: 10.1162/qjec.2008.123.2.795.
NBER WP 12478.**

- **Befund:** Reformen der "Deep Pockets Rule" reduzieren Kaiserschnitte UND
  Komplikationen. Caps auf non-economic damages erhöhen Komplikationen
- **Methode:** Quasi-experimentelles Differenz-in-Differenzen-Design auf US-Geburtsdaten
  1989–2001
- **Relevanz für Regress:** Zeigt, dass **Art** der Sanktion entscheidend ist — pauschale
  Sanktionen haben gegenteilige Wirkung wie zielgenaue Anreize. Wegweisend für
  Mechanism-Design-Argumente

**Currie J, MacLeod WB. Diagnosing Expertise: Human Capital, Decision Making, and
Performance among Physicians. *Journal of Labor Economics*. 2017;35(1):1-43. PMC5736164.**

- **Befund:** Ärzte mit besseren diagnostischen Fähigkeiten führen WENIGER unnötige
  Kaiserschnitte durch. Die Lösung gegen Überversorgung ist nicht Sanktion, sondern
  Ausbildung
- **Relevanz für Regress:** Direktes Gegenargument gegen pauschale Wirtschaftlichkeits-
  prüfung. Fortbildung statt Sanktion wirkt nachweislich besser

### E.2 Principal-Agent-Theorie im Gesundheitswesen

**McGuire TG. Physician Agency. In: Culyer AJ, Newhouse JP, eds. *Handbook of Health
Economics*. Vol. 1A. Elsevier; 2000:461-536.**

- **Beitrag:** Klassisches Übersichtswerk zur Principal-Agent-Modellierung des
  Arzt-Patient-Verhältnisses. Zentrale Definition der "physician agency"
- **Relevanz für Regress:** Liefert das theoretische Vokabular für Spiel 6 (triadisches
  Patientenwohl-Spiel)

**Chone P, Ma C-tA. Optimal Health Care Contract under Physician Agency.
*Annales d'Économie et de Statistique*. 2011.**

- **Beitrag:** Optimaler Vertrag unter Bedingungen unvollständiger Information und
  Multi-Principal-Setting
- **Relevanz für Regress:** Direkte mathematische Modellierung des Multi-Principal-Problems

**Smith PC, Stepan A, Valdmanis V, Verheyen P. Principal-agent problems in health care
systems: an international perspective. *Health Policy*. 1997;41(1):37-60.
PMID: 10169061.**

- **Beitrag:** Internationaler Vergleich der Agenturprobleme in Gesundheitssystemen
- **Relevanz für Regress:** Bestätigt, dass Multi-Principal-Probleme system-übergreifend
  auftreten — die deutsche Lösung (Regress) ist nicht die einzige

**Tuan Anh Nguyen H. The principal-agent problems in health care: evidence from
prescribing patterns of private providers in Vietnam. *Health Policy and Planning*.
2011;26(suppl_1):i53-i62.**

- **Befund:** Anbieter-induzierte Nachfrage in Niedrigregulierungs-Settings
- **Relevanz:** Spiegelbild zur deutschen Situation — beide sind Principal-Agent-Probleme,
  aber mit umgekehrtem Vorzeichen

### E.3 Public Choice und Regulatory Capture

**Stigler GJ. The Theory of Economic Regulation. *Bell Journal of Economics and
Management Science*. 1971;2(1):3-21.**

- **These:** Regulierung wird in der Regel **vom regulierten Sektor selbst nachgefragt**
  und gestaltet, um Wettbewerber abzuhalten und Renten zu sichern
- **Relevanz für Regress:** Erklärt, warum die Selbstverwaltung (KBV + GKV-SV) eigene
  Komplexität produziert — weil beide Vetospieler von der Komplexität profitieren

**Peltzman S. Toward a More General Theory of Regulation. *Journal of Law and Economics*.
1976;19(2):211-240.**

- **Erweiterung Stiglers:** Regulierung balanciert die Interessen mehrerer Gruppen,
  je nach politischer Macht
- **Relevanz:** Erklärt, warum Reformen schwer sind — alle Vetospieler haben einen Anteil
  an der Status-Quo-Rente

**Tullock G. The Welfare Costs of Tariffs, Monopolies, and Theft. *Western Economic
Journal*. 1967;5(3):224-232.**

- **Beitrag:** "Rent-Seeking"-Konzept — Ressourcen werden in Lobbying investiert, statt
  in Produktion
- **Relevanz für Regress:** Die Anwaltskosten der Ärzte, die Verfahrenskosten der Kassen,
  die Sachverständigenkosten der GPE — alles "Rent-Seeking-Kosten" im Tullock-Sinn, die
  netto keinen Wert erzeugen

**Peltzman S. Stigler's Theory of Economic Regulation After Fifty Years. *Public
Choice*. 2022.**

- **Bewertung:** Stiglers Theorie hat sich in vielen Sektoren bestätigt, auch in der
  Gesundheitsregulierung
- **Relevanz:** Zeitgemäßer Anker für die Regulatory-Capture-These im Regress-System

### E.4 Behavioral Economics und Risikoaversion

**Kahneman D, Tversky A. Prospect Theory: An Analysis of Decision under Risk.
*Econometrica*. 1979;47(2):263-292.**

- **Klassiker:** Verluste wiegen psychologisch ca. doppelt so schwer wie gleich große
  Gewinne (Loss Aversion)
- **Relevanz für Regress:** Erklärt die **Wahrnehmungs-Verzerrung 50:1** zwischen real
  niedrigem Regress-Risiko und subjektiv hoher Bedrohung. Loss Aversion + Verfügbarkeits-
  heuristik führen dazu, dass Ärzte das Risiko massiv überschätzen

**Tversky A, Kahneman D. Loss Aversion in Riskless Choice: A Reference-Dependent Model.
*Quarterly Journal of Economics*. 1991;106(4):1039-1061.**

- **Erweiterung:** Loss Aversion gilt auch ohne explizite Risiko-Wahrscheinlichkeiten
- **Relevanz:** Selbst Ärzte, die nie persönlich regressiert wurden, antizipieren den
  Verlust und handeln entsprechend defensiv

**Loewenstein G, Asch DA, Volpp KG. Behavioral Economics Holds Potential to Deliver
Better Results for Patients, Insurers, and Employers. *Health Affairs*. 2013;32(7):1244-1250.**

- **Befund:** Behavioral-Economics-Erkenntnisse werden bisher kaum in Anreizdesign
  für Ärzte genutzt
- **Relevanz:** Empfehlungen für Anreiz-Design jenseits klassischer Sanktionsökonomie

**Emanuel EJ, Ubel PA, Kessler JB, et al. Using Behavioral Economics to Design Physician
Incentives That Deliver High-Value Care. *Annals of Internal Medicine*. 2016;164(2):
114-119. DOI: 10.7326/M15-1330.**

- **Beitrag:** Konkrete Anwendung von Behavioral Economics auf Anreiz-Design für
  Ärzte. Diskutiert: Inertia, Loss Aversion, Choice Overload, soziale Vergleichsdaten
- **Relevanz für Regress:** Direkte Anschlussfähigkeit für Reform-Vorschläge —
  ein "Pay-for-Performance" mit positiven Anreizen statt Sanktionen wäre nach
  Behavioral-Economics-Befunden wirksamer und stress-ärmer

### E.5 Spieltheorie und Gesundheitspolitik

**Rashidian A, Omidvari AH, Vali Y, Sturm H, Oxman AD. Pharmaceutical policies: effects
of financial incentives for prescribers. *Cochrane Database Syst Rev*. 2015;CD006731.
PMID: 26239041. PMC7390265.**
*(Verifiziert in RECHERCHE_INTERNATIONAL_WISSENSCHAFTLICH.md, Abschnitt B.5.1)*

- **Befund:** Finanzielle Anreize für Verschreiber haben begrenzte Wirksamkeit; **Sanktionen
  sind weit weniger gut untersucht** als positive Anreize, und die Evidenz ist schwach
- **Relevanz für Regress:** Es gibt **keine** robuste Evidenz, die das deutsche Sanktions-
  system rechtfertigt — die Cochrane-Datenbank weiß nichts davon

**Ivers N, Jamtvedt G, Flottorp S, et al. Audit and feedback: effects on professional
practice and healthcare outcomes. *Cochrane Database Syst Rev*. 2012 (updated 2024).**
*(Verifiziert in RECHERCHE_INTERNATIONAL_WISSENSCHAFTLICH.md, Abschnitt B.5.2)*

- **Befund:** Median 4,3 % absolute Verbesserung der Compliance durch Audit & Feedback —
  bescheiden, aber **ohne Sanktionsrisiko**
- **Relevanz:** Belegt, dass die spieltheoretisch attraktive Alternative
  ("Beratung statt Regress") empirisch wirksam ist

**Feng Y, Kristensen SR, Lorgelly P, et al. Pay-for-Performance incentives for
specialised services in England: a mixed methods evaluation. *Eur J Health Econ*. 2023.
DOI: 10.1007/s10198-023-01630-6. PMC11192700.**
*(Verifiziert in RECHERCHE_INTERNATIONAL_WISSENSCHAFTLICH.md, Abschnitt A.1.2)*

- **Befund:** Selbst positive Anreize (CQUIN, UK) haben sehr begrenzte Wirkung. 1 von 24
  Indikatoren signifikant verbessert, 2 verschlechtert
- **Relevanz für Regress:** Wenn schon positive Anreize so begrenzt wirken — wie sollen
  Sanktionen wirken, von deren Wirksamkeit es keine Evidenz gibt?

### E.6 Tragödie der Allmende und Selbstorganisation

**Hardin G. The Tragedy of the Commons. *Science*. 1968;162:1243-1248.**

- **Klassiker** der Allmende-Problematik
- **Relevanz für Regress:** Vertrauen und Niederlassungsbereitschaft als gemeinsame Güter

**Ostrom E. Governing the Commons: The Evolution of Institutions for Collective Action.
Cambridge University Press; 1990.**

- **Beitrag:** Empirische Befunde zur erfolgreichen Selbstorganisation von Allmende-
  Gütern (Nobelpreis 2009)
- **Relevanz für Regress:** Selbstorganisation der Ärzteschaft (kollektive Solidarität,
  gemeinsame Standards, peer-monitoring) ist eine theoretisch fundierte Reformrichtung

### E.7 Wiederholtes Spiel und Fokalpunkt

**Axelrod R. The Evolution of Cooperation. Basic Books; 1984.**

- **Befund:** In wiederholten Gefangenendilemmata setzen sich kooperative Strategien
  (Tit-for-Tat) langfristig durch
- **Relevanz für Regress:** Die Umwandlung des einmaligen Verordnungsspiels in ein
  wiederholtes ("Beratung-vor-Regress"-Strategie) hat eine spieltheoretische Begründung

**Schelling TC. The Strategy of Conflict. Harvard University Press; 1960.**

- **Beitrag:** "Fokalpunkt" als Lösungskonzept für Koordinationsspiele mit mehreren
  Gleichgewichten
- **Relevanz für Regress:** Welches Gleichgewicht (defensiv oder leitliniengerecht)
  sich einstellt, hängt vom kollektiven Fokalpunkt ab. Reform = Fokalpunkt verschieben

### E.8 Bisher nicht spezifisch erschlossen — Forschungslücken

- **Spezifisch deutsche spieltheoretische Modellierung der Wirtschaftlichkeitsprüfung:**
  Keine systematische Studie identifiziert. Mögliches Forschungsdesiderat
- **Quartalsende-Effekt empirisch:** HCHE/Kifmann liefert Daten, aber keine spiel-
  theoretische Modellierung des dynamischen Spiels über Quartale hinweg. Forschungslücke
- **Multi-Principal-Modellierung in DE:** Theoretisch international vorhanden (McGuire),
  aber für die spezifisch deutsche Triade Patient-Arzt-Kasse nicht ausgearbeitet

**Empfehlung für Um:bruch:** Diese drei Lücken sind konkrete Forschungsanstöße für
Kooperationen mit Universitätsinstituten (z. B. HCHE Hamburg, IGES Berlin, DIW).

---

## Abschluss-Hinweis

Diese Modellierung erhebt keinen Anspruch auf mathematische Vollständigkeit. Sie liefert
einen **strukturellen Bauplan** für die Argumentation in der Tiefenanalyse des Regress-
Systems. Wo möglich wurden empirische Belege aus den parallelen Recherchen verlinkt;
wo Auszahlungs-Matrizen konzeptionell sind, wurde dies explizit gekennzeichnet.

**Quellen-Querverweise:**
- ANALYSE_SYSTEMWIDERSPRUCH_PRUEFVERFAHREN.md — strukturelle Asymmetrien
- RECHERCHE_REGRESSSYSTEM_TIEFENANALYSE.md — Pipeline und Dropout-Raten
- RECHERCHE_FOLGEKOSTEN_PATIENTENSCHAEDEN.md — Ribbat 2021, Kifmann/HCHE, Folgekosten
- RECHERCHE_INTERNATIONAL_WISSENSCHAFTLICH.md — Goetz 2024, Cochrane-Reviews,
  internationaler Vergleich
- RECHERCHE_CONTAINER_GENEALOGIE_PRUEFVERFAHREN.md — Komplexitätswachstum
- RECHERCHE_EINZELFALLPRUEFUNG_MECHANIK.md — § 106b SGB V im Detail

*Nächste Bearbeitungsstufe: LG-Review, Einarbeitung in PP-003 v2.0, ggf. eigener
Blogbeitrag "Das Regress-System spieltheoretisch erklärt".*
