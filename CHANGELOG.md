# Changelog / Änderungsprotokoll

Alle wesentlichen Änderungen an diesem Projekt werden hier dokumentiert.
Format basiert lose auf [Keep a Changelog](https://keepachangelog.com/de/1.1.0/).

## [Unreleased]

### Added / Hinzugefügt
- Shields.io Badges (Lizenz, Status, ThinkTank, llms.txt, Tests) im `README.md`
- AI/LLM-Integrationshinweis (`> [!NOTE]`) für automatisierte Agenten und RAG-Crawler im `README.md`
- Mermaid-Systemarchitekturdiagramm zur 3-Schichten-Definitionsdivergenz und Evidenzkanälen im `README.md`
- Standardisierte `pyproject.toml` mit Projektmetadaten, Pytest-Konfiguration und Discovery-URLs
- GitHub-Standarddokumente für Community, Security und Contribution-Flow
- Repo-Icon für wiedererkennbare Projektassets
- Windows-Startdatei für den direkten Einstieg in Studie, Executive Summary oder README
- Maschinenlesbarer `llms.txt`-Kontext für Crawler, LLMs und Repo-Disambiguation
- `THIRD_PARTY_LICENSES.txt` als direkte Inventur für das dependency-freie Working-Paper-Repository

### Changed / Geändert
- `llms.txt` Last-checked Datum auf `2026-07-26` und Verifikation der Pytest-Testsuite (2 passed) aktualisiert
- `llms.txt` Last-checked Datum auf `2026-07-25` aktualisiert
- `.gitignore` um interne Steuerungsdateien, Releases, Forschungs-Privatordner und Credential-Muster erweitert
- README und Versionierung auf ST-001 v0.22, Executive Summary v1.3 und PP-003 v3.1 aktualisiert
- README-Einstieg um Startpunkte, Suchkontext und aktuellen Canonical-Link `um-bruch/regressangst` ergänzt
- Lokalen Webfetch-Cache-Pfad aus einer Recherchedatei entfernt
- `llms.txt` auf den Standard mit `Last-checked`, Audience und fenced Search Phrases gebracht
- Historische `research-line`-GitHub-Links in den LaTeX-Quellen auf die aktuellen `um-bruch`-Repos umgestellt
- `.gitignore` um `LOCK*.txt` ergänzt (systemweite LOCK-Konvention, verhindert versehentliches Commiten von Sperr-Dateien)
- `meta/MASTERPLAN_V2.md` um ein TASKWRITER-Taskbündel (Stand 2026-07-22) für offene Register-, Quellen- und Release-Gate-Aufgaben ergänzt

### Fixed / Behoben
- Reines CRLF-Zeilenendenartefakt in `START.bat` zurückgesetzt (keine inhaltliche Änderung)

### Removed / Entfernt
- Degenerierte Dublette `CONTRIBUTING-Mac Studio.md` (Umlaute durch ae/oe/ue ersetzt, sonst identisch zu `CONTRIBUTING.md`) sowie sechs unbezogene App-Icon-Assets (`assets/android-icon-*.png`, `favicon.png`, `icon.png`, `splash-icon.png`) nach `_archive/` verschoben — nicht referenziert, gehören nicht zu diesem Repository

## [0.22] - 2026-04-15

### Changed / Geändert
- ST-001 auf v0.22 aktualisiert
- PP-003 auf v3.1 aktualisiert
- Deutsche und englische Executive Summary auf v1.3 synchronisiert
- Drei Broschüren aktualisiert: Regress-Firewall, Architekturplan und Mein Arzt hat Angst
