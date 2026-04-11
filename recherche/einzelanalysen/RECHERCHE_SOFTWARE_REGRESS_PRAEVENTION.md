# Recherche: Software zur Regress-Prävention für Ärzte in Deutschland

**Datum:** 2026-04-08
**Auftrag:** Um:bruch Think Tank / Projekt Regress-Transparenzportal
**Bearbeiter:** Claude (CL) im Auftrag von LG
**Status:** Erstrecherche, verifizierbare Quellen
**Zweck:** Grundlagenrecherche für Konzept "Regress-Transparenzportal" und Entscheidung über möglichen Open-Source-Lückenschluss

---

## 1. Executive Summary

Die Regress-Prävention für niedergelassene Ärzte in Deutschland wird heute im Wesentlichen durch drei Schichten adressiert:

1. **Gesetzlich verpflichtete Module in jedem KBV-zertifizierten PVS** (§ 73 SGB V, § 35a SGB V, EAMIV) – Pflichtfunktionen wie Verordnungsausschlüsse, AMTS-Check, Arzneimittelinformationssystem (AIS), Rabattvertragskennzeichnung, Kodierhilfe.
2. **Kommerzielle Zusatzmodule und Datenlieferanten** (ifap praxisCENTER, Vidal MMI data4doc, MediSuite, ABDATA Lauer-Taxe) – liefern die tatsächlichen Arzneimittel-Stammdaten, AMTS-Engines (i:fox, THERAFOX PRO), Verordnungsassistenten.
3. **Redaktionelle Informationsdienste ohne technische Integration** (DeutschesArztPortal/Rp.-Institut, KV-Newsletter, Rp. Regress-Check, Rp. Regress-Radar) – rein informativ, keine PVS-Anbindung.

**Kernbefund:** Es existiert **keine integrierte, herstellerunabhängige, öffentliche und transparente** Software, die Regressfälle **sammelt, auswertet und als Frühwarnsystem** zurückspielt. Alle proprietären Systeme sind Hersteller-Silos. Open-Source-Lösungen (GNUmed, Elexis) sind in Deutschland marginal bis nicht einsetzbar (fehlende KBV-Zertifizierung für den kompletten GKV-Workflow).

---

## 2. Gesetzlicher Rahmen (Pflichtfunktionen in PVS)

Jedes in Deutschland zugelassene PVS muss folgende Funktionen **zwingend** mitbringen (KBV-Zertifizierung nach § 291d SGB V, § 332b SGB V):

| Pflichtfunktion | Rechtsgrundlage | In Kraft seit |
|---|---|---|
| Kennzeichnung von Verordnungsausschlüssen (AM-Richtlinie) | § 73 SGB V, Anforderungskatalog KBV | laufend |
| Kennzeichnung fehlender therapiegerechter Packungsgrößen | § 73 SGB V | laufend |
| Arzneimittelinformationssystem (AIS) – G-BA-Nutzenbewertungen | § 35a SGB V, EAMIV | 01.10.2020 |
| Arzneimitteltherapiesicherheit (AMTS-Check, Interaktionen, Kontraindikationen) | § 31a SGB V | laufend |
| Digitale Kodierhilfe (ICD-10-GM) | KBV-Anforderungskatalog | 01.01.2022, Erweiterung Jan 2025 |
| Monatliches Update der Arzneimittelstammdaten | AVWG, KBV-Vorgabe | verpflichtend |
| E-Rezept inkl. FHIR-Schnittstelle | § 360 SGB V | 01.01.2024 |

**Wichtig:** Diese Pflichtfunktionen sind rein regelbasiert. Eine **Richtgrößen-Echtzeitwarnung** ist **nicht** Pflichtteil. Die Kodierhilfe deckt aktuell nur wenige Indikationen ab (Herzinfarkt, Schlaganfall, Diabetes, Folgen Hypertonie – Stand Jan 2025).

Quelle: [KBV – Infos für IT-Anbieter](https://www.kbv.de/infothek/ita), [KVMV – AIS in Praxissoftware](https://www.kvmv.de/service/verordnungsinformationen/eintrag/Einfuehrung-eines-Arzneimittelinformationssystem-in-die-Praxissoftware-ab-Oktober-2020), [G-BA AIS](https://www.g-ba.de/themen/arzneimittel/arzneimittel-richtlinie-anlagen/nutzenbewertung-35a/ais/), [aerzteblatt.de – Arzneiverordnungssoftware: Neue Anforderungen](https://www.aerzteblatt.de/archiv/127097/Arzneiverordnungssoftware-Neue-Anforderungen).

---

## 3. Der deutsche PVS-Markt (Top 10, Stand 31.03.2024)

Die KBV listet insgesamt **132 zertifizierte Produkte**. Die zehn meistinstallierten PVS decken zusammen **78,6 % Marktanteil**.

| Rang | Produkt | Hersteller | Anteil (ca.) | Regress-relevante Zusatzfunktionen |
|---|---|---|---|---|
| 1 | CGM TURBOMED | CompuGroup Medical (CGM) | 12,0 % | ifap praxisCENTER premium + THERAFOX PRO AMTS, i:fox®, HzV-S3C-Medikationskatalog (IMM) |
| 2 | CGM MEDISTAR | CompuGroup Medical | 10,9 % | ifap, AIS, S3C-zertifiziert |
| 3 | x.isynet | medatixx | 9,0 % | Verordnungsmodul (Q4 2020 neu), ifap-Integration |
| 4 | CGM ALBIS | CompuGroup Medical | – | S3C-zertifiziert, ifap |
| 5 | medatixx | medatixx | – | Verordnungsmodul, ifap |
| 6 | Quincy Win / Quincy PVS | FRey ADV | – | Standard-PVS, ifap |
| 7 | Duria | Duria eG | – | Genossenschaftlich, ifap |
| 8 | DOCexpert / DOCconcept | CompuGroup Medical | – | ifap, AIS |
| 9 | tomedo | zollsoft | – | Wachsend, Mac-native, ifap |
| 10 | psyprax / profimed / T2med | div. | – | ifap-Schnittstelle vorhanden |

**Beobachtung:** Der Markt ist stark **CGM-lastig** (CGM stellt TURBOMED, MEDISTAR, ALBIS, COMPUMED M1, DOCexpert). Mit medatixx (x.isynet, medatixx) decken **zwei Konzerne über die Hälfte des Marktes** ab. Alle binden dieselben Arzneimitteldatenbanken an (ifap, ABDATA/Lauer-Taxe, MMI Vidal).

Quellen: [KBV TOP 20 je Fachgruppe](https://update.kbv.de/ita-update/Service-Informationen/Installationsstatistiken/TOP_20_je_Fachgruppe.pdf), [Praxisärzte-Blog: PVS-Vergleich 2026](https://www.virchowbund.de/praxisaerzte-blog/praxissoftware-vergleich-wer-ist-der-beste-anbieter-2026), [medizinio PVS-Vergleich](https://medizinio.de/software/praxis), [CGM TURBOMED Produktinfo](https://www.cgm.com/_Resources/Persistent/4afaf63303b4a817e03d1ca7545be1336b96aa6e/CGM%20TURBOMED-Produktinformation.pdf), [gevko S3C-Zertifizierung](https://www.gevko.de/aktuelles/erfolgreich-zertifiziert-fuer-s3c-die-arztinformationssysteme-albis-compumed-m1-medistar-und-turbomed).

---

## 4. Drittanbieter-Verordnungssoftware (PVS-unabhängig oder Add-on)

### 4.1 ifap praxisCENTER (ifap Service-Institut, CGM-Tochter)

- **Funktion:** Arzneimitteldatenbank + Verordnungsassistent, eingebettet in >60 PVS als White-Label-Modul.
- **Features:** AMTS-Check i:fox® (Interaktionen, Kontraindikationen, Allergie-/Schwangerschaftsrisiko), THERAFOX PRO, Rabattvertragsanzeige (RV-Spalte), Verordnungsausschlüsse/-einschränkungen, Hinweise zu Nutzenbewertung und Praxisbesonderheiten, Navigator mit Darreichungsform/Menge/Zuzahlung.
- **Reichweite:** "Jeder zweite niedergelassene Arzt in Deutschland".
- **Preis:** Lizenzmodell über PVS-Hersteller, nicht öffentlich gelistet.
- **Regress-Prävention:** Wirtschaftlichkeitshinweise werden gekennzeichnet, **aber die Aktualisierung nach G-BA-Beschlüssen dauert 3 bis 6 Monate** – dies ist ein von der KBV kritisierter Engpass (siehe Abschnitt 8).

Quelle: [ifap praxisCENTER](https://www.ifap.de/deu_de/fuer-aerzte/ifap-praxiscenter.html), [MedEcon Ruhr – ifap AMTS](https://medecon.ruhr/2023/03/arzneimitteltherapiesicherheit-so-helfen-die-digitalen-loesungen-von-ifap-in-praxisverwaltungssystemen/), [DeutschesArztPortal – Verordnungssoftware](https://www.deutschesarztportal.de/interaktiv/rp-newsletter/archiv/detail/verordnungssoftware-nutzen-sie-die-unterstuetzung).

### 4.2 data4doc (Vidal MMI Germany GmbH)

- **Funktion:** KBV-zertifizierte Verordnungs- und Recherchesoftware mit FHIR-PVS-Schnittstelle, AMTS-Service als Medizinprodukt.
- **Features:** E-Rezept, Medikationsplan, intuitive Arzneimittelsuche, automatischer Interaktions-/Kontraindikationscheck über MMI-AMTS-Service.
- **Preis:** **14,50 EUR/Monat pro Arzt** für GKV-Verordnungspraxen. Recherche-Modul kostenlos mit Registrierung.
- **Vertragslaufzeit:** 12 Monate, Kündigung 3 Monate zum Ende.
- **Regress-Prävention:** AMTS-Fokus, keine Richtgrößenwarnung, kein Regress-Frühwarnsystem.

Quelle: [data4doc – Vidal MMI](https://www.mmi.de/data4doc), [Gelbe Liste: data4doc](https://www.gelbe-liste.de/nachrichten/data4doc-verordnungssoftware-aerzte), [Pressemitteilung Vidal MMI 01.04.2021](https://mmi.mmi-cms.de/documents/pm_vidal-mmi_data4doc-verordnungssoftware_01.04.2021.pdf).

### 4.3 MediSuite (PAV / HASOMED)

- **Funktion:** KBV-zertifizierte Verordnungssoftware für Muster 16, BTM, T-Rezept, Privatrezept, E-Rezept, grünes Rezept, DiGA.
- **Features:** Freitextsuche aller verordnungsfähigen Produkte in DE, Erkennung von Wechselwirkungen/Kontraindikationen/nicht-altersgerechter Medikation/Doppelverordnungen, Medikationsplan, Hausapotheke, DiGA-Modul, Hinweise zu ARV-Regelungen, G-BA-Hinweisen, Rabattverträgen, Rote-Hand-Briefen.
- **Preis:** **ab 19,90 EUR/Monat** (je Praxisgröße).
- **Regress-Prävention:** Standard-Warnungen, keine proaktive Regress-Analyse.

Quelle: [MediSuite Verordnungssoftware](https://www.medisuite.de/verordnungssoftware), [MediSuite Preisübersicht PDF](https://www.medisuite.de/fileadmin/user_upload/Default/Metamenu/Preisuebersicht.pdf), [PAV Praxissoftware](https://www.pav.de/praxissoftware/verordnungssoftware).

### 4.4 ABDATA Pharma-Daten / Lauer-Taxe

- **Funktion:** Arzneimittel-Stammdatenlieferant, keine Endanwender-Software, aber **Datengrundlage** praktisch aller PVS und Kassen-Prüfsysteme.
- **Umfang:** ca. 700.000 Artikel, Apotheken-EK/VK, Klinik-EK, Hersteller-Preise, PZN, Packungsgrößen, Abgabebestimmungen, Lieferverträge je Bundesland, Rabattverträge, Indikationen.
- **Update:** 14-täglich (1. und 15. des Monats).
- **Nutzung:** Krankenkassen-Mitarbeiter führen damit Wirtschaftlichkeitsprüfungen von Verordnungen durch (Preisvergleich Original/Generika/Import). Für die Regress-Prävention relevant, weil **exakt diese Daten auch im PVS sichtbar sein müssen**.

Quelle: [ABDATA ABDA-Artikelstamm](https://abdata.de/produkte/abda-artikelstamm/), [Lauer-Taxe – Wikipedia](https://de.wikipedia.org/wiki/Lauer-Taxe), [go.pharmazie.com](https://go.pharmazie.com/de/arzneimittel-rohdatenlizenzen/).

### 4.5 Rp. Regress-Check / Regress-Radar / Rezeptfibel (DAP Networks GmbH, Rp. Institut)

- **Status:** **Kein Softwaremodul, keine PVS-Integration**, sondern webbasiertes Informations- und Community-Angebot. Der einzige in Deutschland auffindbare Dienst, der den Begriff "Regress" explizit im Produktnamen trägt.
- **Rp. Regress-Check:** Web-Tool, das Ärzte durch "das komplexe Geflecht der Verordnungsvoraussetzungen" führt. Details nicht öffentlich einsehbar, Kontakt über Rp. Institut / info@extrarpinstitut.com.
- **Rp. Regress-Radar:** Sammelt Erfahrungsberichte von Ärzten mit Prüfungen/Regressen, damit Kollegen lernen können. Crowdsourcing-Ansatz, aber keine öffentliche Datenbank.
- **Rp. Rezeptfibel:** Kostenlose PDF-Praxishilfe, zuletzt aktualisiert März 2025. Behandelt E-Rezept, Muster 16, BTM, Verbandstoffe, Teststreifen.
- **Rp. Praxis-Newsletter:** Zweimal wöchentlich, informiert über regelkonforme Verordnung.
- **Preis:** Nicht öffentlich, teils kostenlos (Rezeptfibel, Newsletter), teils auf Anfrage.
- **Betreiber:** DAP Networks GmbH / Rp. Institut (gegründet 2014).

**Dies ist der Aspekt der bestehenden Landschaft, der dem Um:bruch-Konzept am nächsten kommt – aber ausschließlich als kommerzieller, proprietärer und nicht öffentlich einsehbarer Erfahrungspool.**

Quelle: [Rp. Regress-Radar](https://www.deutschesarztportal.de/interaktiv/rp-regress-radar), [Rp. Regress-Check – DAP Networks](https://www.dap-networks.de/nachrichten/detail/mehr-verordnungssicherheit-der-rp-regress-check), [Rp. Institut](https://www.dap-networks.de/rp-institut), [Rezeptfibel PDF](https://www.deutschesarztportal.de/download/public/verordnung-und-erstattung/rp_rezeptfibel.pdf).

---

## 5. Funktionsvergleich: Was leisten die Tools konkret?

Die folgende Tabelle vergleicht die genannten Produkte hinsichtlich der vom User definierten Prüfkriterien. **Leer = nicht vorhanden oder nicht öffentlich dokumentiert.**

| Kriterium | CGM (Turbomed/Medistar/Albis) | medatixx x.isynet | ifap praxisCENTER | data4doc | MediSuite | Rp. Regress-Check | GNUmed | Elexis |
|---|---|---|---|---|---|---|---|---|
| KBV-zertifiziertes PVS | Ja | Ja | Nein (Modul) | Nein (reine Verordnung) | Nein (reine Verordnung) | Nein (Web) | Nein | Nein (AT/CH) |
| ICD-Kodierhilfe integriert | Ja (Pflicht) | Ja (Pflicht) | – | – | – | Nein | teilweise | teilweise |
| Automatische ICD-Vorschläge | eingeschränkt (nur wenige Indikationen) | eingeschränkt | – | – | – | Nein | Nein | Nein |
| AMTS / Interaktionscheck | Ja (i:fox, THERAFOX PRO) | Ja (ifap) | Ja (i:fox Kern) | Ja (MMI-AMTS) | Ja (eigene Engine) | Nein | rudimentär | rudimentär |
| Rabattvertrag-Anzeige | Ja (über ifap) | Ja (über ifap) | Ja (RV-Spalte) | Ja | Ja | Nein | Nein | Nein |
| Verordnungsausschlüsse/-einschränkungen | Ja (Pflicht) | Ja (Pflicht) | Ja | Ja | Ja | informativ | Nein | Nein |
| Praxisbesonderheiten-Dokumentation | Nein (nur Freitext) | Nein (nur Freitext) | Nein | Nein | Nein | informativ | Nein | Nein |
| Richtgrößen-/Budget-Warnung in Echtzeit | **Nein** (nur Statistik-Modul, quartalsweise) | **Nein** | **Nein** | **Nein** | **Nein** | **Nein** | **Nein** | **Nein** |
| EBM-Ziffern-Unterstützung / Kalkulationszeiten | Ja | Ja | – | – | – | Nein | Nein | Nein |
| Verordnungs-Historie mit Risiko-Score | **Nein** | **Nein** | **Nein** | **Nein** | **Nein** | **Nein** | **Nein** | **Nein** |
| Transparente Regressfall-Datenbank | **Nein** | **Nein** | **Nein** | **Nein** | **Nein** | teilweise (closed, proprietär) | **Nein** | **Nein** |
| Herstellerunabhängig | Nein | Nein | teilweise (Modul-White-Label) | ja | ja | ja | ja (OSS) | ja (OSS) |
| Open Source | Nein | Nein | Nein | Nein | Nein | Nein | **Ja** (GPL) | **Ja** (LGPL/EPL) |

**Konsequenz:** Bei drei der wichtigsten vom User gefragten Funktionen – **Richtgrößenwarnung in Echtzeit**, **Verordnungs-Historie mit Risiko-Score**, **öffentliche Regressfall-Datenbank** – ist am Markt **nichts** verfügbar.

---

## 6. Open-Source-Lösungen für deutsche Arztpraxen

### 6.1 GNUmed

- **Lizenz:** GPL
- **Plattform:** Linux, Windows, macOS, PostgreSQL-Backend
- **Entwicklung:** Seit ~2000, deutschsprachige Community (gnumed.de, Wiki)
- **Features:** Patientendokumentation, Medikationsverwaltung, Befunddoku, Basis-Terminverwaltung, kryptografisch signierter Änderungslog ("digital notary"), keine Datenlöschung.
- **Status in Deutschland:** **Nicht KBV-zertifiziert**. Ohne Zertifizierung nach § 295 SGB V / § 332b SGB V darf eine Praxis keine GKV-Leistungen darüber abrechnen. Keine deutsche Arzneimitteldatenbank angebunden. Regelprüfung bei Codeeingabe, Diskettenerstellung (historisch), Medikamenten-/Kodestatistiken fehlen. De facto **nicht praxisproduktiv in DE einsetzbar**, eher für Forschung, Lehre, Praxen außerhalb GKV.

Quelle: [Ärzteblatt – GNUmed: Eine offene Praxissoftware für den Arzt](https://www.aerzteblatt.de/archiv/gnumed-eine-offene-praxissoftware-fuer-den-arzt-9ddb4685-2665-4581-841a-caf416d9f935), [Ärzteblatt – Freie Software: Open Source statt Blackbox](https://www.aerzteblatt.de/archiv/freie-software-in-der-arztpraxis-open-source-statt-blackbox-c3e1f667-b539-4e41-906b-724fa0530b86), [gnumed.de](https://www.gnumed.de/), [medizinio: Kostenlose Praxissoftware](https://medizinio.de/blog/arztpraxis-software-kostenlos).

### 6.2 Elexis

- **Lizenz:** EPL (Open Source)
- **Ursprung:** Dr. Gerry Weirich (CH), vorrangig Schweiz/Österreich
- **Status in Deutschland:** **KV-Abrechnungsmodul existiert**, aber Zertifizierungsstatus unklar und nicht durchgehend gepflegt. Für deutsche Vollpraxis keine produktive Empfehlung.

Quelle: [Elexis – Wikipedia](https://de.wikipedia.org/wiki/Elexis_Arztpraxis-Software), [Medelexis OpenSource](https://medelexis.ch/opensource/).

### 6.3 OpenEMR (international)

- **Lizenz:** GPL
- **Status:** Weltweit verbreitet, in DE **keine KBV-Zertifizierung**, keine GKV-Abrechnung, keine deutsche Arzneimitteldatenbank. International für Privatpraxen / Forschung geeignet.

Quelle: [OpenEMR.org](https://www.open-emr.org/), [OpenEMR-Wiki](https://www.open-emr.org/wiki/index.php/OpenEMR_Features).

### 6.4 MediDusa (kardiologisches Dokumentationsprojekt)

- **Status:** Open-Source-Initiative für ärztliche Primärdokumentation (siehe Ärzteblatt-Artikel), fokussiert auf Transparenz in der Patientendoku, **nicht auf Regress-Prävention**.

Quelle: [Ärzteblatt – MediDusa](https://www.aerzteblatt.de/archiv/open-source-projekt-medidusa-transparenz-durch-aerztliche-primaerdokumentation-76a1030c-84bb-4b01-99bf-89592a927384).

**Zwischenfazit:** Es gibt **keine produktiv einsetzbare, KBV-zertifizierte Open-Source-Praxissoftware in Deutschland**. Der Versuch, per Open Source ein Vollsystem zu schaffen, scheitert historisch an Zertifizierungskosten, Arzneimittel-Lizenzkosten (ABDATA/ifap) und der Personalintensität der Pflege des KBV-Anforderungskatalogs.

---

## 7. Internationale Vergleichsprojekte (Open Source, Regress-/Verordnungs-Transparenz)

### 7.1 OpenPrescribing.net (UK, Bennett Institute, University of Oxford)

- **Trägerschaft:** Bennett Institute for Applied Data Science, Nuffield Department of Primary Care Health Sciences, University of Oxford
- **Zielgruppe:** NHS-GP-Praxen, NHS-Trusts, Öffentlichkeit
- **Funktion:** Öffentliche, interaktive Plattform zur Auswertung **aller NHS-GP-Verordnungsdaten** Englands. Identifiziert Praxen/Regionen, die bei Effektivität, Sicherheit und Kosten von Verordnungen "Outlier" sind. Erweiterung um "OpenPrescribing Hospitals" (medRxiv 2025).
- **Lizenz:** Open, Daten offen.
- **Nutzung:** Vom NHS selbst zur Identifikation unsicherer oder unwirtschaftlicher Verordnung eingesetzt. Spart nachweislich Kosten und erhöht Sicherheit.
- **Bedeutung für Um:bruch:** **Dies ist das stärkste internationale Vorbild** für ein Transparenz-/Monitoring-Portal für Verordnung. Es zeigt: Ein öffentliches, datengetriebenes Feedback-System funktioniert im NHS-Kontext – fehlt aber komplett in DE, u.a. weil es in DE keine öffentlich zugänglichen Verordnungs-Routinedaten auf Praxisebene gibt.

Quelle: [OpenPrescribing.net](https://openprescribing.net/), [Bennett Institute – OpenPrescribing](https://www.bennett.ox.ac.uk/openprescribing/), [NDPCHS – OpenPrescribing Impact](https://www.phc.ox.ac.uk/about/impact/openprescribing-putting-data-and-statistics-into-action-to-save-the-nhs-money), [medRxiv 2025 – OpenPrescribing Hospitals](https://www.medrxiv.org/content/10.1101/2025.11.13.25340060v1).

### 7.2 ePRaSE (Electronic Prescribing Risk and Safety Evaluation, NHS)

- **Funktion:** Web-Tool mit Verordnungs-Szenarien zur Bewertung der Sicherheit elektronischer Verordnungssysteme (Benchmarking).
- **Lizenz:** Teilweise open (Framework).
- Quelle: [NHS SBS – Medicines Optimisation Prescribing Decision Support Systems 3 Framework](https://www.sbs.nhs.uk/services/framework-agreements/medicines-optimisation-prescribing-decision-support-systems-3/).

### 7.3 OpenEMR (USA, global)

Siehe 6.3 – in DE nicht regresspräventions-relevant.

---

## 8. Kritik aus Ärzteschaft und Verbänden (was wird gewünscht?)

### 8.1 KBV-Kritik an Umsetzungszeit

**Kernaussage:** "Wirtschaftlichkeitshinweise müssen durch die Softwareanbieter in die Verordnungssoftware übernommen werden – mit einer Umsetzungsdauer von **drei bis sechs Monaten**. Ärzte können nicht mehr ohne Weiteres beurteilen, ob ein Arzneimittel teurer oder günstiger ist, es entsteht eine erhebliche zeitliche Lücke und das Regressrisiko steigt enorm." (KBV)

Die KBV fordert eine gesetzliche Klarstellung, Regresse auf die **Differenz** zwischen tatsächlichen und wirtschaftlichen Kosten zu begrenzen.

Quelle: [Ärzteblatt – Wirtschaftlichkeitsprüfung: Höhe der Regresszahlungen sinkt](https://www.aerzteblatt.de/archiv/wirtschaftlichkeitspruefung-hoehe-der-regresszahlungen-sinkt-d730c7a9-1803-4e17-a9b4-92a3565e6e00), [Ärzteblatt – "Kein Arzt wird für seine teuren Patienten bestraft"](https://www.aerzteblatt.de/archiv/wirtschaftlichkeitspruefung-kein-arzt-wird-fuer-seine-teuren-patienten-bestraft-00655c43-5dbb-426b-a8c6-0c6300ae1335).

### 8.2 Medical-Tribune-Kritik: "Verordnungshilfe oder Regressfalle?"

Titel eines Fachartikels: **"Arzneiinformationssystem: Verordnungshilfe oder Regressfalle?"** – Die Redaktion dokumentiert, dass das AIS von Ärzten teils als **zusätzliche Unsicherheit** wahrgenommen wird, nicht als Sicherheit. Auch Heilmittel-Software "macht es Ärzten nur scheinbar leichter".

Quelle: [Medical Tribune – Arzneiinformationssystem: Verordnungshilfe oder Regressfalle?](https://www.medical-tribune.de/praxis-und-wirtschaft/abrechnung/artikel/arzneiinformationssystem-verordnungshilfe-oder-regressfalle), [Medical Tribune – Heilmittelverordnung und Software](https://www.medical-tribune.de/praxis-und-wirtschaft/verordnungen/artikel/regressrisiko-heilmittelverordnung-und-software-machens-aerzten-nur-scheinbar-leichter).

### 8.3 Virchowbund: keine konkrete Software-Empfehlung

Der Virchowbund, einer der größten Berufsverbände niedergelassener Ärzte, gibt in seinem Regress-Ratgeber **keine Software-Empfehlung**, sondern nur generische Hinweise ("nutzen Sie das Statistikprogramm Ihres PVS", "achten Sie auf EBM-Kalkulationszeiten"). Empfohlen wird stattdessen eine **Regressversicherung** über den Versicherungspartner Ecclesia Med.

Quelle: [Virchowbund – Regress vermeiden als Arzt](https://www.virchowbund.de/praxis-knowhow/abrechnung-finanzen/regress).

### 8.4 Wunschliste aus Foren/Publikationen (extrahiert)

Aus den gesichteten Quellen kristallisieren sich wiederkehrende Wünsche heraus:

1. **Echtzeit-Richtgrößenstatus** bei jeder Verordnung, nicht erst quartalsweise.
2. **Praxisbesonderheiten strukturiert** dokumentieren (nicht Freitext in Akte), exportierbar für Widerspruchsverfahren.
3. **Verordnungs-Historie mit Risiko-Score** (z.B. "Diese Wirkstoff-Indikations-Kombination hat in X % der Prüfungen zu Regress geführt").
4. **Transparente, öffentliche Datenbank entschiedener Regressfälle** (Prüfausschüsse, Beschwerdeausschüsse, Sozialgerichte) – analog zu Urteilsdatenbanken.
5. **Unabhängigkeit von Herstellern** – Misstrauen gegenüber CGM-Monopol und verzögerten Updates.
6. **Frühwarnung bei neuen G-BA-Beschlüssen** schneller als die aktuellen 3–6 Monate.
7. **Gleichbehandlung innerhalb Fachgruppe sichtbar** (ähnlich OpenPrescribing UK).

---

## 9. Explizite Lückenanalyse

| Bedarf | Vorhanden? | Wo? | Lücke? |
|---|---|---|---|
| AMTS-Check (Interaktionen, KI) | Ja | alle PVS, ifap, data4doc, MediSuite | Keine |
| ICD-Kodier-Check | Teilweise (seit Jan 2022/2025) | alle PVS | Noch dünn (nur wenige Indikationen) |
| Rabattvertragsanzeige | Ja | ifap, MediSuite, data4doc | Keine |
| AIS / G-BA-Nutzenbewertung | Ja (Pflicht seit 10/2020) | alle PVS | Aktualitätslücke 3–6 Monate |
| Richtgrößenwarnung in Echtzeit | **NEIN** | – | **GROSSE LÜCKE** |
| Praxisbesonderheiten strukturiert | **NEIN** | – | **LÜCKE** |
| Öffentliche Regressfall-Datenbank | **NEIN** | Rp. Regress-Radar closed, proprietär | **GROSSE LÜCKE** |
| Verordnungs-Risiko-Score | **NEIN** | – | **GROSSE LÜCKE** |
| Herstellerunabhängiges Benchmarking | **NEIN** | OpenPrescribing nur UK | **GROSSE LÜCKE** |
| Open-Source-Komplett-PVS in DE | **NEIN** | GNUmed/Elexis nicht zertifiziert | strukturelle Lücke |

---

## 10. Bewertung: Ist ein Um:bruch-Open-Source-Projekt sinnvoll?

### 10.1 Was NICHT sinnvoll ist

- **Ein eigenes Vollständiges Open-Source-PVS** zu bauen – dies scheitert historisch (GNUmed seit 25 Jahren nicht KBV-zertifiziert). Kosten für Zertifizierung, ABDATA-Lizenzen und Anforderungspflege sind ohne industriellen Hintergrund nicht stemmbar.
- **Ein eigenes AMTS-Modul** – i:fox, MMI, MediSuite decken das ab, medizinrechtlich heikel (Medizinprodukt-Regulierung).

### 10.2 Was SINNVOLL und machbar wäre

Ein **Regress-Transparenzportal** als **Meta-Schicht** über die bestehende Landschaft – also genau das, was das Um:bruch-Ausgangskonzept vorsieht:

1. **Öffentliche, anonymisierte Regressfall-Datenbank** – crowdsourced (wie Rp. Regress-Radar, aber offen, transparent, Open Data).
2. **Entscheidungsdatenbank** der Prüf- und Beschwerdeausschüsse sowie Sozialgerichtsurteile zum Thema Wirtschaftlichkeitsprüfung (teils öffentlich zugänglich, aber nicht aggregiert).
3. **Fachgruppen-Benchmark** analog OpenPrescribing.net (soweit Datenbasis in DE verfügbar: GKV-Arzneiverordnungsreport, GKV-AMR, Transparenzdaten).
4. **Browser-Extension oder Desktop-Begleit-Tool**, das parallel zum PVS eine Verordnung "im Hintergrund" gegen öffentliche Regelwerke prüft und einen Risk-Hinweis gibt, **ohne** Patientendaten zu verlassen (lokale Prüfung).
5. **API-Bereitstellung** der öffentlichen G-BA-AIS-XML-Dateien in Echtzeit (aktuell 3–6 Monate PVS-Lag), so dass Ärzte sie sofort nach Veröffentlichung sehen – Lückenfüllung der von KBV selbst kritisierten Wartezeit.
6. **Community-Wiki** mit juristisch verifizierten "Praxisbesonderheiten-Mustern" pro Fachgruppe, Musterwidersprüchen, Urteils-Summaries.
7. **Transparenzbericht**: jährlicher Report "Regresse in DE" – aggregiert, öffentlich, Schwerpunkt auf Ungleichbehandlung zwischen KVen.

### 10.3 Juristisch-ethische Grenzen

- **Keine Patientendaten** – jede Software, die Patienten-bezogen arbeitet, fällt unter MPDG, MDR, DSGVO Art. 9.
- **Keine Empfehlung "nicht verordnen"** – rechtlich heikel (Fernbehandlung, Heilbehandlungsmonopol).
- **Keine Datenbeschaffung aus GKV-Routinedaten** ohne § 303-SGB-V-Verfahren – die Transparenz, die OpenPrescribing in UK leistet, ist in DE datenschutzrechtlich nicht 1:1 möglich, solange das Forschungsdatenzentrum Gesundheit (FDZ) nicht öffnet.
- **Fokus auf öffentlich verfügbare Daten** – G-BA-Beschlüsse (offen), Sozialgerichtsurteile (offen), KBV-Installationsstatistiken (offen), Arzneiverordnungsreport (offen), Rabattverträge (teils offen).

### 10.4 Fazit zur Sinnhaftigkeit

**Ja, ein Open-Source-Projekt von Um:bruch ist sinnvoll** – aber nicht als Konkurrenz zu proprietären PVS, sondern als **öffentliches Transparenz- und Community-Portal** mit folgenden Eigenschaften:

- Meta-Schicht, kein PVS-Ersatz
- Fokus auf öffentliche Daten (G-BA, Sozialgerichte, Arzneiverordnungsreport)
- Crowdsourced Regressfall-Erfahrungsberichte (offen statt closed wie Rp. Regress-Radar)
- Fachgruppen-Benchmark im Stil OpenPrescribing.net
- Juristisch wasserdicht durch Verzicht auf Patientendaten und Heilbehandlungs-Empfehlungen
- Open-Data-First-Prinzip

Die **Lücke ist groß, konkret benannt, von Ärzteschaft und KBV selbst bestätigt** – und wird von keinem existierenden Akteur in freier, transparenter Form adressiert. Das einzige vergleichbare deutsche Angebot (Rp. Regress-Radar) ist geschlossen und kommerziell.

---

## 11. Empfohlene Quellen-Kernliste

Für die weitere Ausarbeitung des Konzepts besonders relevant:

### Primärquellen (amtlich/verbindlich)
- [KBV – Praxisverwaltungssystem](https://www.kbv.de/praxis/digitalisierung/praxisverwaltungssystem)
- [KBV – IT in der Arztpraxis (Infothek)](https://www.kbv.de/infothek/ita)
- [KBV – Verzeichnis zertifizierter Software (Übersichtsmatrix)](https://update.kbv.de/ita-update/Service-Informationen/Zulassungsverzeichnisse/KBV_ITA_SIEX_Verzeichnis_Zert_Software.pdf)
- [KBV – Verzeichnis zertifizierter Arzneimittelsoftware (AVWG)](https://update.kbv.de/ita-update/Service-Informationen/Zulassungsverzeichnisse/KBV_ITA_SIEX_Verzeichnis_AVWG.pdf)
- [KBV – Anforderungskatalog ICD-10](https://update.kbv.de/ita-update/Abrechnung/KBV_ITA_VGEX_Anforderungskatalog_ICD-10.pdf)
- [G-BA – AIS Nutzenbewertung § 35a SGB V](https://www.g-ba.de/themen/arzneimittel/arzneimittel-richtlinie-anlagen/nutzenbewertung-35a/ais/)
- [BMG – Richtgrößen und Wirtschaftlichkeitsprüfung](https://www.bundesgesundheitsministerium.de/service/begriffe-von-a-z/r/richtgroessen-und-wirtschaftlichkeitspruefung.html)
- [KV Berlin – Wirtschaftlichkeitsprüfung](https://www.kvberlin.de/fuer-praxen/alles-fuer-den-praxisalltag/verordnung/wirtschaftlichkeitspruefung)
- [KV Baden-Württemberg – Regressgefahr](https://www.kvbawue.de/praxis/verordnungen/arzneimittel/regressgefahr)
- [KV Baden-Württemberg – Praxisbesonderheiten](https://www.kvbawue.de/praxis/verordnungen/arzneimittel/praxisbesonderheiten)

### Fachpresse und Kritik
- [Ärzteblatt – Wirtschaftlichkeitsprüfung: Höhe der Regresszahlungen sinkt](https://www.aerzteblatt.de/archiv/wirtschaftlichkeitspruefung-hoehe-der-regresszahlungen-sinkt-d730c7a9-1803-4e17-a9b4-92a3565e6e00)
- [Ärzteblatt – Arzneiverordnungssoftware: Neue Anforderungen](https://www.aerzteblatt.de/archiv/127097/Arzneiverordnungssoftware-Neue-Anforderungen)
- [Ärzteblatt – GNUmed: Eine offene Praxissoftware für den Arzt](https://www.aerzteblatt.de/archiv/gnumed-eine-offene-praxissoftware-fuer-den-arzt-9ddb4685-2665-4581-841a-caf416d9f935)
- [Ärzteblatt – Freie Software: Open Source statt Blackbox](https://www.aerzteblatt.de/archiv/freie-software-in-der-arztpraxis-open-source-statt-blackbox-c3e1f667-b539-4e41-906b-724fa0530b86)
- [Ärzteblatt – MediDusa: Transparenz durch Primärdokumentation](https://www.aerzteblatt.de/archiv/open-source-projekt-medidusa-transparenz-durch-aerztliche-primaerdokumentation-76a1030c-84bb-4b01-99bf-89592a927384)
- [Medical Tribune – Arzneiinformationssystem: Verordnungshilfe oder Regressfalle?](https://www.medical-tribune.de/praxis-und-wirtschaft/abrechnung/artikel/arzneiinformationssystem-verordnungshilfe-oder-regressfalle)
- [Medical Tribune – Heilmittelverordnung: Software machens Ärzten nur scheinbar leichter](https://www.medical-tribune.de/praxis-und-wirtschaft/verordnungen/artikel/regressrisiko-heilmittelverordnung-und-software-machens-aerzten-nur-scheinbar-leichter)
- [Virchowbund – Regress vermeiden als Arzt](https://www.virchowbund.de/praxis-knowhow/abrechnung-finanzen/regress)
- [arzt-wirtschaft.de – Arzneimittelregress Lexikon](https://www.arzt-wirtschaft.de/lexikon/arzneimittelregress)
- [Der niedergelassene Arzt – Regressprävention Praxistipps](https://www.der-niedergelassene-arzt.de/wirtschaft-und-praxis/details/praxistipps-fuer-eine-effektive-regresspraevention-von-einzelfallpruefungen/1)

### Anbieter/Produkte
- [CGM TURBOMED](https://www.cgm.com/deu_de/produkte/praxissoftware/cgm-turbomed.html)
- [CGM TURBOMED Produktinformation (PDF)](https://www.cgm.com/_Resources/Persistent/4afaf63303b4a817e03d1ca7545be1336b96aa6e/CGM%20TURBOMED-Produktinformation.pdf)
- [medatixx x.isynet FAQ](https://arztsoftware.medatixx.de/faq)
- [ifap praxisCENTER](https://www.ifap.de/deu_de/fuer-aerzte/ifap-praxiscenter.html)
- [data4doc / Vidal MMI](https://www.mmi.de/data4doc)
- [MediSuite](https://www.medisuite.de/verordnungssoftware)
- [DeutschesArztPortal – Wirtschaftlichkeit](https://www.deutschesarztportal.de/wirtschaftlichkeit)
- [DAP Networks – Rp. Regress-Check](https://www.dap-networks.de/nachrichten/detail/mehr-verordnungssicherheit-der-rp-regress-check)
- [DeutschesArztPortal – Rp. Regress-Radar](https://www.deutschesarztportal.de/interaktiv/rp-regress-radar)
- [Rp. Institut](https://www.dap-networks.de/rp-institut)

### Internationale Vorbilder
- [OpenPrescribing.net](https://openprescribing.net/)
- [Bennett Institute – OpenPrescribing](https://www.bennett.ox.ac.uk/openprescribing/)
- [NDPCHS – OpenPrescribing Impact](https://www.phc.ox.ac.uk/about/impact/openprescribing-putting-data-and-statistics-into-action-to-save-the-nhs-money)
- [OpenEMR Project](https://www.open-emr.org/)

### Datenquellen
- [ABDATA ABDA-Artikelstamm](https://abdata.de/produkte/abda-artikelstamm/)
- [Lauer-Taxe – Wikipedia](https://de.wikipedia.org/wiki/Lauer-Taxe)

### Open-Source-Referenzen
- [GNUmed.de](https://www.gnumed.de/)
- [Elexis Arztpraxis-Software – Wikipedia](https://de.wikipedia.org/wiki/Elexis_Arztpraxis-Software)

---

## 12. Antworten auf die 8 Ausgangsfragen (Zusammenfassung)

1. **Welche PVS bieten Regress-Präventions-Module?** Alle KBV-zertifizierten PVS müssen die gesetzlichen Pflichtfunktionen abbilden (AIS, Verordnungsausschlüsse, AMTS, ICD-Check, Rabattverträge). Führend sind CGM (Turbomed, Medistar, Albis – zusammen ca. 25–30 % Markt), medatixx (x.isynet) und DOCexpert. Echte "Regress-Prävention" im Sinne aktiver Risikoanalyse bietet **kein** PVS als Standardmodul.

2. **Was kosten die Module?** Pflichtfunktionen sind im PVS-Grundpreis enthalten (typisch 80–200 EUR/Monat je Praxis, je nach Paket und Größe). Zusatz-Verordnungs-Tools separat: data4doc 14,50 EUR/Arzt/Monat, MediSuite ab 19,90 EUR/Monat, ifap praxisCENTER im PVS enthalten oder als Modul buchbar. Rp.-Institut-Dienste teils kostenlos (Rezeptfibel), teils kommerziell (nicht öffentlich).

3. **Drittanbieter-Tools?** Haupt-Drittanbieter: **ifap praxisCENTER** (in >60 PVS integriert), **Vidal MMI data4doc**, **MediSuite (PAV/HASOMED)**, Datenbanken: **ABDATA Lauer-Taxe**. Dazu der informative Sektor: **DeutschesArztPortal / Rp. Institut** (DAP Networks GmbH) mit Regress-Check, Regress-Radar, Rezeptfibel.

4. **Was leisten sie konkret?** Alle liefern: AMTS-Check, Rabattvertragsanzeige, Verordnungsausschlüsse, AIS-Hinweise, Medikationsplan. **Keines** liefert: Echtzeit-Richtgrößenwarnung, strukturierte Praxisbesonderheiten-Dokumentation, Verordnungs-Risiko-Score, öffentliche Regressfall-Datenbank.

5. **Open-Source-Lösungen DE?** GNUmed (nicht KBV-zertifiziert), Elexis (primär CH, in DE nicht produktiv), OpenEMR (international, in DE nicht GKV-fähig), MediDusa (Doku-Projekt, kein PVS). **Keine** produktiv einsetzbare deutsche Open-Source-Vollpraxissoftware.

6. **Welche Lücken / Ärztewünsche?** Richtgrößen-Echtzeitwarnung, schnellere G-BA-Updates (aktuell 3–6 Monate Lag – KBV-Kritik!), Praxisbesonderheiten strukturiert, öffentliche Regressfall-Datenbank, Herstellerunabhängigkeit.

7. **International?** **OpenPrescribing.net (UK, Oxford)** ist das herausragende Vorbild: öffentliche, transparente, offene Plattform zur Analyse aller NHS-GP-Verordnungen. ePRaSE (NHS) bewertet Verordnungssoftware. OpenEMR (USA/global) als Open-Source-Vollsystem.

8. **Open-Source-Initiativen DE?** GNUmed (seit ~2000, marginal), MediDusa (Kardiologie-Doku, Open Source), gematik verfolgt "Open-Source-Kultur" für Telematikinfrastruktur 2.0 – aber **keine gezielte Initiative** zu Regress-Prävention oder Verordnungstransparenz im Open-Source-Sinn.

---

## 13. Kernaussage (einer Satz)

**In Deutschland existiert keine öffentliche, transparente, herstellerunabhängige Software für Regress-Prävention und Verordnungstransparenz – die einzigen Ansätze sind entweder gesetzliche Pflichtminima in proprietären PVS oder ein geschlossenes kommerzielles Community-Tool (Rp. Regress-Radar); eine offene Meta-Plattform analog zu OpenPrescribing.net (UK) fehlt komplett und wäre die glaubwürdige Lücke für ein Um:bruch-Open-Source-Projekt.**

---

*Erstellt: 2026-04-08 · Autor: Claude im Auftrag von Lukas Geiger · Projekt: Um:bruch Think Tank – Regress-Melder / Regress-Transparenzportal*
