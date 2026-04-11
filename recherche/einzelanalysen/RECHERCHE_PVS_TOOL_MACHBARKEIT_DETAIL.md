# Recherche: Machbarkeit eines fokussierten Open-Source-Tools zur Regress-Prävention

> **Erstellt:** 2026-04-08
> **Bearbeiter:** Claude (CL) im Auftrag von LG / Um:bruch Think Tank
> **Auftrag:** Detail-Analyse der EXAKTEN technischen, regulatorischen und organisatorischen Schwierigkeiten. Kein Vollständiges PVS, sondern ein fokussiertes Plausibilitäts-Tool.
> **Methodik:** WebSearch, verifizierte Quellen, keine Vermutungen. Ergänzt bestehende Recherchen (RECHERCHE_PVS_KOSTEN_OPENSOURCE.md, RECHERCHE_SOFTWARE_REGRESS_PRAEVENTION.md).
> **Status:** Erstrecherche

---

## 0. Kontext und Abgrenzung

Diese Recherche beantwortet eine kritische Nachfrage: Die bisherige Schätzung von 60–120 Personenjahren + 1–2 Mio EUR/Jahr Betrieb gilt für ein **vollständiges KBV-zertifiziertes PVS**. Die Frage ist nun, ob ein **fokussiertes Werkzeug** — nur ICD-Plausibilität, Kodierungs-Vorschlag, Regress-Risiko-Warnung — mit einem Bruchteil des Aufwands machbar wäre.

**Vorab wichtigster Befund (mit Konsequenzen für die gesamte Recherche):**
Die klassische **Richtgrößen-Prüfung** wurde durch das GKV-Versorgungsstärkungsgesetz **ab Prüfjahr 2017 abgeschafft**. An ihre Stelle traten ab 2020 die **Durchschnittswertprüfung** (statistische Auffälligkeit gegenüber Fachgruppen-Durchschnitt, Toleranz 45–50 % je nach KV) und — in der Praxis dominierend — die **Einzelfallprüfung** auf Antrag einzelner Krankenkassen wegen Verstößen gegen die Arzneimittel-Richtlinie (Anlage III, Off-Label-Use, nicht-verordnungsfähige Mittel). Ein "Regress-Plausibilitäts-Tool" im Sinne eines simplen Richtgrößen-Rechners würde also an der Realität vorbeiprogrammieren. Die relevante Frage ist heute nicht mehr "Wieviel verordne ich?", sondern **"Ist diese einzelne Verordnung gegen die AM-RL verstoßend?"**.

Quellen: [BMG — Richtgrößen und Wirtschaftlichkeitsprüfung](https://www.bundesgesundheitsministerium.de/service/begriffe-von-a-z/r/richtgroessen-und-wirtschaftlichkeitspruefung/), [Rheuma Management — Arzneimittelverordnungssteuerung im Wandel](https://www.rheumamanagement-online.de/detailansicht/arzneimittelverordnungssteuerung-im-wandel), [KV Berlin — Wirtschaftlichkeitsprüfung](https://www.kvberlin.de/fuer-praxen/alles-fuer-den-praxisalltag/verordnung/wirtschaftlichkeitspruefung)

---

## A) Modulare Schwierigkeitsanalyse

Für jedes Modul: Aufwand in Personenmonaten (PM) für ein 1–2-Personen-Team + Stolpersteine.

### A.1 ICD-10-GM / ICD-11 Lookup

**Aufwand: 1–2 PM.** Unkritisch.

- **ICD-10-GM** ist vom BfArM in diversen Formaten veröffentlicht: PDF, TXT/CSV, HTML, **ClaML/XML** und Metadaten. ICD-10-GM Version 2026 ist seit Januar 2026 gültig.
- **Lizenz:** Als "amtliches Werk" nach § 5 Abs. 2 UrhG **kein Urheberrecht**, aber Änderungsverbot (§ 62 UrhG) und Quellenpflicht (§ 63 UrhG). Downloadbedingungen gelten (insbesondere bei abgeleiteten "veredelten" Produkten).
- **Updates:** Jährlich (immer zum Jahreswechsel) + unterjährige Aktualisierungslisten.
- **ICD-11 WHO API:** Kostenlos über REST-API (CC BY-ND 3.0 IGO), Registrierung mit Client-ID/Client-Secret erforderlich. Für Deutschland aktuell noch nicht abrechnungsrelevant.
- **OPS** (Operationen- und Prozedurenschlüssel) vom BfArM unter denselben Bedingungen.

**Stolpersteine:**
- ClaML/XML ist nicht SNOMED CT-kompatibel, Mapping auf andere Terminologien manuell.
- Das Änderungsverbot verhindert z. B. die Korrektur offensichtlicher Tippfehler.

Quellen: [BfArM — ICD-10-GM Downloads](https://www.bfarm.de/DE/Kodiersysteme/Services/Downloads/_node.html), [BfArM — Downloadbedingungen PDF](https://www.bfarm.de/SharedDocs/Downloads/DE/Kodiersysteme/downloadbedingungen-2025.pdf), [BfArM — Downloadhinweise](https://www.bfarm.de/DE/Kodiersysteme/Services/Downloads/hinweise_downloads.html), [ICD-API Homepage](https://icd.who.int/icdapi), [WHO ICD-API License](https://icd.who.int/docs/icd-api/license/)

### A.2 EBM-Ziffern Lookup

**Aufwand: 2–4 PM.** Mittel.

- Die **KBV** stellt den EBM in mehreren Formaten bereit: Online-Version, PDF, HTML-Offline-Version. Eine **XML-Strukturdatei** ("EBM2000+") existiert historisch (u. a. genutzt von Iatropro).
- Das amtliche Abrechnungsverzeichnis OPS wird in CSV und XLS als maschinenlesbarer Datei angeboten.
- **Lizenz:** Die KBV stellt die offiziellen Fassungen kostenfrei bereit, erwartet aber Quellennachweis. Kommerzielle Weiterverwertung bedarf der Prüfung.
- **Update:** Vierteljährlich (Quartalsgrenze am 1.4., 1.7., 1.10., 1.1.).

**Stolpersteine:**
- Die XML-Strukturdatei ist historisch gewachsen und dokumentarisch schwach — Reverse-Engineering nötig.
- Plausibilitätsregeln zwischen EBM-Ziffern (Nebeneinander-Abrechnungsverbote, Ausschlussziffern, zeitbezogene Prüfziffern) stehen NICHT im XML, sondern in der EBM-Legende als Fließtext. Regelextraktion ist Handarbeit.
- Regional abweichende Gebührenziffern (z. B. hausarzt-zentrierte Versorgung) sind nicht enthalten.

Quellen: [KBV EBM-Ansicht](https://ebm.kbv.de/), [KBV EBM-Startseite](https://www.kbv.de/html/ebm.php), [KV Baden-Württemberg — EBM & regionale Gebührenziffern](https://www.kvbawue.de/praxis/abrechnung-honorar/ebm-regionale-gebuehrenziffern)

### A.3 Wirkstoff- / Arzneimittel-Datenbank

**Aufwand: 6–12+ PM reine Integration.** Kritisch — **Haupt-Kostentreiber**.

Hier liegt der größte technische und lizenzrechtliche Knackpunkt. Es gibt **keine freie deutsche Volldatenbank** aller zugelassenen Fertigarzneimittel mit PZN, Preisen, Rabattverträgen, Zuzahlung und Verordnungsstatus.

#### A.3.1 ABDATA ABDA-Artikelstamm / Lauer-Taxe

- Standardlieferant aller Apothekensysteme und eingebettet in fast alle PVS-AMTS-Module.
- ~720.000 Artikel, ~57.000 Bilder/Texte, Updates zweimal monatlich als CSV-Rohdaten.
- **Lizenz nur auf Anfrage.** Öffentlich keine Preise. Einzelne Berichte nennen vier- bis fünfstellige Jahreslizenzkosten je Anwendung.

Quellen: [ABDATA — ABDA-Artikelstamm](https://abdata.de/produkte/abda-artikelstamm/), [CGM — Lauer-Taxe](https://www.cgm.com/deu_de/loesungen/apotheke/apothekensysteme/lauer-taxe.html), [pharmazie.com — Arzneimittel-Rohdatenlizenzen](https://go.pharmazie.com/de/arzneimittel-rohdatenlizenzen/)

#### A.3.2 ifap praxisCENTER / Gelbe Liste Pharmindex (MMI Vidal)

- Beliefert über 60 PVS als White-Label-Modul.
- Die **Online-Version** der Gelben Liste ist frei, aber nicht als Roh-Download lizenziert; die Printversion wird niedergelassenen Ärzten kostenlos zugeschickt.
- **Kosten für Lizenzierung als Roh-Daten** nicht öffentlich; historische Hinweise auf ca. 29 €/Monat für werbefreie Einzelnutzung, Rohdatenlizenzen vermutlich deutlich höher.

Quellen: [ifap praxisCENTER](https://www.ifap.de/), [Gelbe Liste Online](https://www.gelbe-liste.de/), [Wikipedia — Gelbe Liste](https://de.wikipedia.org/wiki/Gelbe_Liste)

#### A.3.3 PZN / IFA GmbH

- Die **Pharmazentralnummer** ist die einzige offizielle eindeutige Kennung aller in Deutschland vertriebenen Fertigarzneimittel.
- Vergabe und Pflege ausschließlich durch die IFA GmbH (gemeinsame Clearingstelle der Branche). Rohdatenbezug nur über **IFA-Abnehmervertrag**.
- Kein offener API-Zugriff. Die PZN-Datenbank ist **der Schlüssel** zu jedem ernstzunehmenden Abrechnungstool.

Quellen: [IFA GmbH](https://www.ifaffm.de/de/ifa-gmbh.html), [IFA Datenmeldungs-Richtlinien PDF](https://www.ifaffm.de/mandanten/1/documents/02_ifa_anbieter/richtlinien/IFA-Richtlinien_Datenmeldung.pdf), [Wikipedia — Pharmazentralnummer](https://de.wikipedia.org/wiki/Pharmazentralnummer)

#### A.3.4 Offene Alternativen

- **WHO ATC-Klassifikation:** Kostenlose Online-Ansicht und Excel/XML zum Download nach Registrierung beim WHOCC in Oslo. Freies Scraping als CSV auf GitHub verfügbar (fabkury/atcd). **Liefert aber keine PZN und keine deutschen Preise.** Nur Wirkstoff-Klassifikation.
- **DrugBank:** Offene Subsets (CC0) existieren, Vollversion ist kostenpflichtig für kommerzielle Nutzung. Nicht deutsch spezifiziert (keine PZN, keine Festbeträge, keine Rabattverträge, kein Verordnungsstatus nach AM-RL).
- **AMIce (BfArM Public Part):** Öffentlich zugänglich, enthält alle für die Publikation freigegebenen Zulassungs- und Wirkstoffdaten. Gute Grundlage für Stammdatensuche, aber keine Preise, kein Handelsvertrieb, kein AMTS.
- **RxNorm / RxNav (NIH):** US-zentriert, deutsche Fertigarzneimittel nicht abgedeckt.

**Fazit A.3:** Ohne eine kommerzielle Lizenz (ABDATA, MMI/ifap oder data4doc) **kein vollständiges deutsches Arzneimittel-Tool** möglich. Alternative: Man beschränkt sich auf **Wirkstoffebene** (ATC-Codes + Wirkstoffnamen), verzichtet auf Preisanzeige/Rabattverträge und liefert nur Aussagen à la "Wirkstoff X bei Indikation Y ist nach AM-RL Anlage III eingeschränkt verordnungsfähig". Das wäre mit freien Daten machbar.

Quellen: [DrugBank Academic License](https://go.drugbank.com/academic_research), [DrugBank Open Data](https://go.drugbank.com/releases/latest), [WHO ATC/DDD Toolkit](https://www.who.int/tools/atc-ddd-toolkit/atc-classification), [GitHub fabkury/atcd](https://github.com/fabkury/atcd), [BfArM — AMIce](https://www.bfarm.de/DE/Arzneimittel/Arzneimittelinformationen/Arzneimittel-recherchieren/_node.html)

### A.4 Richtgrößen-Datenbank

**Aufwand: irrelevant seit 2017.**

- Richtgrößenprüfungen wurden zum Prüfjahr 2017 bundesweit abgeschafft (GKV-VSG).
- An ihre Stelle trat die **Durchschnittswertprüfung** (ab 2020) und — regional unterschiedlich — **Zielwertvereinbarungen** bzw. **Zielvereinbarungen nach § 84 Abs. 1 SGB V** (z. B. "80 % Generika in Gruppe X").
- Die jeweiligen Zielwerte werden von den KVen auf ihren Websites veröffentlicht (z. B. KV Berlin, KV Sachsen), sind aber **regional stark unterschiedlich und nicht einheitlich maschinenlesbar**. Meist PDF-Tabellen.

**Stolpersteine:**
- 17 KVen × jährliche Updates × PDF → Dauer-Scraping-Aufgabe.
- Die Durchschnittswerte (gegen die geprüft wird) werden **nicht publiziert** — sie sind Rechenergebnis ex post und betriebsintern bei der Prüfungsstelle.
- Ein Regress-Tool kann die Durchschnittswertprüfung daher nicht antizipieren — nur Warnungen bei sehr hohen Einzelvolumina ausgeben.

Quellen: [BMG — Richtgrößen/WP](https://www.bundesgesundheitsministerium.de/service/begriffe-von-a-z/r/richtgroessen-und-wirtschaftlichkeitspruefung/), [KV Sachsen — Zielwerte und Richtgrößen 2025](https://www.kvsachsen.de/fuer-praxen/aktuelle-informationen/praxis-news/zielwerte-und-richtgroessen-arzneimittel-fuer-2025-verhandelt), [KV Sachsen — Arzneimittelvereinbarung 2025 PDF](https://www.kvsachsen.de/fileadmin/KV-Sachsen_Website/01_Praxen/Verordnungen/Arznei-_und_Verbandmittel/241218_241213_Arzneimittelvereinbarung_2025.pdf), [KV Berlin — Verordnungs-News Nr. 5 Juli 2025](https://www.kvberlin.de/verordnungs-news-nr-5-juli-2025-sonderausgabe-pruefvereinbarung-und-arzneimittelvereinbarung-mit-zielen)

### A.5 Plausibilitätsregeln (ICD <-> Wirkstoff <-> Abrechnung)

**Aufwand: 12–24 PM für einen sinnvollen Regelkern.** Sehr komplex.

Dies ist der **zweite große Engpass**.

- Die **Arzneimittel-Richtlinie des G-BA** liefert Anlage III (Verordnungseinschränkungen und -ausschlüsse), Anlage IV (Therapiehinweise), Anlage VI (Off-Label-Use, Teile A und B), Anlage XII (Nutzenbewertung nach § 35a SGB V). Alle als **PDF** verfügbar, nicht maschinenlesbar.
- **Anzahl Regeln:** Anlage III enthält aktuell mehrere Dutzend indikations- und wirkstoffbezogene Einschränkungen. Anlage VI drei Gebietsgruppen (Onkologie, Infektiologie HIV/AIDS, Neurologie/Psychiatrie), insgesamt bisher unter 50 verbindlich entschiedene Wirkstoff/Indikations-Kombinationen.
- **Extraktionsaufwand:** Jede Regel muss per Hand aus PDF-Texten in strukturierte Form (if-ICD-then-wirkstoff-then-status) überführt werden. Aufwand: realistisch 3–6 PM allein für Anlage III.
- **AMTS-Regeln** (Interaktionen, Kontraindikationen, Allergien) stehen **nicht** in offenen Quellen, sondern in proprietären Datenbanken (ABDATA AMTS-Modul, MMI i:fox®, PSIAC).
- **Pflege:** G-BA-Beschlüsse erscheinen laufend. Schon die kommerziellen Systeme haben laut KBV-Kritik 3–6 Monate Verzug bei der Einpflege.

**Stolpersteine:**
- Keine offene, strukturierte AMTS-Datenbank in deutscher Indikationslogik.
- Off-Label-Listen stehen beim G-BA, sind aber nur deklarative Listen, ohne automatisierten Abgleich-Logik.
- PRISCUS-2.0 (177 potenziell inadäquate Wirkstoffe für ältere Menschen) ist frei verfügbar als PDF und App, aber nicht als JSON/CSV.
- FORTA-Liste als PDF/Web/App, nicht als JSON.

Quellen: [G-BA — Arzneimittel-Richtlinie](https://www.g-ba.de/richtlinien/3/), [G-BA — Off-Label-Use](https://www.g-ba.de/themen/arzneimittel/arzneimittel-richtlinie-anlagen/off-label-use/), [G-BA — Verordnungseinschränkungen](https://www.g-ba.de/themen/arzneimittel/arzneimittel-richtlinie-anlagen/verordnungseinschraenkungen-ausschluesse/), [G-BA — AM-RL Anlage III PDF (Stand 11.11.2023)](https://www.g-ba.de/downloads/83-691-855/AM-RL-III-Verordnungeinschraenkungen_2023-11-11.pdf), [AkdÄ — PRISCUS 2.0 PDF](https://www.akdae.de/fileadmin/user_upload/akdae/Arzneimitteltherapie/AVP/Artikel/2023-1/005.pdf), [Gelbe Liste — FORTA-Liste](https://www.gelbe-liste.de/nachrichten/forta-liste-aktuell)

### A.6 Praxisbesonderheiten-Mustererkennung

**Aufwand: 2–4 PM für ein Grundgerüst.** Mittel, aber inhaltlich unscharf.

- **Bundesweite Praxisbesonderheiten**: Der GKV-Spitzenverband veröffentlicht eine Liste von Wirkstoffen, die bei AMNOG-Erstattungsbetragsverhandlungen als bundesweit anerkannte Praxisbesonderheiten festgelegt wurden (z. B. Ticagrelor/Brilique, Secukinumab/Cosentyx, Dupilumab/Dupixent, Sacubitril-Valsartan/Entresto, Empagliflozin/Jardiance). Stand einer publizierten Übersicht: 47 Wirkstoffe, fortlaufend erweitert. Format: PDF.
- **Regionale Praxisbesonderheiten**: Jede KV vereinbart eigene Listen, teilweise fach­gruppen­spezifisch, in wechselnden PDF-Formaten. Das KV-Übergreifende Parsing ist Dauer-Aufwand.
- "Mustererkennung" im engeren Sinne (Automatische Erkennung, ob die Patientenstruktur einer Praxis atypisch ist) wäre nur mit Zugriff auf echte Fallzahlen möglich — hier sind Datenschutz und Datenverfügbarkeit die Hürden.

Quellen: [GPE BW — Bundesweite Praxisbesonderheiten](https://www.gpe-bw.de/facharztgruppen/allgemeinmediziner/bundesweite-praxisbesonderheiten), [KV Baden-Württemberg — Praxisbesonderheiten](https://www.kvbawue.de/praxis/verordnungen/arzneimittel/praxisbesonderheiten), [KV BW — bundesweite Praxisbesonderheiten PDF](https://www.kvbawue.de/api-file-fetcher?fid=3998)

### A.7 Off-Label-Erkennung

**Aufwand: 1–2 PM (Extraktion + Abgleich).** Machbar.

- G-BA veröffentlicht **Anlage VI** der AM-RL in zwei Teilen: Teil A (verordnungsfähig im Off-Label) und Teil B (nicht verordnungsfähig).
- Basis sind Empfehlungen **dreier beim BfArM angesiedelter Expertengruppen**: Onkologie, Infektiologie HIV/AIDS, Neurologie/Psychiatrie. Weitere Fachgebiete fehlen bisher vollständig — dort gilt Off-Label = im Zweifel Regress.
- Format: PDF, kein strukturiertes Register.
- Pflege: G-BA-Beschlüsse erscheinen stoßweise; ein Abo-Feed existiert als RSS beim G-BA.

**Limitation:** Die formal entschiedene Off-Label-Liste ist klein. Die eigentliche Schwierigkeit für einen Regress-Tool liegt in den **unzähligen nicht formal entschiedenen Off-Label-Anwendungen**, bei denen Ärzte im Graubereich agieren. Ein Tool kann hier nur warnen "Nicht in G-BA-Anlage VI gelistet — Einzelfallrisiko".

Quellen: [G-BA — Off-Label-Use Übersicht](https://www.g-ba.de/themen/arzneimittel/arzneimittel-richtlinie-anlagen/off-label-use/), [Gelbe Liste — Anlage VI Off-Label-Use](https://www.gelbe-liste.de/arzneimittelrichtlinien/arzneimittel-richtlinie-anlage-6-off-label-use), [MD-Bund — Begutachtungsleitfaden Off-Label-Use PDF](https://md-bund.de/fileadmin/dokumente/Publikationen/GKV/Begutachtungsgrundlagen_GKV/BGL_Off-Label-Use_240701.pdf)

### A.8 Frontend-Integration in bestehende PVS

**Aufwand: technisch 2–6 PM pro PVS, politisch unüberwindbar.**

- **Keine standardisierte Plugin-API** in den Markt-PVS. TURBOMED, MEDISTAR, x.isynet sind geschlossene Systeme; Drittanbieter (ifap, data4doc) werden ausschließlich über Hersteller-Verträge eingebunden (White-Label).
- Die KBV hat nach § 371 SGB V eine **PVS-Archivierungs- und Wechsel-Schnittstelle** festgelegt (FHIR-basiert), die aber nur den **einmaligen Export beim Systemwechsel** abbildet — nicht den Live-Zugriff zur Laufzeit.
- **KVDT-Dateien** (Datenpaket zur KV-Abrechnung) sind ein standardisiertes Austauschformat. Ein externes Tool könnte eine KVDT-Datei einlesen, analysieren und Befunde zurückspielen. Die Spezifikation ist öffentlich (KBV Anforderungskatalog KVDT, aktuelles Prüfpaket Version 3.7, Stand März 2025). **Das ist der einzige offene Weg.**
- **Browser-Lesezeichen / Companion-Web-App**: Manuelle Eingabe durch die Praxis, keine PVS-Integration nötig, keine Zertifizierung. Einfachster Einstieg.

**Stolpersteine:**
- KVDT-Dateien enthalten **personenbezogene Patientendaten** (Versicherten-Nr., Geburtsdatum, Diagnosen, Verordnungen). Eine Analyse-Software fällt sofort in den Bereich **DSGVO-Auftragsverarbeitung** oder sogar MDR (siehe Abschnitt B).
- Markt-PVS haben kein Interesse an Drittanbieter-Integration, die ihre eigenen AMTS-Module ersetzen könnte.

Quellen: [KBV — Anforderungskatalog KVDT PDF](https://update.kbv.de/ita-update/Abrechnung/KBV_ITA_VGEX_Anforderungskatalog_KVDT.pdf), [KBV — Prüfpaket KVDT Version 3.7 PDF](https://update.kbv.de/ita-update/Abrechnung/Pruefverfahren/KBV_ITA_AHEX_Pruefpaket_KVDT.pdf), [KBV — PVS-Archivierungs-Wechsel-Schnittstelle §371 PDF](https://update.kbv.de/ita-update/371-Schnittstellen/PVS-Archivierungs-Wechsel-Schnittstelle/KBV_ITA_VGEX_Festlegung_AW_SST.pdf), [KBV Hub — §371 Schnittstelle](https://hub.kbv.de/pages/viewpage.action?pageId=56296218)

---

## B) Regulatorische Hürden

### B.1 KBV-Zertifizierung nach § 291d / § 332b SGB V

**Status: Nicht zwingend, solange kein KVDT erzeugt und keine Verordnung ausgestellt wird.**

- Die KBV-Zertifizierung ist Voraussetzung für **Praxissoftware, die für die vertragsärztliche Abrechnung und E-Rezept-Ausstellung genutzt wird** (§ 332b SGB V als Rahmenvereinbarung).
- Ab 01.01.2026 zusätzlich **gematik-Konformitätsbewertung (KOB)** erforderlich. Die KBV hat für PVS ohne KOB-Zertifikat im Dezember 2025 eine Härtefallregelung eingeführt.
- **Für ein reines Plausibilitäts-Analyse-Tool, das keine Abrechnungsdaten erzeugt, keine Verordnung in Umlauf bringt, keine E-Rezepte signiert**: **keine KBV-Zertifizierung erforderlich**. Das Tool wäre rechtlich ein ungebundenes Informationswerkzeug.

Quellen: [KBV — Rahmenvereinbarung für Praxissoftware](https://www.kbv.de/infothek/ita/rahmenvereinbarung-pvs-anbieter), [KBV — Abrechnung mit Praxissoftware ohne KOB-Zertifikat (Dezember 2025)](https://www.kbv.de/praxis/tools-und-services/praxisnachrichten/2025/12-04/abrechnung-mit-praxissoftware-ohne-kob-zertifikat-kbv-verhindert-unfaire-haerten), [KBV — PVS Seite](https://www.kbv.de/praxis/digitalisierung/praxisverwaltungssystem), [KV Hessen — KOB-Voraussetzung](https://www.kvhessen.de/publikationen/konformitaetsbewertung-kob-als-voraussetzung-fuer-die-abrechnung)

### B.2 gematik-Zertifizierung

**Status: Nur relevant für TI-Anbindung.**

- Die gematik zertifiziert Produkte, die die Telematikinfrastruktur nutzen (KIM, TI-Messenger, Konnektoren, eRezept, ePA, eAU).
- Ein eigenständiges Analyse-Tool außerhalb der TI ist **nicht gematik-pflichtig**.

Quellen: [gematik Zulassungsübersichten](https://fachportal.gematik.de/zulassungs-bestaetigungsuebersichten), [gematik KIM](https://www.gematik.de/anwendungen/kim)

### B.3 MDR (Medical Device Regulation, VO (EU) 2017/745)

**Status: Der gefährlichste Stolperstein — Klasse IIa ist wahrscheinlich.**

- Regel 11 (Anhang VIII): "Software, die Informationen liefert, die für Diagnose- oder Therapieentscheidungen herangezogen werden, fällt in Klasse IIa" — außer bei Tod/irreversiblen Folgen (III) bzw. schweren Folgen/OP (IIb).
- MDCG 2019-11 Rev.1 (Juni 2025) konkretisiert: Klasse I ist für "eigentliche" Medical Device Software selten und kommt nur in Randfällen (reine Datenspeicherung, Suche, verlustfreie Kompression) vor.
- **Entscheidend**: Software, die **keine Aktion jenseits von Speicherung, Archivierung, Kommunikation, verlustfreier Kompression oder einfacher Suche** auf Daten durchführt, **ist keine MDSW**. Auch **Software für Populationsbetrachtungen und epidemiologische Auswertungen** ist keine MDSW.
- Ein Plausibilitäts-Tool, das **konkrete Warnungen für individuelle Verordnungen** ausgibt ("diese Diagnose-Wirkstoff-Kombination verstößt gegen Anlage III"), fällt aus EU-Sicht sehr wahrscheinlich in Klasse IIa.
- Konsequenz: **Benannte Stelle, QMS nach ISO 13485, Technische Dokumentation, klinische Bewertung, Post-Market-Surveillance**. Realistische Kosten: **hoher sechsstelliger Bereich und 12+ Monate** für ein kleines Team.

**Rechtlich einfachster Ausweg:**
- Das Tool wird als **Informations-/Schulungs-Software** deklariert, die **keine patientenindividuelle Entscheidungsunterstützung** leistet, sondern nur **allgemeine Regelwerke nachschlägt**. Anwender-Eingabe: anonyme Codes. Ausgabe: Text aus der Arzneimittel-Richtlinie. Dann kein MDSW — vergleichbar mit einem elektronischen Nachschlagewerk (Gelbe Liste online ist auch nicht zertifiziert).
- Das ist die juristische Grauzone, in der sich OpenPrescribing.net in UK und auch fast alle Ärzte-Wikis bewegen.

Quellen: [EU Public Health — MDCG 2019-11 Rev.1 (Juni 2025)](https://health.ec.europa.eu/latest-updates/update-mdcg-2019-11-rev1-qualification-and-classification-software-regulation-eu-2017745-and-2025-06-17_en), [Johner Institut — MDR Regel 11](https://www.johner-institut.de/blog/regulatory-affairs/mdr-regel-11/), [Quickbird Medical — Klasse I Software MDR](https://quickbirdmedical.com/mdr-risikoklasse-1-software-medizinprodukt/), [VDE — Neufassung Regel 11](https://www.vde.com/topics-de/health/beratung/regel-11-neufassung), [Decomplix — MDSW unter MDR](https://decomplix.com/medical-software-mdr/)

### B.4 DSGVO

**Status: Handhabbar, wenn Tool keine Patientendaten verarbeitet.**

- Reine **Code-Verarbeitung** (ICD-Code + Wirkstoffname, keine Patienten-ID, kein Name, keine Versicherten-Nr.) ist kein personenbezogenes Datum. Tool darf ohne AVV betrieben werden.
- Sobald **KVDT-Dateien** oder strukturierte Patientendaten eingelesen werden, wird das Tool zum Auftragsverarbeiter nach Art. 28 DSGVO. Dann: AVV, TOMs, Verarbeitungsverzeichnis, ggf. DPIA bei sensiblen Daten.

### B.5 Berufsrecht

- Ein Verein darf Ärzten Werkzeuge kostenlos bereitstellen. Die Berufsordnungen der Landesärztekammern verbieten lediglich **wirtschaftliche Abhängigkeit** und **Werbung für einzelne Produkte**. Ein kostenloses Open-Source-Tool ist unbedenklich.

### B.6 Werberecht

- Ein gemeinnütziger Verein darf Software zum Download anbieten. Kein Heilmittelwerbegesetz-Problem, solange keine Produktwerbung erfolgt.

### B.7 Rechtlich einfachster Modus

**Klare Rangfolge (je einfacher, desto besser):**

1. **Reines Browser-Tool** (PWA, lokal, alle Daten bleiben im Browser-LocalStorage, kein Server-Roundtrip) — kein AVV, kein Cloud-Hosting, kein Patientendaten-Risiko. **Empfehlung.**
2. **Web-Service mit Login, aber ohne Patientendaten** (Nutzer kopiert ICD-Code + Wirkstoff rein) — AVV-Entlastung, nur Account-Daten.
3. **Browser-Extension** — technisch schöner, aber Browser-Store-Abhängigkeiten und Sicherheitsprüfungen.
4. **Companion-App / KVDT-Importer** — sobald personenbezogene Daten verarbeitet werden, voller DSGVO- und potenziell MDR-Pfad.

---

## C) Vorhandene Bausteine (Wiederverwendung)

| Baustein | Nutzbar für Tool? | Einschränkung |
|---|---|---|
| **HAPI FHIR** (Apache 2.0) | Ja, als optionaler KVDT-FHIR-Parser | Overkill für reines Web-Tool. FHIR-Profile für deutsche Abrechnung (z. B. KBV Basis) müssten eingespielt werden. |
| **Mirth Connect** | Nur als Integrations-Gateway für Kliniken | Für Arztpraxen überdimensioniert. |
| **OpenEMR** | Kein deutsches PVS. Plausibilitäts-Module nicht wiederverwendbar. | US-Kontext, ICD-10-CM statt GM. |
| **GNUmed** | Kein aktives KBV-Zertifikat, deutsche Lokalisierung vorhanden | Nicht als PVS einsetzbar, aber als Codebasis für Stammdaten-Modelle nützlich. |
| **openEHR / EHRbase** | Archetypen-basiertes Patientenmodell | Für reines Plausibilitäts-Tool zu schwer. |
| **Snowstorm** (SNOMED CT Server, IHTSDO) | Ja, aber SNOMED CT lizenzpflichtig für DE außerhalb IPS | SNOMED CT ist in Deutschland nicht kostenfrei lizenziert für kommerzielle Nutzung. BfArM hält das Mitgliedschaftsrecht, Einzelnutzer müssen separat lizenzieren. |
| **DrugBank** | Ja, Open Subset (CC0) | Keine deutschen PZNs, Preise, Rabattverträge. |
| **OpenPrescribing.net Code** (bennettoxford/openprescribing, Apache 2.0/MIT) | Django-Codebase als Architektur-Vorbild | UK-NHS-zentriert: Zugriff auf monatliche NHS-BSA-Verordnungsdaten aller NHS-GPs. In DE existieren solche öffentlichen Daten nicht. Code-Architektur übertragbar, Datenlogik nicht. |
| **RxNorm / RxNav (NIH)** | Für US-Wirkstoffe frei | Deutsche Arzneimittel nicht abgedeckt. |
| **WHO ICD-11 API** | Ja, kostenfrei mit Registrierung | Für DE-Abrechnung noch nicht produktiv relevant (ICD-10-GM gilt weiter). |
| **WHO ATC-Klassifikation** | Ja, als Wirkstoff-Grundgerüst | Nur Wirkstoff-Ebene, keine Fertigarzneimittel. |
| **BfArM AMIce** | Ja, als offene Zulassungsdaten-Quelle | Keine Preise, kein AMTS. |

Quellen: [HAPI FHIR](https://hapifhir.io/), [GitHub hapifhir/hapi-fhir](https://github.com/hapifhir/hapi-fhir), [GitHub IHTSDO/snowstorm](https://github.com/IHTSDO/snowstorm), [GitHub bennettoxford/openprescribing](https://github.com/bennettoxford/openprescribing), [Bennett Institute — Code](https://www.bennett.ox.ac.uk/code/), [OpenPrescribing — About](https://openprescribing.net/about/)

---

## D) Der realistische MVP

### D.1 Definition

**Name:** Regress-Plausibilitäts-Check (Arbeitstitel).
**Abgrenzung:** Kein PVS, kein Abrechnungstool, keine Verordnung, keine Patientendaten.
**Zielgruppe:** Niedergelassene Vertragsärzte, die eine **geplante Verordnung** gegen AM-RL-Anlagen prüfen wollen, bevor sie ausgestellt wird.

### D.2 Funktionsumfang MVP

| Funktion | Beschreibung | Quelle |
|---|---|---|
| **ICD-Code-Lookup** | Eingabe ICD-10-GM-Code, Ausgabe Klartextbezeichnung, Hierarchie | BfArM ClaML |
| **Wirkstoff-Lookup** | Eingabe Wirkstoff oder Handelsname-Prefix, Rückgabe ATC-Code | WHO ATC + BfArM AMIce Wirkstoff-Extrakt |
| **AM-RL Anlage III Abgleich** | Ist der Wirkstoff indikationsgebunden eingeschränkt? | G-BA AM-RL Anlage III (manuell extrahiert in JSON) |
| **AM-RL Anlage VI Abgleich** | Ist die Wirkstoff/Indikations-Kombination als Off-Label formal entschieden? | G-BA AM-RL Anlage VI |
| **PRISCUS 2.0 Warnung** | Ist der Wirkstoff bei Patienten >65 Jahren potenziell inadäquat? (Altersangabe optional) | akdae.de PRISCUS 2.0 PDF (manuell extrahiert) |
| **Bundesweite Praxisbesonderheit** | Ist der Wirkstoff als bundesweit anerkannte Praxisbesonderheit gelistet? | GKV-Spitzenverband / KV BW PDF |
| **Ampel-Ausgabe** | OK (grün), Achtung (gelb), Regressrisiko (rot) mit Begründungstext und Quellenverweis | eigene Regelengine |

**Bewusst weggelassen:**
- Preisangaben / Rabattverträge (benötigt ABDATA/MMI-Lizenz)
- Interaktionsprüfungen / Kontraindikationen (benötigt kommerzielle AMTS-Engine)
- Regionale Prüfwerte, Richtgrößen, Durchschnittswerte (nicht publiziert oder nicht sinnvoll prognostizierbar)
- E-Rezept-Erzeugung (KBV/gematik-Zertifizierung erforderlich)

### D.3 Aufwand

| Posten | PM | Bemerkung |
|---|---|---|
| ICD-10-GM Import + Suche | 1 | Standard-Elasticsearch oder SQLite FTS |
| ATC + Wirkstoffsuche | 1 | CSV-Import, Fuzzy-Match |
| AM-RL Anlage III Extraktion + JSON-Modell | 3 | Handarbeit, Review durch Mediziner erforderlich |
| AM-RL Anlage VI Extraktion | 1 | Kleiner Umfang |
| PRISCUS 2.0 Extraktion | 1 | 177 Einträge aus PDF |
| Regelengine + Ampel-Logik | 2 | Kern des Tools |
| Web-Frontend (PWA, lokal) | 2 | Einfaches Formular |
| Quellen-Dokumentation, Impressum, DSGVO, Nutzungsbedingungen, Haftungsausschluss | 1 | Wichtig |
| Monitoring G-BA-Updates | laufend | RSS-Feed-Abgleich |
| **Summe initialer Build** | **12** | bei 1–2 Personen realistisch 6–9 Monate |

**Infrastruktur:**
- Hosting: Statisch + Minimal-Backend (Hetzner Webhosting S reicht aus, wenn keine Nutzerdaten persistiert werden; Daten komplett im Browser).
- DB: SQLite für die Regelwerke, embedded im Build.
- CI/CD: GitHub Actions, quartalsweises Neubuilding bei G-BA-Updates.

**Betriebskosten:**
- <20 €/Monat für Hosting.
- **Ein Mediziner als fachlicher Reviewer** ist der größte laufende Kostenfaktor (Kuratierung der Regelwerke, ggf. ehrenamtlich über Therapiefreiheit e.V.).

### D.4 Öffentliche vs. kostenpflichtige Datenquellen

| Quelle | Nutzbar? | Kosten |
|---|---|---|
| ICD-10-GM ClaML | ja | 0 € |
| WHO ATC/DDD | ja, Registrierung | 0 € |
| BfArM AMIce Zulassungsdaten | ja | 0 € |
| G-BA AM-RL Anlagen III, IV, VI, XII (PDF) | ja | 0 € (Extraktionsaufwand eigenleistung) |
| GKV-Spitzenverband Praxisbesonderheiten | ja (PDF) | 0 € |
| PRISCUS 2.0 | ja (PDF) | 0 € |
| FORTA-Liste | ja | 0 € |
| ABDATA / Lauer-Taxe | nein im MVP | 4- bis 5-stellig/Jahr |
| MMI Vidal Gelbe Liste Rohdaten | nein im MVP | 4- bis 5-stellig/Jahr |
| IFA PZN-Datenbank | nein im MVP | Vertragspflichtig |

**Fazit:** Der MVP ist **mit ausschließlich kostenfreien öffentlichen Quellen** realisierbar — verzichtet dafür aber auf PZN, Preise und fertigarzneimittel­spezifische Informationen. Das ist vertretbar, da das Ziel die **Regel-Plausibilitäts-Prüfung** ist, nicht die **Apothekenabrechnung**.

### D.5 Verhältnis zum Regress-Transparenzportal

Das Tool wäre ein **logisches Add-on zum bereits konzipierten Regress-Transparenzportal** (siehe KONZEPT_REGRESS_TRANSPARENZ.md im Projektordner):

- Das **Portal** dokumentiert historische Regressfälle, schafft Transparenz über Prüfpraxis, stellt statistische Auswertungen bereit.
- Das **Plausibilitäts-Tool** beugt künftigen Regressen vor, indem es Ärzten vor der Verordnung eine Ampel liefert.
- Beide teilen: Zielgruppe, Datenbasis (G-BA-Regelwerke), Trägermodell, Hosting.

**Empfehlung:** Integration als Unterseite des Portals unter eigenem Namen (z. B. "Regress-Check"), gemeinsames Branding.

### D.6 Haftungsrisiko

**Dies ist der zweite zentrale juristische Punkt neben MDR.**

- Ein Tool, das eine falsch-grüne Ampel ausgibt und der Arzt verordnet daraufhin, riskiert Haftungsansprüche, wenn später ein Regress kommt.
- Gegenmittel: **Sehr klare Haftungsausschlüsse** ("Keine Rechts- oder Medizinberatung, ersetzt keine Einzelfallprüfung, Stand der Datenbasis Datum X, verbindlich ist immer der Originaltext der AM-RL").
- Das Risiko ist **nicht null**, aber vergleichbar mit der Gelben Liste Online oder jeder medizinischen Wiki-Plattform. Open-Source plus Transparenz der Quellen hilft.
- **Ein e.V. als Träger haftet mit Vereinsvermögen** (überschaubar); eine gUG wäre haftungsrechtlich sauberer. Siehe KONZEPT_CMS_RECHT_MARKE.md und RECHTSFORM.md im Um:bruch-Projekt.

---

## E) Internationale Beispiele

### E.1 OpenPrescribing.net (UK, Bennett Institute, University of Oxford)

- Django-Webapp, Apache 2.0, Quellcode auf GitHub (bennettoxford/openprescribing).
- Nutzt den **English Prescribing Dataset der NHS Business Services Authority**: vollständige, monatlich aktualisierte, **öffentlich zugängliche** Rohdaten aller NHS-GP-Verordnungen auf Praxis-Ebene.
- Bietet Dashboards, Benchmarks, "Measures" (z. B. "Antibiotika-Verordnung je 1000 Patienten"), Alerts.
- **Nicht direkt nach DE übertragbar**, weil der äquivalente deutsche Datensatz **nicht existiert**. In DE liegen KV-Statistikdaten bei der KBV/den KVen und sind nicht öffentlich.
- **Code-Architektur und Konzept sind übertragbar**, Datenbasis ist es nicht. Eine "OpenPrescribing-DE"-Variante müsste zunächst den Datenzugang erkämpfen (siehe IFG-Aktivitäten des Um:bruch, RECHERCHE_EINZELFALLPRUEFUNG_MECHANIK.md und IFG_ENTWURF_Pruefstatistiken.md).

Quellen: [OpenPrescribing About](https://openprescribing.net/about/), [GitHub bennettoxford/openprescribing](https://github.com/bennettoxford/openprescribing), [Bennett Institute — Code-Seite](https://www.bennett.ox.ac.uk/code/)

### E.2 PrescQIPP CIC (UK)

- Community Interest Company im NHS-Umfeld. Stellt Medikamentenrecherchen, Formular-Hilfen, Pflegeheim-Hilfen und Verordnungs-Leitlinien bereit. Für NHS-Mitglieder kostenlos, außerhalb des NHS nicht offen.
- Kein Open Source.

### E.3 NHS Decision Support Tools

- UK-spezifisch, meist nicht frei lizenziert. Beispiele: NHS Medicines A-Z (nur Lektüre), Renal Drug Database (Lizenz).

### E.4 Medscape Drug Interaction Checker (US, WebMD)

- Frei nutzbar, aber **proprietär**. Datenbasis: Multum / First Databank. Kein Open Source.

### E.5 Lexicomp (Wolters Kluwer, US)

- Kommerziell, Abonnement. Gilt als Goldstandard für Interaktionsprüfung im angloamerikanischen Raum. Kein Open Source.

### E.6 Epocrates (athenahealth, US)

- Kostenlose Grundfunktionen (App), werbe- und pharma-finanziert. Premium-Tier mit erweiterten Funktionen. Kein Open Source.

### E.7 Deutsche Lücke

**Zusammengefasst:** Im deutschen Sprachraum existiert **kein offener Regress-Plausibilitäts-Check**. Die vorhandenen Angebote (DeutschesArztPortal/Rp.-Institut, Rp. Regress-Radar, KV-Newsletter) sind:

- redaktionell (Texte lesen, kein Tool),
- kostenpflichtig / Abo,
- teilweise pharma-finanziert,
- nicht Open Source,
- nicht in Praxissoftware integrierbar über offene Schnittstellen.

Diese Lücke rechtfertigt ein Um:bruch-Projekt inhaltlich voll.

---

## F) Trägermodelle

### F.1 Um:bruch e.V. / gUG in Eigenregie

- **Vorteile:** Inhaltliche Kontrolle, schnelle Entscheidungen, passt zum strategischen Ziel "Regress-Transparenz".
- **Nachteile:** Fehlende personelle Tiefe für dauerhaften medizinischen Review. Benötigt Kooperationspartner.
- **Realistisch als Träger**, aber nicht als alleiniger Baumeister.

### F.2 Kooperation mit Therapiefreiheit e.V.

- Deckt den medizinisch-fachlichen Review ab.
- Bisheriger Gesprächspartner von Um:bruch in diesem Themenfeld.
- **Empfehlung:** Wenn MVP angegangen wird, Therapiefreiheit e.V. als Projektpartner für den fachlichen Review einbinden. Claim-Sharing zwischen den beiden Vereinen prüfen.
- Siehe KONZEPT_PRAXIS_KOOPERATION.md im Projektordner.

### F.3 Akademisches Projekt (Hochschule, BMBF-Förderung)

- Universitäre Institute für Allgemeinmedizin (z. B. Witten/Herdecke, Marburg, Düsseldorf) haben ein strukturelles Interesse an Transparenz-Tools.
- BMBF-Förderlinie "Patientenorientierte Forschung" oder "Gesundheitsforschung" könnten passen.
- **Zeithorizont:** 18–24 Monate Antrag bis Projektstart. Nicht kurzfristig.

### F.4 Sovereign Tech Fund / Prototype Fund

- **Sovereign Tech Agency** fördert digitale Basis-Technologien (Bibliotheken, Protokolle, Infrastruktur). Ein Regress-Tool ist **kein passendes Förderprofil** — es ist Anwendungssoftware, keine Basis-Infrastruktur.
- **Prototype Fund** (Open Knowledge Foundation Deutschland, gefördert bisher durch BMBF) ist für **Prototypen** von Open-Source-Zivilgesellschafts-Projekten passend — **auch für Healthcare-nahe Themen** (z. B. Open Reception 2025). Förderhöhe pro Runde ca. 47.500 € über 6 Monate. Das wäre für den MVP **der passendste Einstiegspfad**. Fristen: Halbjährliche Ausschreibungen.
- Der Prototype Fund wurde 2024/25 verlängert, Antragsphase für neue Runden regelmäßig auf prototypefund.de bekanntgegeben.

Quellen: [Prototype Fund](https://www.prototypefund.de/en), [Sovereign Tech Agency — Fund](https://www.sovereign.tech/programs/fund), [Netzpolitik — STF 2024](https://netzpolitik.org/2024/open-source-bundestag-staerkt-sovereign-tech-fund/)

### F.5 EU CERV / EU4Health / Horizon Europe

- **Horizon Europe Cluster 1 (Health)** hat regelmäßige Calls im Bereich "Health systems, digital health" mit mittleren bis großen Konsortien. Für ein Tool dieser Größe nur sinnvoll mit akademischem Lead und mehreren EU-Partnern. Nicht kurzfristig.
- **CERV (Citizens, Equality, Rights and Values)** fördert Zivilgesellschaft, ist aber nicht auf Healthcare-Tools ausgerichtet.

### F.6 Civic-Tech-Crowd (CCC, OKF, FragDenStaat)

- Open Knowledge Foundation Deutschland (Betreiber des Prototype Fund und von FragDenStaat) wäre ein **idealer Unterstützer** auf Community-Ebene.
- CCC-Umfeld könnte Entwickler-Talent mobilisieren.
- **Empfehlung**: OKF als ideellen Partner und möglichen Förder-Intermediär ansprechen.

### F.7 KV-Eigeninitiative

- Eine KV hätte formal Zugang zu allen relevanten Daten (Fachgruppen-Durchschnittswerte, Zielwerte, Regelextraktion).
- Politisch ist das unwahrscheinlich, weil KVen ihre Prüfpraxis intransparent halten. KV RLP, KV Baden-Württemberg oder KV Bayerns waren in Vergangenheit etwas offener — aber nicht bei Transparenztools.
- **Realistische Einschätzung:** Keine KV wird ein Regress-Plausibilitäts-Tool selbst veröffentlichen. Das ist strukturell gegen ihr Interesse (Prüfungsstellen sind Einnahmequelle).

---

## Gesamtbewertung

### Hauptknackpunkt

**Nicht die technische Komplexität und nicht primär die Regulatorik, sondern der strukturelle Datenlücken-Mix aus drei Ursachen:**

1. **Arzneimittelstammdaten (PZN, Preise, Rabattverträge, Fertigarzneimittel) sind in Deutschland nicht frei verfügbar** — ABDATA und MMI sind Oligopol, IFA ist Monopol. Ohne Lizenz kein vollständiges Tool.
2. **G-BA-Regelwerke sind zwar frei, aber nur als PDF** — Regelextraktion in strukturierte Form ist Handarbeit und muss laufend gepflegt werden. Kein maschinenlesbares Gesamtregister.
3. **MDR Klasse IIa droht**, sobald patientenindividuelle Empfehlungen ausgesprochen werden. Der einzige saubere Weg ist die **formale Deklaration als Informations-/Nachschlagewerk**, keine Entscheidungsunterstützung im MDR-Sinne.

### Realistische Einschätzung der Machbarkeit

Ein **fokussiertes Tool** ist **in 6–9 Monaten von 1–2 Entwicklern** machbar, **wenn**:

- Man sich auf **Wirkstoff-Ebene** (ATC) beschränkt und auf PZN/Preise verzichtet.
- Man sich auf **G-BA-Regelwerke** (AM-RL Anlagen III, VI) + **PRISCUS 2.0** + **bundesweite Praxisbesonderheiten** konzentriert.
- Man das Tool als **reines Browser-Tool / Nachschlagewerk** ohne Patientendaten baut.
- Man sich rechtlich klar als **Informations-Service** positioniert, nicht als MDSW.
- Man den medizinischen Review über **Kooperation mit Therapiefreiheit e.V.** oder Fachgesellschaften sicherstellt.

Das ist **eine Größenordnung kleiner** als ein vollständiges PVS (60–120 Personenjahre).

### Nicht machbar bleiben

- Preisanzeige und Rabattverträge (ABDATA/IFA-Lizenzpflicht).
- Echtzeit-Prüfung aller AMTS-Interaktionen (i:fox-/PSIAC-Datenbanken nicht offen).
- Durchschnittswertprüfung-Warnung (Daten nicht öffentlich).
- PVS-Plugin-Integration in Markt-PVS (Hersteller-Politik).

### Empfohlener nächster Schritt

1. **Projekt-Scoping mit Therapiefreiheit e.V.** (eine Sitzung, 3 h): Interesse, Review-Bereitschaft, ggf. Co-Trägerschaft.
2. **Prototype-Fund-Antrag** für die nächste Runde (ca. 47.500 € / 6 Monate).
3. **Parallel: Ein medizinischer Beirat** aus 2–3 engagierten niedergelassenen Ärzten.
4. **MVP-Prototyp in 3 Monaten** als Proof-of-Concept: ICD-Code + Wirkstoff-Eingabe, AM-RL Anlage III-Abgleich, Ampel. Keine Anlage VI, kein PRISCUS, kein Praxisbesonderheiten-Abgleich. Nur ein Modul.
5. **Evaluation mit 10 Pilot-Praxen**.
6. **Entscheidung auf Basis Evaluation**, ob Vollausbau lohnt.

---

## Quellenverzeichnis

### Datenquellen Kodiersysteme
- BfArM ICD-10-GM: https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html
- BfArM Downloadbedingungen 2025 (PDF): https://www.bfarm.de/SharedDocs/Downloads/DE/Kodiersysteme/downloadbedingungen-2025.pdf
- WHO ICD-API: https://icd.who.int/icdapi
- WHO ICD-API Lizenz: https://icd.who.int/docs/icd-api/license/
- KBV EBM: https://ebm.kbv.de/
- KBV EBM-Startseite: https://www.kbv.de/html/ebm.php

### Arzneimittel / Wirkstoffe
- ABDATA ABDA-Artikelstamm: https://abdata.de/produkte/abda-artikelstamm/
- ifap praxisCENTER: https://www.ifap.de/
- Gelbe Liste Pharmindex: https://www.gelbe-liste.de/
- IFA GmbH PZN: https://www.ifaffm.de/de/ifa-gmbh.html
- WHO ATC/DDD Toolkit: https://www.who.int/tools/atc-ddd-toolkit/atc-classification
- WHOCC ATC-DDD Index: https://atcddd.fhi.no/atc_ddd_index_and_guidelines/atc_ddd_index/
- GitHub fabkury/atcd (CSV-Scraper): https://github.com/fabkury/atcd
- DrugBank: https://go.drugbank.com/
- DrugBank Academic License: https://go.drugbank.com/academic_research
- BfArM AMIce: https://www.bfarm.de/DE/Arzneimittel/Arzneimittelinformationen/Arzneimittel-recherchieren/_node.html

### Regelwerke G-BA
- Arzneimittel-Richtlinie: https://www.g-ba.de/richtlinien/3/
- AM-RL Anlage III PDF (Stand 2023-11-11): https://www.g-ba.de/downloads/83-691-855/AM-RL-III-Verordnungeinschraenkungen_2023-11-11.pdf
- Off-Label-Use Übersicht: https://www.g-ba.de/themen/arzneimittel/arzneimittel-richtlinie-anlagen/off-label-use/
- Verordnungseinschränkungen Übersicht: https://www.g-ba.de/themen/arzneimittel/arzneimittel-richtlinie-anlagen/verordnungseinschraenkungen-ausschluesse/
- AkdÄ PRISCUS 2.0 PDF: https://www.akdae.de/fileadmin/user_upload/akdae/Arzneimitteltherapie/AVP/Artikel/2023-1/005.pdf

### Praxisbesonderheiten / Zielwerte
- KV Baden-Württemberg Praxisbesonderheiten: https://www.kvbawue.de/praxis/verordnungen/arzneimittel/praxisbesonderheiten
- KV BW Bundesweite Praxisbesonderheiten PDF: https://www.kvbawue.de/api-file-fetcher?fid=3998
- GPE BW: https://www.gpe-bw.de/facharztgruppen/allgemeinmediziner/bundesweite-praxisbesonderheiten
- KV Sachsen Zielwerte/Richtgrößen 2025: https://www.kvsachsen.de/fuer-praxen/aktuelle-informationen/praxis-news/zielwerte-und-richtgroessen-arzneimittel-fuer-2025-verhandelt
- KV Sachsen Arzneimittelvereinbarung 2025 PDF: https://www.kvsachsen.de/fileadmin/KV-Sachsen_Website/01_Praxen/Verordnungen/Arznei-_und_Verbandmittel/241218_241213_Arzneimittelvereinbarung_2025.pdf
- KV Berlin Verordnungs-News Nr. 5 Juli 2025: https://www.kvberlin.de/verordnungs-news-nr-5-juli-2025-sonderausgabe-pruefvereinbarung-und-arzneimittelvereinbarung-mit-zielen

### Prüfverfahren / Wirtschaftlichkeit
- BMG Richtgrößen und Wirtschaftlichkeitsprüfung: https://www.bundesgesundheitsministerium.de/service/begriffe-von-a-z/r/richtgroessen-und-wirtschaftlichkeitspruefung/
- Rheuma Management — Arzneimittelverordnungssteuerung im Wandel: https://www.rheumamanagement-online.de/detailansicht/arzneimittelverordnungssteuerung-im-wandel
- KV Berlin Wirtschaftlichkeitsprüfung: https://www.kvberlin.de/fuer-praxen/alles-fuer-den-praxisalltag/verordnung/wirtschaftlichkeitspruefung
- KV Nordrhein Wirtschaftlichkeitsprüfung: https://www.kvno.de/praxis/haeufige-fragen/wirtschaftlichkeitspruefung

### Schnittstellen / Technik
- KBV Anforderungskatalog KVDT PDF: https://update.kbv.de/ita-update/Abrechnung/KBV_ITA_VGEX_Anforderungskatalog_KVDT.pdf
- KBV Prüfpaket KVDT 3.7 PDF: https://update.kbv.de/ita-update/Abrechnung/Pruefverfahren/KBV_ITA_AHEX_Pruefpaket_KVDT.pdf
- KBV §371 PVS-Archivierungs-Wechsel-Schnittstelle PDF: https://update.kbv.de/ita-update/371-Schnittstellen/PVS-Archivierungs-Wechsel-Schnittstelle/KBV_ITA_VGEX_Festlegung_AW_SST.pdf
- KBV Hub Seite §371: https://hub.kbv.de/pages/viewpage.action?pageId=56296218
- HAPI FHIR: https://hapifhir.io/
- GitHub HAPI FHIR: https://github.com/hapifhir/hapi-fhir
- GitHub IHTSDO Snowstorm: https://github.com/IHTSDO/snowstorm

### Zertifizierung
- KBV Rahmenvereinbarung PVS: https://www.kbv.de/infothek/ita/rahmenvereinbarung-pvs-anbieter
- KBV Härtefall KOB (Dez 2025): https://www.kbv.de/praxis/tools-und-services/praxisnachrichten/2025/12-04/abrechnung-mit-praxissoftware-ohne-kob-zertifikat-kbv-verhindert-unfaire-haerten
- KV Hessen KOB-Voraussetzung: https://www.kvhessen.de/publikationen/konformitaetsbewertung-kob-als-voraussetzung-fuer-die-abrechnung
- gematik Zulassungsübersichten: https://fachportal.gematik.de/zulassungs-bestaetigungsuebersichten

### MDR / Software als Medizinprodukt
- EU Public Health MDCG 2019-11 Rev.1 (Juni 2025): https://health.ec.europa.eu/latest-updates/update-mdcg-2019-11-rev1-qualification-and-classification-software-regulation-eu-2017745-and-2025-06-17_en
- Johner Institut MDR Regel 11: https://www.johner-institut.de/blog/regulatory-affairs/mdr-regel-11/
- Quickbird Medical Klasse I Software: https://quickbirdmedical.com/mdr-risikoklasse-1-software-medizinprodukt/
- VDE Neufassung Regel 11: https://www.vde.com/topics-de/health/beratung/regel-11-neufassung
- Decomplix MDSW unter MDR: https://decomplix.com/medical-software-mdr/
- NAMSA MDR IVDR MDSW: https://namsa.com/de/resources/blog/eu-mdr-and-ivdr-classifying-medical-device-software-mdsw/

### Open-Source-Vorbilder / Alternativen
- OpenPrescribing.net: https://openprescribing.net/about/
- GitHub bennettoxford/openprescribing: https://github.com/bennettoxford/openprescribing
- Bennett Institute Code: https://www.bennett.ox.ac.uk/code/
- GNUmed: https://www.gnumed.de/
- Elexis: https://de.wikipedia.org/wiki/Elexis_Arztpraxis-Software

### Förderung
- Prototype Fund: https://www.prototypefund.de/en
- Sovereign Tech Agency: https://www.sovereign.tech/programs/fund
- Netzpolitik STF 2024: https://netzpolitik.org/2024/open-source-bundestag-staerkt-sovereign-tech-fund/

---

*Ende der Recherche. Ergänzt bestehende Dokumente im gleichen Ordner.*
