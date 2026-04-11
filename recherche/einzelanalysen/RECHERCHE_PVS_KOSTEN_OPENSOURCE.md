# Recherche: Praxisverwaltungssoftware (PVS) — Kosten und Open-Source-Realisierbarkeit

> **Erstellt:** 2026-04-08
> **Anlass:** Kritische Nachrecherche zur Frage, ob Um:bruch ein eigenes Open-Source-PVS angehen sollte oder bei der Meta-Schicht (Regress-Transparenzportal) bleibt.
> **Methodik:** WebSearch, WebFetch, KBV-Quellen, Zi-Studien, Hersteller-Dokumente. Keine Vermutungen, alle Zahlen mit Quelle.

---

## A) Preismodelle der dominierenden PVS

### A.1 Marktdominanz (verifiziert)

Laut Installationsstatistik der Kassenärztlichen Bundesvereinigung (KBV, Datenstand: **31.03.2024**) dominieren bei Hausärzten zehn PVS den Markt mit einem **kombinierten Marktanteil von 77,7 %** bei **19.355 Installationen**:

| Rang | System | Hersteller | Marktanteil Hausärzte |
|------|--------|------------|------------------------|
| 1 | TURBOMED | CompuGroup Medical (CGM) | 12,0 % |
| 2 | CGM MEDISTAR | CompuGroup Medical (CGM) | 10,9 % |
| 3 | x.isynet | medatixx | 9,0 % |

CGM und medatixx beherrschen zusammen drei der vier Top-Plätze. Die KBV listet derzeit **132 zertifizierte Produkte**, wobei einige Hersteller mehrere Systeme anbieten.

**Quellen:** [medizinio.de Top-10](https://medizinio.de/software/praxis), [KBV TOP 20 Allgemeinmediziner PDF](https://update.kbv.de/ita-update/Service-Informationen/Installationsstatistiken/TOP_20_je_Fachgruppe.pdf), [KBV Zertifizierte Software](https://update.kbv.de/ita-update/Service-Informationen/Zulassungsverzeichnisse/KBV_ITA_SIEX_Verzeichnis_Zert_Software.pdf)

---

### A.2 Konkrete Preise (soweit öffentlich verifizierbar)

**Wichtige Vorbemerkung:** Die Marktführer CGM und medatixx **kommunizieren keine öffentlichen Preise**. Konkrete Beträge sind nur über Forenberichte, Drittanbieter und kleinere Wettbewerber verfügbar. Diese Intransparenz ist selbst ein Symptom der Marktmacht.

#### TURBOMED (CGM) — verifizierte Beträge

Aus einem Foreneintrag (Forum „VonDoczuDoc", langjähriger Praxisinhaber) sind folgende Beträge dokumentiert:

- **Erstlizenz:** 2.700,- € + MwSt für eine Gemeinschaftspraxis (deckt bis zu 3 Ärzte ab)
- **Monatliche Softwarewartung (Basis):** 63,50 € (initial)
- **Zusätzlicher Arzt:** 1.350,- € + MwSt einmalig + 23,50 € + MwSt monatlich
- **Wechsel eines Partners:** 69,- € + MwSt einmalig
- **Jährliche Wartung pro zusätzlichem Arzt:** ca. 335,- € (gemeldet 2010er Jahre)

Ein älterer Foreneintrag aus 2013 nennt **114,90 € monatliche Wartungsgebühr** für ein typisches TURBOMED-Setup. Im **Januar 2023** hat CGM die Wartungsgebühren um **9 %** erhöht (Begründung: Inflation, Energiekosten, Pandemie, Krieg).

**Quellen:** [VonDoczuDoc Forum (Wartung+Lizenz)](http://www.vondoczudoc.de/viewtopic.php?p=14942), [VonDoczuDoc Forum (Preiserhöhung 2023)](https://www.vondoczudoc.de/viewtopic.php?t=9538), [Ärzteblatt: CGM erhöht Preise](https://www.aerzteblatt.de/nachrichten/138491/Praxissoftware-Compugroup-erhoeht-Preise)

#### CGM TI-Servicepaket Plus (separat zur PVS-Wartung)

Seit 2024 hat CGM die TI-Pauschale umgestellt. Konkret dokumentiert:

- **Bisherige TI-Servicegebühr:** 60–100 € pro Monat (je nach Produktlinie)
- **Neue Erhöhung:** +68,73 € netto pro Vertragspraxis monatlich
- **Konnektoraustausch:** 2.300 € einmalig (vom Bundesschiedsamt festgesetzt)
- **Zusätzliches Kartenterminal:** 55 € Installation + ggf. 165 € Anfahrt
- **TI-Pauschale (Erstattung über KV):** seit 01.07.2023 monatlich; Höhe variiert nach Ausstattung und Erstinstallationszeitpunkt

**Quelle:** [Ärzteblatt: CGM stellt Preismodell um](https://www.aerzteblatt.de/nachrichten/145096/TI-Pauschale-Compugroup-stellt-Preismodell-um)

#### MEDISTAR / ALBIS / x.isynet / x.concept (CGM, medatixx)

**Keine öffentlichen Preise auffindbar.** Die Hersteller verlangen Anfrage über lokale Vertriebspartner. Forderung der Zi-Studie 2024/2025: Zu hohe Lizenzgebühren werden als zentraler Wechselgrund genannt.

#### tomedo (zollsoft, Mac-only) — Forenangabe

- **Beispielbetrag aus Forum (2017):** 20 € netto monatlich für selten genutzten Mac-Arbeitsplatz
- **Hauptlizenz:** Mietmodell, Preise direkt über zollsoft anfragen
- **Installationsdienstleister heger.IT:** 125 €/h Service, 1,59 €/km Anfahrt, 135 €/Nacht Hotelpauschale; Beispielinstallation für 1 Arzt + 3 Arbeitsplätze: **3.188,01 € brutto**

**Quellen:** [tomedo-Forum](https://forum.tomedo.de/index.php/9808/), [heger.IT Preisliste](https://www.heger.it/tomedo-preisliste)

---

### A.3 Transparente Wettbewerber (kleinere Anbieter)

#### Medical Office (INDAMED) — voll transparente Preisliste

| Paket | Preis (netto/Monat) |
|-------|---------------------|
| Light (Privatpraxen) | 59,- € |
| Professional (moderne Praxen) | 109,- € |
| Enterprise (Gemeinschaftspraxen, große Einrichtungen) | auf Anfrage |
| Zusatzarbeitsplatz | 20,- €/Monat |

**Optionale Module (alle netto/Monat):**

- KI-Telefonassistent: 180 €
- KI-Dokumentationsassistent: 250 €
- Exchange: 90 €
- Impfen: 30 €
- Onlineterminplanung: 65 €
- Videosprechstunde: 40 €
- TI-Gateway: 120 €

**Quelle:** [INDAMED Preise](https://www.indamed.de/preise/)

#### T2med — sehr transparente Preisstruktur

- **Praxislizenz:** 100 €/Monat
- **Pro Arztlizenz:** 40 €/Monat
- **Alle TI-Funktionen (eRezept, KIM, NFDM, ePA), Videosprechstunde und Online-Terminbuchung sind enthalten**
- Keine modularen Zusatzkosten für DMP, eHKS, oKFE

Beispiel Hausarztpraxis mit 2 Ärzten: **180 €/Monat all-in**.

**Quelle:** [T2med Software](https://t2med.de/)

#### Beispiel-Festpreiskalkulation (alternative-praxissoftware.com mit Medical Office)

Komplette Praxis-EDV (Client-Server, 5 Arbeitsplätze, Installation, Einweisung, Anpassung):

- **Leasing inkl. Hardware:** ca. **400,- €/Monat** netto
- **Reine Softwarewartung mit Updates (5 Plätze):** ca. **115,- €/Monat**

**Quelle:** [alternative-praxissoftware.com](https://alternative-praxissoftware.com/kosten-praxissoftware-wechsel)

---

### A.4 Zusammenfassung Kostenkomponenten

Eine durchschnittliche Hausarztpraxis (1–2 Ärzte, 3–5 Arbeitsplätze) zahlt für ihr PVS-Ökosystem in Summe:

| Kostenblock | Spannweite (netto/Monat) |
|-------------|--------------------------|
| Reine PVS-Lizenz/Wartung | 60–250 € |
| Arbeitsplatzlizenzen (zusätzlich) | 20–60 € pro Platz |
| TI-Servicepaket (Konnektor, KIM, eRezept, ePA) | 60–170 € |
| Optionale Module (Video, KI-Assistent, Online-Termin) | 30–250 € pro Modul |
| Hardware (anteilig, Leasing) | 100–250 € |
| Schulung/Hotline (Anteil) | inklusive oder 50–100 € |

**Realistische monatliche Gesamtkosten einer durchschnittlichen Hausarztpraxis: 130–600 € netto**, abhängig von Größe und Modulbedarf. Die häufig zitierte Spanne von **130–150 € pro Monat** für eine kleine Praxis inklusive Online-Terminbuchung und Patientenkommunikation gilt nur für günstige Anbieter mit transparenter Preisstruktur, nicht für CGM/medatixx-Mainstream-Setups.

**Hochrechnung auf das Jahr:** Eine typische Hausarztpraxis zahlt zwischen **1.560 € und 7.200 € jährlich** netto für PVS, TI und Module. Bei umfangreicher Modulnutzung (KI-Assistent, Video, etc.) kann der Betrag auch **deutlich über 10.000 € jährlich** liegen.

**Quellen:** [Ärzteblatt: Unzufriedenheit](https://www.aerzteblatt.de/news/grosse-unterschiede-bei-zufriedenheit-mit-praxisverwaltungssystemen-a376fad9-f74c-4915-8ce3-a6116473c817), [Bitkom: Digitalisierung in Praxis und Klinik 2025](https://bitkom-research.de/node/1194)

---

## B) Zusätzliche Belastung durch PVS

### B.1 Zi-Studien 2024/2025 (zentrale Datenbasis)

Das **Zentralinstitut für die kassenärztliche Versorgung (Zi)** hat die bisher umfangreichste Untersuchung zur PVS-Performance in Deutschland durchgeführt:

- **Erhebung 2024:** 01.03.–14.04.2024, **10.245 Bewertungen** durch Ärzte, Psychotherapeuten und MFA. 32 verbreitete Systeme bewertet.
- **Aktualisierung 2025:** 02.05.–10.06.2025, **3.205 Praxen** von 95.036 eingeladenen MVZ und Praxen. 32 Systeme erneut analysiert.

**Zentrale Ergebnisse:**

- **Drei von vier Praxen** (75 %) würden ihr aktuelles PVS **nicht weiterempfehlen**
- **18 von 32** meistgenutzten Systemen werden von Anwendenden **explizit nicht empfohlen**
- **Nur 5 PVS** wurden im System Usability Scale (SUS) als „exzellent" eingestuft
- **Jede dritte Praxis** möchte das PVS wechseln, mehr als die Hälfte zieht den Wechsel in Erwägung
- **Über 71 %** berichten regelmäßig über Schwierigkeiten beim **eRezept**
- **Fast die Hälfte** der Nutzenden meldet, dass der Praxisablauf **mehrmals pro Woche oder täglich** durch Softwarefehler gestört wird

**Quellen:** [Zi Pressemitteilung Unzufriedenheit](https://www.zi.de/das-zi/medien/medieninformationen-und-statements/detailansicht/unzufriedenheit-mit-praxissoftware-nach-wie-vor-weit-verbreitet), [Monitor Versorgungsforschung Zi-Ranking](https://www.monitor-versorgungsforschung.de/news/zi-veroeffentlicht-ranking-einer-bundesweiten-umfrage-unter-arzt-und-psychotherapiepraxen-zur-praxissoftware/), [Zi PVS-Vergleich Dashboard](https://www.zi.de/bidashboard/pvs-vergleich-2024), [Erste Ergebnisse PDF](https://www.zi.de/fileadmin/Downloads/Service/Medien/MI/Anlage_PVS-Umfrage_02_05_2024.pdf)

### B.2 Klickzahlen, Arbeitszeit und Fehlerhäufigkeit

Das Zi hat statistisch belegt: **Klickzahl, Bearbeitungszeit und Fehlerhäufigkeit korrelieren signifikant.** Systeme mit hoher Fehlerhäufigkeit erzwingen längere Bearbeitungszeit und mehr Klicks. Diese Korrelation wiederum verschlechtert die Nutzerbewertung.

**Konkrete Belastungs-Beispiele aus Zi-Daten:**

- **eAU (elektronische Arbeitsunfähigkeitsbescheinigung):** Von **62,5 %** als belastend empfunden
- **eRezept:** Von **52 %** als belastend empfunden
- **Notfalldatenmanagement (NFDM):** Von knapp **50 %** als belastend empfunden
- **Updates nach CGM/ALBIS/M1 Pro:** In **über 80 %** der Fälle gefolgt von Funktionsstörungen

**Quelle:** [Zi: Fehlerhäufigkeit, Klickzahl, Arbeitszeit korreliert](https://www.zi.de/das-zi/medien/medieninformationen-und-statements/detailansicht/fehlerhaeufigkeit-klickzahl-und-arbeitszeit-statistisch-korreliert-wechsel-kann-arbeitsprozesse-verbessern-zi-fordert-finanzielle-unterstuetzung-der-praxen-zu-leistungsfaehigerer-software)

### B.3 Top und Flop im Zi-Ranking 2025

**Top 5 (System Usability Scale):**

1. **tomedo** (zollsoft) — Platz 1 in Nutzerfreundlichkeit und Empfehlungsrate, **Wechselbereitschaft nur 4,6 %**
2. **PegaMed** (Pega Elektronik)
3. **T2med** (T2med)
4. **InterArzt** (InterData)
5. **Praxis-Programm** (MediSoftware)

**Bottom (sehr schlechte Bewertung):**

- **TURBOMED:** Platz **38 von 40**, Wechselbereitschaft ca. **72 %**
- **Bei CGM-Systemen insgesamt:** Wechselbereitschaft mindestens **65 %**
- **ALBIS, M1 Pro, TURBOMED:** Update-bedingte Fehlfunktionen in **über 80 %** der Fälle

**Quellen:** [Statis e.V. Ranking Praxissoftware](https://www.statisev.de/aktuelles/ranking-praxissoftware-zi-studie/), [praxissoftware-vergleich.com tomedo](https://praxissoftware-vergleich.com/tomedo/), [Journal KVHH PVS-Ranking](https://journal.kvhh.net/2-2025/zi-veroffentlicht-ranking-zu-praxissoftware)

### B.4 Wechselkosten und Lock-in

- **20 % aller Praxen** beklagen den Aufwand der Datenmigration als Hauptgrund für Wechselzurückhaltung
- **72 %** der tatsächlich Gewechselten berichten, dass die Migration „reibungslos" verlief
- **Datenformate:** KBV-Standards BDT (Behandlungsdatenträger, seit 1990er) und seit **01.07.2021 verpflichtend AWS** (Archiv- und Wechselschnittstelle nach § 332b SGB V)
- **Lock-in-Risiken weiterhin real:** Proprietäre Verschlüsselung von Dokumenten kann Migration unmöglich machen
- **Mehr als 80 %** der Befragten bewerten Schulungs- und Umschulungsangebote als hilfreich

**Quellen:** [redmedical Datenmigration](https://redmedical.de/2021/12/13/neue-praxissoftware-wie-funktioniert-eine-datenmigration/), [healthcare-digital PVS-Wechsel](https://www.healthcare-digital.de/pvs-wechsel-wie-berechtigt-ist-die-angst-vor-dem-datenumzug-a-69a5ea222af44200c0a40a7fbebab0c3/)

### B.5 KBV-Zertifizierungs-Hürden für neue Anbieter

- **Pflicht:** Praxen dürfen ausschließlich KBV-zertifizierte Software einsetzen (§ 295 SGB V)
- **Rahmenvereinbarung nach § 332b SGB V:** Hersteller können freiwillig „PVS mit KBV-Vertrag" werden, wodurch Leistungspflichten, Preise, Sicherheit, Service, Laufzeiten und Kündigungsfristen geregelt werden
- **gematik-Bestätigung (separat zur KBV-Zertifizierung):** Pflicht für TI-Anwendungen VSDM, AMTS, NFDM, KIM
- **gematik-Audit-Gebühr:** **600 € + MwSt pro Fachanwendung**
- **Erforderliche Komponenten:** KVDT/xDT-Schnittstelle (Abrechnung), eGK-Kartenleser-Anbindung, eRezept, eAU, eHBA, VSDM, QPA, HL7/FHIR-Schnittstellen, ECC-Fähigkeit (verpflichtend ab 01.01.2026)

**Quellen:** [KBV PVS](https://www.kbv.de/praxis/digitalisierung/praxisverwaltungssystem), [KBV Rahmenvereinbarung](https://www.kbv.de/infothek/ita/rahmenvereinbarung-pvs-anbieter), [gematik Primärsysteme](https://fachportal.gematik.de/hersteller-anbieter/primaersysteme), [KV RLP zu KBV-Vertrag](https://www.kv-rlp.de/nachricht/pvs-mit-kbv-vertrag-viele-vorteile-fuer-praxen)

---

## C) Technische Open-Source-Realisierbarkeit

### C.1 Pflichtfunktionen für deutsche PVS

Eine PVS in Deutschland muss verbindlich:

1. **KVDT/xDT** unterstützen (KV-Abrechnung)
2. **AWS** (Archiv- und Wechselschnittstelle) bereitstellen — Pflicht seit 01.07.2021
3. **eGK-Lesegerät** anbinden (Konnektor)
4. **eRezept** ausstellen (gematik-bestätigt)
5. **eAU** versenden
6. **VSDM** (Versichertenstammdatenmanagement)
7. **NFDM** (Notfalldatenmanagement)
8. **eArztbrief / KIM** (Kommunikation im Medizinwesen)
9. **AMTS** (Arzneimitteltherapiesicherheit)
10. **ePA** (elektronische Patientenakte) — Pflicht 2025
11. **eHBA** (elektronischer Heilberufsausweis) integrieren
12. **QPA** (Qualitätsmanagement nach G-BA)
13. **HL7/FHIR** (Interoperabilität)
14. **ECC-fähig** (qualifizierte Signaturen) — Pflicht ab 01.01.2026

### C.2 Bestehende Open-Source-Bausteine

#### GNUmed (Deutschland-kompatibel, aber nicht KBV-zertifiziert)

- GPL-lizenziert, läuft auf Linux/Windows/macOS
- Patientendokumentation, Medikamentenverwaltung, Befunddokumentation, einfache Terminverwaltung
- **Kritisches Limit:** **Keine KBV-Zertifizierung** vorhanden, GKV-Abrechnung nur teilweise implementiert
- **Eignung:** Nur für reine Privatpraxen oder in Planungsphase, **nicht für GKV-Vertragsärzte geeignet**
- Status 2024: Lebendig, aber Nische, Community klein

**Quellen:** [GNUmed Website](https://www.gnumed.de/), [Ärzteblatt: GNUmed](https://www.aerzteblatt.de/archiv/28999/GNUmed-Eine-offene-Praxissoftware-fuer-den-Arzt), [medizinio Kostenlose Praxissoftware](https://medizinio.de/blog/arztpraxis-software-kostenlos)

#### Elexis (Schweiz, EPL-lizenziert)

- Eclipse Public License, voll Open Source
- **Eines der fünf bedeutendsten PVS in der Schweiz**, einziges voll funktionsfähiges Open-Source-System dort
- Kommerzieller Support durch **Medelexis AG** (Schweiz)
- KV-Abrechnungsmodul für deutschen Markt existiert, aber **Zertifizierungsstatus muss laufend geprüft werden**
- Plug-in-Architektur, gute Anpassbarkeit
- Nicht aktiv für deutschen GKV-Markt zertifiziert

**Quellen:** [Elexis Wikipedia](https://de.wikipedia.org/wiki/Elexis_Arztpraxis-Software), [Medelexis OpenSource](https://medelexis.ch/opensource/)

#### OpenEMR (international)

- Sehr verbreitet in den USA und international
- **Kein Treffer** in der KBV-Liste deutsch-zertifizierter Software
- Deutsche Lokalisierung und KBV-Zertifizierung müssten vollständig nachgebaut werden

#### Bahmni / OpenMRS (für Low-Resource-Settings)

- Bahmni kombiniert OpenMRS (EMR) + OpenERP (Klinikbetrieb) + OpenELIS (Labor)
- Für ressourcenarme Gesundheitssysteme entwickelt (Indien, Nepal, Afrika)
- **Nicht für deutsche Vertragsarztpraxen geeignet** ohne massive Anpassung

**Quellen:** [Bahmni](https://www.bahmni.org), [OpenMRS Wikipedia](https://en.wikipedia.org/wiki/OpenMRS)

#### openEHR (Standard, nicht PVS)

- Internationaler Standard für strukturierte Gesundheitsdaten, **keine fertige PVS-Software**
- vitagroup HIP hat in Deutschland Deployments in **über 30 Krankenhäusern** mit openEHR + FHIR
- In Deutschland v.a. im Krankenhaussektor (MHH, Uni Heidelberg, HiGHmed)
- **Praxisrelevanz:** Eher als Datenmodell-Backend verwendbar, nicht als fertige PVS

**Quellen:** [vitagroup HIP](https://hip.vitagroup.ag/en/openehr-fhir/), [MHH openEHR](https://www.mhh.de/en/institute-zentren-forschungseinrichtungen/medic/technologies)

### C.3 Internationale Erfolgsfälle und Lehren

#### VistA (USA, Department of Veterans Affairs)

Vermutlich das größte Open-Source-EHR-Projekt der Welt. Wichtige Erkenntnisse:

- **Entwicklung seit 1978** durch VA + Public Health Service + DoD + Indian Health Service
- **2006** Innovations-in-American-Government-Award (Harvard Kennedy School)
- **Kosten-Vergleich:** In einem US-Bundesstaat wurde ein VistA-basiertes Multi-Hospital-Netzwerk für **9 Mio. USD** implementiert, während ein vergleichbares kommerzielles System im selben Staat **90 Mio. USD** kostete (1/10 der Kosten bei 7–8 Krankenhäusern)
- **Komplexität:** VistA ist die einzige Open-Source-Lösung mit hospital-grade Funktionsumfang
- **Erfolgsfaktoren:** Adäquate Ressourcen (Hardware, Bandbreite, Personal), klinische Champions, hochqualifiziertes In-House-Personal
- **Scheitert ohne:** Finanzierung, Stakeholder-Engagement, technische Expertise
- **Aktuelles Risiko:** VistA wird derzeit beim VA durch Oracle Cerner ersetzt (sehr umstritten, viele Probleme)

**Quellen:** [VistA Wikipedia](https://en.wikipedia.org/wiki/VistA), [Open Health News Lessons Learned](https://www.openhealthnews.com/blogs/groenpj/2013-07-06/lessons-learned-implementations-open-ehr-systems), [PMC: Modernizing a National EHR](https://pmc.ncbi.nlm.nih.gov/articles/PMC10593670/)

### C.4 Lehren aus dem öffentlichen Sektor in Deutschland

#### LiMux (München) — Lehrstück über organisatorisches Scheitern

- **2003–2017:** Migration von 15.000+ Desktops auf Linux und OpenOffice
- **2017:** Stadtrat beschließt Rückmigration zu Microsoft (bis 2020)
- **Hauptursache:** **Nicht technische, sondern politische und organisatorische Faktoren**
- **Lehren:**
  - Politische Rückendeckung **über Wahlperioden hinweg** ist Pflicht
  - Nutzer müssen **aktiv eingebunden und geschult** werden, sonst Revolte
  - Ohne klare Champions zerfällt jedes Projekt bei Personalwechsel
  - **Persistenz und parteiübergreifender Konsens** ist Voraussetzung für digitale Souveränität

**Quellen:** [heise: LiMux Lessons](https://www.heise.de/hintergrund/Woran-LiMux-scheiterte-und-was-wir-daraus-lernen-koennen-4881035.html), [LiMux Wikipedia](https://en.wikipedia.org/wiki/LiMux)

#### openDesk / ZenDiS (laufendes Erfolgsmodell)

- **Zentrum für Digitale Souveränität (ZenDiS GmbH)** seit Dezember 2022, 100 % Bund
- **openDesk:** Open-Source-Bürosuite für Verwaltung (openXchange, openProject, Nextcloud, XWiki, Matrix, Jitsi, Collabora)
- **openCode:** Plattform für öffentlichen Open-Source-Code
- Aktiv weiterentwickelt, im SCCON 2024 gelauncht
- **Bisher nicht ausdrücklich auf den Gesundheitssektor erweitert**

**Quellen:** [ZenDiS](https://www.zendis.de/en), [openDesk](https://www.opendesk.eu/en/), [BMI-Initiative SCCON 2024](https://www.digitale-verwaltung.de/SharedDocs/kurzmeldungen/Webs/DV/DE/2024/10_zendis.html)

#### Sovereign Tech Fund / Sovereign Tech Agency

- BMWE-Initiative, jetzt rechtlich verstetigt
- **Budget 2025:** ca. 17 Mio. € (Wachstum von 3,5 Mio. € 2022)
- **Förderprinzip:** Open-Source-Basistechnologien, „Public Money, Public Code"
- **Healthcare-Bezug:** Erwähnt allgemein als förderwürdiger Sektor, **aber kein dediziertes PVS-Programm bekannt**

**Quellen:** [Sovereign Tech Agency](https://www.sovereign.tech/), [BMWE PM Sovereign Tech Fund](https://www.bundeswirtschaftsministerium.de/Redaktion/DE/Pressemitteilungen/2024/11/20241104-sovereign-tech-fund.html)

### C.5 Realistischer Aufwand für ein KBV-zertifiziertes Open-Source-PVS

Auf Basis aller obigen Daten lässt sich der Aufwand grob umreißen:

- **Kern-PVS-Funktionalität (KVDT, Patientenverwaltung, Dokumentation):** 12–24 Personenmonate
- **TI-Anbindung (Konnektor, eGK, KIM):** 18–36 Personenmonate (extrem komplex, Konnektor-Hardware-Spezifikationen)
- **eRezept, eAU, NFDM, ePA, AMTS:** je 6–12 Personenmonate
- **HL7/FHIR-Interoperabilität:** 6–12 Personenmonate
- **KBV-Zertifizierungsprozess (Doku, Audits, Tests):** 6–18 Monate Zeitachse
- **gematik-Bestätigungen:** 600 € + MwSt **pro Fachanwendung**, plus Audit-Aufwand
- **ECC-Migration (Pflicht 01.01.2026):** zusätzlicher Aufwand
- **Wartung/Support nach Release:** mindestens 4–8 VZÄ dauerhaft

**Konservative Mindestschätzung Initialaufwand:** 60–120 Personenjahre Entwicklung + 1–2 Mio. € pro Jahr Wartungsbudget. Ohne Hardware und ohne Marketing.

**Vergleich:** VistA-Entwicklungskosten beim VA über Jahrzehnte werden auf hunderte Mio. USD geschätzt; selbst die VistA-Replikation in einem US-Bundesstaat kostete **9 Mio. USD** für 7–8 Krankenhäuser.

---

## D) Wäre ein Open-Source-PVS eine Entlastung?

### D.1 Theoretische Vorteile

1. **Kostensenkung möglich:** Wegfall von Lizenzgebühren und proprietären Modulgebühren. Bei großflächiger Adoption potenziell **bundesweit dreistelliger Millionen-Euro-Bereich pro Jahr** Einsparung
2. **Datenhoheit und Anpassbarkeit:** Praxen können eigene Workflows realisieren statt Hersteller-Roadmap zu folgen
3. **Kein Vendor-Lock-in:** Datenformate offen, Migration trivial
4. **Transparente Sicherheit:** Code prüfbar, Sicherheitslücken schneller behebbar
5. **Resilienz:** Keine einseitigen Preiserhöhungen wie bei CGM 2023 (+9 %) oder TI-Pauschalen-Umstellungen

### D.2 Realistische Risiken

1. **Bürokratie bleibt:** Open Source senkt **Softwarekosten**, **nicht** die KVDT-/eRezept-/eAU-Pflichten. Die Klick-Belastung käme zu großen Teilen auch bei Open Source
2. **Verantwortung:** Wer haftet bei Datenverlust, Update-Fehlern, Datenschutz-Vorfällen? In kommerziellen Modellen klar geregelt
3. **Update-Disziplin:** KBV erlässt regelmäßig neue Spezifikationen (oft Quartalsweise). Open-Source-Projekte ohne hauptamtliches Team verlieren schnell Anschluss
4. **Hotline und Vor-Ort-Service:** Eine Praxis braucht im Störfall innerhalb von Minuten Hilfe, nicht „Issue auf GitHub eröffnen"
5. **Schulungs-Ökosystem:** Bestehende PVS haben jahrzehntelang gewachsene Trainerszenen
6. **KBV-Zertifizierung:** Prozess strukturiert auf Hersteller mit Rechtspersönlichkeit, Versicherung, Support-Verpflichtung
7. **Politische Diskontinuität:** Lehren aus LiMux — Förderung kann jederzeit gekappt werden

### D.3 Realistische Trägermodelle

1. **Genossenschaft niedergelassener Ärzte** (Vorbild: einige KV-IT-Initiativen)
2. **eingetragener Verein** mit Förderung durch KBV/BMG
3. **gGmbH unter ZenDiS-Schirm** (analog openDesk für Verwaltung)
4. **Sovereign-Tech-Fund-Förderprogramm** (politische Lobbyarbeit nötig)
5. **EU-finanziertes Projekt** im Rahmen Digital Europe / EU4Health

### D.4 Politische Rahmenbedingungen

- **gematik** hat 100 % Bundes-Anteil, könnte theoretisch ein Referenz-PVS verantworten
- **BMG-Digitalisierungsstrategie 2023:** Fokus liegt auf TI 2.0, ePA für alle, eRezept-Pflicht, **nicht** auf Open-Source-PVS
- **ePA für alle:** Seit 2025 automatisch eingerichtet, **80 %** der Versicherten bis Ende 2025 erwartet
- **eRezept:** Pflicht seit **01.01.2024**, **100 Mio. eingelöste eRezepte** bis März 2024
- **Open-Source ist BISHER kein politisches Schwerpunktthema im PVS-Bereich**

**Quellen:** [BMG Digitalisierungsstrategie](https://www.bundesgesundheitsministerium.de/presse/pressemitteilungen/digitalisierungsstrategie-vorgelegt-09-03-2023), [gematik](https://www.gematik.de/), [heise: ePA für alle](https://www.heise.de/news/eHealth-Gesellschafter-der-Gematik-beschliessen-E-Patientenakte-fuer-alle-7332503.html)

---

## E) Einordnung für das Um:bruch-Projekt

### E.1 Möglicher MVP

Ein **vollständiges KBV-zertifiziertes Open-Source-PVS** ist für Um:bruch in absehbarer Zeit **nicht realistisch**. Der Aufwand übersteigt die Ressourcen einer Think-Tank-Initiative um Größenordnungen (vgl. C.5).

**Aber:** Es gibt sinnvolle Zwischenstufen mit geringerem Aufwand und echtem Mehrwert:

1. **Regress-Transparenzportal (Meta-Schicht)** — die ursprünglich vorgeschlagene Lösung
2. **Verordnungs-Plugin / Regress-Check als Browser-Extension** — funktioniert parallel zum bestehenden PVS, liest Verordnungsdaten via KIM/KVDT-Export oder lokalen API-Hook
3. **Regress-Heatmap auf Basis aggregierter KV-Daten** (IFG-getrieben) — bereits Teil der laufenden Arbeit
4. **Open-Source-Bibliothek für KVDT/xDT-Parser** — kleiner Baustein, der Open-Source-PVS erleichtern würde, aber selbst kein Produkt ist

### E.2 Plugin-Strategie statt Vollintegration

Ein **Arzneimittel-Verordnungshelfer als Plugin** wäre der pragmatische Weg:

- **Vorteil 1:** Keine KBV-Zertifizierung erforderlich (Plugin betreibt keine Abrechnung)
- **Vorteil 2:** Adoption in jedem PVS möglich, das KIM/KVDT-Standardexporte unterstützt
- **Vorteil 3:** Direkter Mehrwert für Praxen (Regress-Schutz beim Verordnen)
- **Vorteil 4:** Finanzierungsmodell denkbar (KBV, Sovereign Tech Fund, Förderverein)

**Erforderliche Schnittstellen:**

- **KVDT/xDT-Export** (vorhanden bei allen zertifizierten PVS)
- **AWS-Schnittstelle** (Pflicht seit 01.07.2021)
- **Optional:** lokaler API-Hook in einzelnen PVS (z.B. tomedo, T2med, die offener sind)

### E.3 Eigenständigkeit oder Um:bruch-Projekt?

Drei Optionen:

1. **Um:bruch leitet selbst:** Realistisch nur für Meta-Ebene und Plugin-Konzept. Vollständiges PVS sprengt Kapazitäten
2. **Um:bruch initiiert eine eigene Initiative:** Verein „Open Praxis e.V." als Spin-off mit eigenem Trägermodell. Um:bruch publiziert das Konzept und vernetzt
3. **Um:bruch als Lobbystimme:** Druck auf Sovereign Tech Fund, gematik, BMG, ein eigenes Förderprogramm aufzulegen. Vorbild: openDesk für Verwaltung — analog „openMed" für niedergelassene Ärzte

### E.4 Empfehlung

**Die ursprüngliche Schlussfolgerung „Meta-Schicht statt eigenes PVS" bleibt bestätigt** — mit folgender Schärfung:

- **Kein Vollausbau eines PVS** durch Um:bruch (Aufwand 60–120 Personenjahre, dauerhaft 4–8 VZÄ Wartung)
- **Aber:** Den **strukturellen Missstand benennen** — ein hochkonzentrierter Markt mit 78 % Marktanteil von zwei Anbietern, unzufriedene Praxen, intransparente Preise, hohe Lock-in-Effekte, jährliche Belastung 1.500–10.000+ € pro Praxis
- **Plugin/Meta-Schicht-Strategie** ist realistisch und liefert echten Mehrwert
- **Politische Forderung:** „openMed" als gefördertes Open-Source-PVS unter ZenDiS- oder gematik-Schirm — analog openDesk für Verwaltung. **Diese Forderung kann Um:bruch publizistisch transportieren**, ohne selbst zum PVS-Hersteller zu werden

---

## Zusammenfassung der Belege

| These | Beleg | Quelle |
|-------|-------|--------|
| 78 % Marktdominanz Top-10 | KBV-Statistik 31.03.2024 | [KBV](https://update.kbv.de/ita-update/Service-Informationen/Installationsstatistiken/TOP_20_je_Fachgruppe.pdf) |
| 75 % Praxen unzufrieden | Zi-Studie 2024 (10.245 Bewertungen) | [Zi](https://www.zi.de/das-zi/medien/medieninformationen-und-statements/detailansicht/unzufriedenheit-mit-praxissoftware-nach-wie-vor-weit-verbreitet) |
| TURBOMED Platz 38 von 40 | Zi-Ranking 2025 | [Statis e.V.](https://www.statisev.de/aktuelles/ranking-praxissoftware-zi-studie/) |
| CGM-Preiserhöhung +9 % 2023 | Ärzteblatt | [Ärzteblatt](https://www.aerzteblatt.de/nachrichten/138491/Praxissoftware-Compugroup-erhoeht-Preise) |
| Medical Office 59–109 € netto/Mon | Indamed Preisliste | [Indamed](https://www.indamed.de/preise/) |
| T2med 100 € + 40 € pro Arzt netto/Mon | T2med Website | [T2med](https://t2med.de/) |
| TI-Servicepaket +68,73 € netto/Mon | Ärzteblatt | [Ärzteblatt](https://www.aerzteblatt.de/nachrichten/145096/TI-Pauschale-Compugroup-stellt-Preismodell-um) |
| GNUmed nicht KBV-zertifiziert | medizinio Analyse | [medizinio](https://medizinio.de/blog/arztpraxis-software-kostenlos) |
| VistA 1/10 Kosten vs. proprietär | Open Health News | [openhealthnews.com](https://www.openhealthnews.com/blogs/groenpj/2013-07-06/lessons-learned-implementations-open-ehr-systems) |
| LiMux scheiterte politisch | heise online | [heise](https://www.heise.de/hintergrund/Woran-LiMux-scheiterte-und-was-wir-daraus-lernen-koennen-4881035.html) |
| gematik-Audit 600 € pro Anwendung | gematik Fachportal | [gematik](https://fachportal.gematik.de/hersteller-anbieter/primaersysteme) |
| AWS-Pflicht seit 01.07.2021 | redmedical | [redmedical](https://redmedical.de/2021/12/13/neue-praxissoftware-wie-funktioniert-eine-datenmigration/) |
| ECC-Pflicht ab 01.01.2026 | KBV/Telekonnekt | [telekonnekt](https://www.telekonnekt.de/artikel/praxisverwaltungssystem) |
| Sovereign Tech Fund Budget 17 Mio. € 2025 | Wikipedia | [Wikipedia](https://de.wikipedia.org/wiki/Sovereign_Tech_Fund) |

---

## Methodische Einschränkungen

1. **Marktführer veröffentlichen keine Listenpreise.** Zahlen für TURBOMED, MEDISTAR, ALBIS, x.isynet, x.concept stammen aus Foren, Drittanbietern und älteren Publikationen. Eine flächendeckende Preisrecherche wäre nur über direkte Anfragen oder eine Kassenärztliche-Vereinigung-getriebene Marktabfrage möglich.
2. **Gesamtkosten-Hochrechnungen** sind Spannweiten, keine validierten Mittelwerte. Eine repräsentative Studie zu IT-Gesamtkosten in deutschen Arztpraxen (vergleichbar zu KBV-Honorarverteilung) liegt nicht öffentlich vor.
3. **Aufwand-Schätzungen für Open-Source-PVS** basieren auf Analogien zu VistA, openDesk und Software-Engineering-Erfahrungswerten — keine harte Ausschreibung
4. **Zi-Studie methodisch:** Selbstauskunft, keine Beobachtungsdaten. Die Klick-/Zeit-Korrelationen sind statistisch belegt, aber individuelle Workflow-Faktoren nicht kontrolliert

---

*Recherche durchgeführt am 08.04.2026 für das Um:bruch Regress-Melder-Projekt. Alle Quellen wurden via WebSearch und WebFetch geprüft. Beträge stammen aus Hersteller-Webseiten, Forenberichten oder verifizierten Drittquellen. Keine Halluzinationen.*
