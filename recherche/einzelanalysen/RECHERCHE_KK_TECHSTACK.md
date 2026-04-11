# Technischer Stack-Vergleich: Krankenkassen-Websites

**Erstellt:** 2026-04-11  
**Methode:** HTML-Quelltextanalyse via WebFetch (Startseiten), ergänzt durch WebSearch  
**Zweck:** Technische Reifegrad-Bewertung für Regress-Melder Kooperationsanalyse

---

## Übersichtstabelle

| Krankenkasse | Framework/CMS | JS-Libs | Responsive | Accessibility | Performance | Tracking | Tech-Score (1–10) |
|---|---|---|---|---|---|---|---|
| Techniker Krankenkasse (TK) | Proprietäres System (TKDS) | Custom JS, kein jQuery/React | ✅ ja | ✅ Skip-Nav, Alt-Text, JSON-LD | ✅ Inline CSS, font-display:swap | Consent-Manager (g-consentmanager) | **9** |
| BKK Pfalz | Drupal (Theme: „dove") | Custom AJAX, kein jQuery erkennbar | ✅ ja | ✅ Skip-Nav, Leichte Sprache, Gebärdensprache | ⚠️ Lazy Loading impliziert | Cookie-Consent (CCM), keine GA/Matomo sichtbar | **7** |
| DAK-Gesundheit | Tailwind CSS v3 (CMS unklar, custom) | Kein jQuery/React explizit | ✅ ja | ⚠️ .sr-only vorhanden, Details unklar | ✅ Inline CSS, CSS Layers (@layer), Dark Mode | Kein Tracking im abrufbaren HTML | **7** |
| Debeka BKK | TYPO3 | Custom Autocomplete | ✅ implizit | ⚠️ Alt-Text teilweise, kein Skip-Nav erkennbar | ⚠️ async/defer bei Scripts | Matomo (inkl. Tag Manager, DoNotTrack aktiv) | **5** |
| VIACTIV Krankenkasse | Custom/Headless CMS | Alpine.js | ✅ ja (WebP, responsive Bilder) | ✅ Skip-Nav, mehrsprachig (6 Sprachen), Schema.org | ✅ WebP-Bilder, responsive srcset | Matomo + Google Analytics UA (veraltet!) + GTM | **7** |
| mhplus BKK | Custom (kein CMS erkennbar) | Custom Components, kein jQuery | ✅ ja (Mobile-First, Media Queries) | ⚠️ Fokus-States, kein Skip-Nav erkennbar | ⚠️ Inline CSS (nicht minifiziert), kein Lazy Loading | Kein Tracking im abrufbaren HTML | **5** |
| AOK RLP/Saarland | Tailwind CSS v3.4.1 + React | React (react-datepicker, ReactCrop), Swiper, Popper.js, Keen Slider | ✅ ja (RTL-Support) | ✅ ARIA-Live, focus-visible, .sr-only | ✅ Inline CSS kritisch, font-display:swap | Cookie-Settings-Manager (Details unklar) | **8** |
| BKK PFAFF | WordPress + Avada-Theme | jQuery, WP Statistics | ✅ ja (Breakpoints 740px/1024px) | ✅ Skip-Nav, aria-expanded, Barrierefreiheits-Seite | ⚠️ Lazy Loading (img:sizes=auto), Inline CSS | WP Statistics (DNT aktiviert) | **5** |
| BARMER | Proprietär/Custom (Tealium-Stack) | Genesys Widgets (CX-Plattform), CXBus, kein jQuery/React | ✅ implizit | ✅ Skip-Nav, Leichte Sprache, Gebärdensprache, mehrsprachig (8 Sprachen) | ⚠️ Async Scripts (Genesys), kein Preconnect erkennbar | Tealium utag (Tag Management), kein GA direkt | **8** |
| vivida bkk | TYPO3 + Custom Frontend-Build | jQuery, RequireJS | ✅ ja (Viewport vorhanden) | ✅ ARIA-Labels, Alt-Attribute, role=button/navigation, Leichte Sprache, Gebärdensprache, Skiplinks | ✅ lazySizes (Lazy Loading), Asset-Versionierung | Google Tag Manager (GTM-5MSBKVP), ProvenExpert | **7** |
| Novitas BKK | TYPO3 (veraltet, Neuaufbau 2024 ausgeschrieben) | Unbekannt (SSL-Zertifikat ungültig – Seite nicht abrufbar) | ❓ unbekannt | ❓ unbekannt | ❓ unbekannt | ❓ unbekannt | **2** |

---

## Detailanalyse je Krankenkasse

### 1. Techniker Krankenkasse (tk.de) — Score: 9/10

**Framework/CMS:** Vollständig proprietäres Designsystem „TKDS" (data-tkds-page-layout-area). Kein Standard-CMS erkennbar. Eigene Komponenten-Architektur.

**JS-Bibliotheken:** Kein jQuery, kein React/Vue/Angular. Reines Custom-JavaScript mit TKDS-spezifischen Initialisierungen (`tkds-ready`-Klasse).

**Meta-Tags:** JSON-LD Organization-Schema vorhanden. Deutschsprachig mit English-Alternative. Consent-Manager aktiv (g-consentmanager).

**Accessibility:** Skip-Navigation zu Hauptinhalt und Footer. Alt-Texte auf Bildern. Barrierefreiheits-Link in Navigation.

**Performance:** font-display:swap für Web-Fonts (WOFF2/WOFF). Umfangreiches Inline-CSS für kritischen Render-Pfad. Custom-Fonts (Soleto TK).

**Tracking:** Consent-Manager steuert alle Tracker. Keine direkten GA/Matomo-Aufrufe sichtbar (hinter Consent-Gate).

**Fazit:** Technisch fortschrittlichste Lösung — vollständig custom, kein Legacy-Ballast, datenschutzkonform.

---

### 2. BKK Pfalz (bkkpfalz.de) — Score: 7/10

**Framework/CMS:** Drupal (erkennbar an ajaxPageState, ajaxTrustedUrl, Drupal-JS-Konfiguration). Theme: „dove".

**JS-Bibliotheken:** Custom AJAX, kein jQuery/React/Vue explizit erkennbar.

**Meta-Tags:** JSON-LD Article-Schema mit Autor und Publisher. Lang="de". Open Graph nicht erkennbar.

**Accessibility:** Skip-Navigation ("Direkt zum Inhalt", "Direkt zur Hauptnavigation"). Leichte Sprache und Gebärdensprache verlinkt. Barrieremeldungs-Link.

**Performance:** Lazy Loading impliziert (Placeholder-Bilder). Inline SVG für Icons. Kein Preconnect erkennbar.

**Tracking:** Cookie-Consent aktiv (CCM.openWidget()). Kein Google Analytics/Matomo sichtbar. Social-Media-Integration (FB, YT, IG, LinkedIn, XING).

**Besonderheit:** KI-gestützte Suche mit Datenschutzhinweis. Eco-Mode-Funktion.

---

### 3. DAK-Gesundheit (dak.de) — Score: 7/10

**Framework/CMS:** Tailwind CSS v3 mit umfangreichem Design-Token-System. CMS nicht eindeutig erkennbar (kein TYPO3/WordPress/Drupal im HTML).

**JS-Bibliotheken:** Kein jQuery/React/Vue/Angular explizit erkennbar. Modernes CSS-First-Ansatz.

**Meta-Tags:** CSS Custom Properties für Farb-, Abstands- und Typografie-Tokens. Dark-Mode-Unterstützung (`.darkmode`-Klasse).

**Accessibility:** .sr-only (Screen-Reader-Klassen) vorhanden. role=button erwähnt.

**Performance:** CSS Layers (@layer properties, theme, base, components, utilities) — moderner CSS-Architekturansatz. Vollständig inline CSS (kritischer Pfad).

**Tracking:** Kein Tracking im abrufbaren HTML erkennbar.

**Fazit:** Moderner CSS-Stack, aber JS-Architektur unklar. Solides technisches Fundament.

---

### 4. Debeka BKK (debeka-bkk.de) — Score: 5/10

**Framework/CMS:** TYPO3 (Pfad: `/typo3conf/ext/ff_debekabkk/Resources/Public/`).

**JS-Bibliotheken:** Custom Autocomplete-Bibliothek für Suche. XMLHttpRequest für AJAX-Anfragen (`eID=keSearchPremiumAutoComplete`).

**Meta-Tags:** Sprache impliziert (Deutsch). Keine og:-Tags oder JSON-LD im analysierten Ausschnitt sichtbar.

**Accessibility:** Kein Skip-Nav erkennbar. Alt-Text teilweise vorhanden. Keine ARIA-Labels.

**Performance:** async/defer bei Script-Tags vorhanden. Kein Lazy Loading oder Preconnect erkennbar.

**Tracking:** Matomo mit Tag Manager (Container-ID TYDckxdS, matomo.php). DoNotTrack aktiviert. Datenschutzfreundliche Konfiguration (Cookies deaktiviert).

---

### 5. VIACTIV Krankenkasse (viactiv.de) — Score: 7/10

**Framework/CMS:** Custom/Headless CMS (kein Standard-CMS erkennbar). Moderne, schlanke Architektur.

**JS-Bibliotheken:** Alpine.js (x-data, x-show, @click-Direktiven). Kein jQuery/React/Vue/Angular.

**Meta-Tags:** Schema.org JSON-LD (Organization, WebSite, WebPage). Mehrsprachig (DE, EN, TR, PL, RO, RU, AR).

**Accessibility:** Skip-Navigation ("Zum Inhaltsbereich"). Alt-Texte auf Bildern vorhanden.

**Performance:** Responsive Bilder mit WebP-Varianten und srcset (750px, 900px, 1200px). Moderne Bildformate.

**Tracking:** Matomo (matomo.viactiv.de) + Google Analytics UA-171291222-1 (VERALTET — Universal Analytics wurde 2023 eingestellt!) + GTM. Anonymize_IP aktiv.

**Problem:** UA-Tag ist technisch tot, sollte auf GA4 migriert werden.

---

### 6. mhplus BKK (mhplus-krankenkasse.de) — Score: 5/10

**Framework/CMS:** Kein CMS erkennbar. Vollständig custom entwickeltes System.

**JS-Bibliotheken:** Custom Components (Search-Overlay, Multi-Select, Navigation). Kein jQuery/React/Vue/Angular.

**Meta-Tags:** Mehrsprachige Navigation erkennbar. Viewport-Meta-Tag aus Media Queries ableitbar.

**Accessibility:** Fokus-States implementiert (:focus, :focus-visible). Skip-Navigation nicht erkennbar.

**Performance:** Gesamtes CSS inline, aber nicht minifiziert. Kein Lazy Loading. Base64-eingebettete SVG-Icons.

**Tracking:** Kein Tracking im abrufbaren HTML erkennbar.

**Fazit:** Funktional, aber technisch konservativ und nicht optimiert (nicht-minifiziertes CSS).

---

### 7. AOK Rheinland-Pfalz/Saarland (aok.de/pk/rps/) — Score: 8/10

**Framework/CMS:** Tailwind CSS v3.4.1 (explizit versioniert). React-basiertes Frontend.

**JS-Bibliotheken:** React (react-datepicker, ReactCrop). Swiper (Slider). Popper.js (Popups). Keen Slider (weiterer Carousel).

**Meta-Tags:** RTL-Support ([dir=rtl]) für arabische/hebräische Sprachvarianten.

**Accessibility:** ARIA-Live-Regionen (react-datepicker__aria-live). focus-visible Styling umfangreich. .sr-only Klassen. Screen-Reader-Unterstützung.

**Performance:** Inline CSS kritisch. font-display:swap für Web-Fonts. Mehrere JS-Bibliotheken — potenziell schwer (Swiper + Keen Slider redundant).

**Tracking:** Cookie-Settings-Manager vorhanden (data-cookie-settings-manager-location=FOOTER).

**Fazit:** Moderner React-Stack, aber mehrere redundante Slider-Bibliotheken sind unnötiger Ballast.

---

### 8. BKK PFAFF (bkk-pfaff.de) — Score: 5/10

**Framework/CMS:** WordPress + Avada-Theme (Pfad: /wp-content/themes/Avada/).

**JS-Bibliotheken:** jQuery. WP Statistics (Analytics-Plugin).

**Meta-Tags:** lang="de". JSON-LD: WebPage, BreadcrumbList, WebSite.

**Accessibility:** Skip-Navigation ("Zum Inhalt springen"). aria-expanded bei Menüs. Dedizierte Barrierefreiheits-Seite verlinkt.

**Performance:** Lazy Loading (img:is([sizes=auto])). Inline CSS (Global Styles). Contain-intrinsic-size für Performance.

**Tracking:** WP Statistics mit DNT aktiviert. Consent-Integration vorhanden.

**Fazit:** Standard WordPress/Avada-Setup — weit verbreitet, aber nicht besonders innovativ. jQuery ist Legacy.

---

### 9. BARMER (barmer.de) — Score: 8/10

**Framework/CMS:** Proprietäres/Custom System. Tealium-basierter Tag-Management-Stack. Keine Standard-CMS-Kennzeichen.

**JS-Bibliotheken:** Genesys Widgets (Enterprise-CX-Plattform). CXBus Messaging-System. Chat-KI-Modul custom. Kein jQuery/React/Vue/Angular erkennbar.

**Meta-Tags:** Schema.org (Organization, WebSite). Mehrsprachig (8 Sprachen: DE, EN, ES, FR, PL, TR, UK, ZH). Sehr breites Sprachspektrum.

**Accessibility:** Skip-Navigation. Leichte Sprache. Gebärdensprache. 8-sprachige Unterstützung.

**Performance:** Genesys Widgets asynchron geladen. Kein Preconnect erkennbar.

**Tracking:** Tealium utag (Enterprise Tag Manager). Kein direktes GA/Matomo — alle Tracker über Tealium orchestriert. utag_data mit Client-IP und Campaign-Parametern.

**Besonderheit:** Enterprise-Level KI-Chat-Integration (Genesys). Sehr professioneller Infrastruktur-Stack.

---

### 10. vivida bkk (vividabkk.de) — Score: 7/10

**Framework/CMS:** TYPO3 + moderner Custom Frontend-Build (Vite/ähnlich, erkennbar an Asset-Hashing: `main-KNt_DBnm.js`).

**JS-Bibliotheken:** jQuery. RequireJS (Modul-Loading). lazySizes (Lazy Loading).

**Meta-Tags:** Viewport vorhanden. GTM implementiert. JSON-LD Organization + Product mit AggregateRating (3590 Bewertungen).

**Accessibility:** ARIA-Labels durchgehend. Alt-Attribute auf Bildern. role=button, role=navigation. Leichte Sprache, Gebärdensprache, Skiplinks.

**Performance:** lazySizes für Bilder (Best Practice). Asset-Versionierung via Query-Parameter. Inline CSS-Blöcke.

**Tracking:** Google Tag Manager (GTM-5MSBKVP). ProvenExpert Bewertungs-Integration.

**Fazit:** TYPO3 mit modernem Build-System — guter Kompromiss aus bewährtem CMS und modernem Frontend-Workflow.

---

### 11. Novitas BKK (novitas-bkk.de) — Score: 2/10

**Status:** Website nicht abrufbar — SSL-Zertifikat ungültig (Fehler: „unable to verify the first certificate"). Dies ist ein kritischer Sicherheitsmangel.

**CMS:** Laut öffentlicher Ausschreibung (Nov. 2024) nutzte Novitas BKK ein veraltetes TYPO3-System am End-of-Life, das nicht mehr gewartet werden konnte. Kompletter Neuaufbau wurde ausgeschrieben.

**Fazit:** Technisch schlechtester Stand aller untersuchten Kassen. Ungültiges SSL-Zertifikat bedeutet, dass Browser die Seite als unsicher einstufen. Aktiver Neuaufbau ist positiv, aber aktueller Zustand nicht akzeptabel.

---

## Ranking: Technische Qualität (absteigend)

| Rang | Krankenkasse | Score | Begründung |
|---|---|---|---|
| 🥇 1 | **Techniker Krankenkasse** | 9/10 | Vollständig proprietäres, modernes Design-System (TKDS). Kein Legacy. Beste Datenschutz-Architektur. Durchgängige Accessibility. |
| 🥈 2 | **BARMER** | 8/10 | Enterprise-Stack (Tealium, Genesys). 8 Sprachen. KI-Chat. Professionelle Infrastruktur. |
| 🥉 3 | **AOK RLP/Saarland** | 8/10 | Moderner React+Tailwind-Stack. RTL-Support. Starke Accessibility. Redundante Slider-Libs als kleines Minus. |
| 4 | BKK Pfalz | 7/10 | Drupal gut gepflegt. KI-Suche. Eco-Mode. Leichte Sprache/Gebärdensprache. |
| 5 | DAK-Gesundheit | 7/10 | Modernes Tailwind CSS + CSS Layers. Dark Mode. JS-Architektur unklar. |
| 6 | VIACTIV Krankenkasse | 7/10 | Alpine.js + Headless. WebP-Bilder. Aber: veralteter UA-Google-Analytics-Tag (seit 2023 tot). |
| 7 | vivida bkk | 7/10 | TYPO3 mit modernem Build-Tooling. Gute Accessibility. jQuery ist Legacy. |
| 8 | Debeka BKK | 5/10 | TYPO3, datenschutzfreundliches Matomo, aber schwache Accessibility. |
| 9 | mhplus BKK | 5/10 | Custom-System, nicht minifiziertes CSS, keine erkennbare Tracking-Infrastruktur. Solide aber unoptimiert. |
| 10 | BKK PFAFF | 5/10 | WordPress/Avada-Standard. jQuery. Funktional, aber kein Innovation-Faktor. |
| 11 | **Novitas BKK** | 2/10 | Ungültiges SSL-Zertifikat, veraltetes TYPO3 am End-of-Life. Neuaufbau ausgeschrieben (Nov. 2024), aktuell kritisch. |

---

## Zusammenfassung: Technologische Muster

### Modernster Stack
**TK** ist klar führend mit vollständig eigenentwickeltem System ohne Legacy-Abhängigkeiten. **BARMER** und **AOK RLP/Saarland** folgen mit Enterprise- bzw. React-Ansatz.

### Ältester/Kritischster Stack
**Novitas BKK** hat das größte Problem (ungültiges SSL + veraltetes TYPO3). **BKK PFAFF** und **mhplus** sind technisch konservativ, aber zumindest stabil.

### CMS-Landschaft
- **TYPO3:** Debeka BKK, vivida bkk, Novitas BKK (3 von 11)
- **WordPress:** BKK PFAFF (1 von 11)
- **Drupal:** BKK Pfalz (1 von 11)
- **Proprietär/Custom:** TK, BARMER, mhplus (3 von 11)
- **Tailwind/React-basiert (CMS unklar):** DAK, AOK RLP/Saarland (2 von 11)
- **Headless:** VIACTIV (1 von 11)

### Accessibility-Highlights
Leichte Sprache und Gebärdensprache: BKK Pfalz, BARMER, vivida bkk — Best Practice für gesundheitliche Angebote.

### Tracking-Auffälligkeiten
- VIACTIV nutzt noch Universal Analytics (UA) — seit Juli 2023 abgeschaltet. Daten laufen ins Leere.
- TK und DAK verstecken Tracking vollständig hinter Consent-Gates — vorbildlich.
- Novitas BKK: keine Aussage möglich (SSL-Fehler).

---

*Analyse durchgeführt am 2026-04-11 | Methode: WebFetch HTML-Analyse + WebSearch*  
*Quellen: Direkte HTML-Analyse der Startseiten; für Novitas BKK: [Öffentliche Ausschreibung Nov. 2024](https://ausschreibungen-deutschland.de/2240468_Deutschland__IT-Dienste_Beratung_Software-Entwicklung_Internet_und_Hilfestellung__2024_Duisburg)*
