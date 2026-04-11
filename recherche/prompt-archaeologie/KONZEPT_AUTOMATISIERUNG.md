# Prompt-Kategorisierung: Automatisierungskonzept

> Frage von LG: "Wie könnte man es schaffen, dass alle Prompts automatisch laufend so kategorisiert werden?"

---

## Das Problem

Die manuelle 5-Stufen-Pipeline (208 Prompts → klassifiziert → aggregiert → Statistik) hat ~20 Minuten Agent-Laufzeit + menschliche Konzeptarbeit gekostet. Das ist für eine Nachanalyse OK, aber nicht skalierbar auf laufende Forschung.

## 3 Automatisierungsansätze

### Ansatz A: Post-Session-Script (pragmatisch, sofort umsetzbar)

```
Trigger: Nach jeder Session automatisch
Input:   JSONL Session-Log
Output:  5-Stufen-Pipeline als Markdown
```

**Wie:**
1. Python-Script liest die JSONL-Datei
2. Extrahiert alle `"role":"human"` und `Agent(prompt=...)` Einträge
3. Sendet Batches an Haiku (günstig) zur Klassifikation
4. Aggregiert und berechnet Statistiken
5. Schreibt die 5 Markdown-Dateien

**Aufwand:** ~2h Entwicklung, ~$0.05 pro Session (Haiku-Kosten)
**Nachteil:** Erst NACH der Session, kein Echtzeit-Feedback

### Ansatz B: Claude Code Hook (Echtzeit, mittlerer Aufwand)

```
Trigger: UserPromptSubmit Hook
Input:   Jeder User-Prompt in Echtzeit
Output:  Laufend aktualisiertes Prompt-Log
```

**Wie:**
1. Hook in `~/.claude/settings.json` auf `UserPromptSubmit`
2. Hook-Script schreibt Prompt + Timestamp in eine Log-Datei
3. Kategorisierung entweder:
   a. Inline (teuer: API-Call pro Prompt) oder
   b. Batch am Session-Ende (günstig: ein Haiku-Aufruf für alle)

**Aufwand:** ~1h Setup
**Nachteil:** Erfasst nur Human-Prompts, nicht Agent-Prompts

### Ansatz C: BACH-Modul (systemisch, langfristig)

```
Trigger: Integration in BACH OS
Input:   Alle Interaktionen über BACH API
Output:  Persistente Prompt-Datenbank mit Live-Kategorisierung
```

**Wie:**
1. Neues BACH-Modul `prompt_tracker`
2. Registriert sich als Observer auf alle LLM-Interaktionen
3. Kategorisiert per Haiku im Hintergrund
4. Speichert in SQLite (wie bach.db)
5. Dashboard per CLI oder GUI abrufbar

**Aufwand:** ~8-12h Entwicklung
**Vorteil:** Systemisch, alle Modelle erfasst, persistente Datenbank
**Nachteil:** BACH-Abhängigkeit

---

## Empfehlung

**Sofort: Ansatz A (Post-Session-Script)** — Python-Script das nach jeder Session die JSONL verarbeitet. 80% des Nutzens für 20% des Aufwands.

**Mittelfristig: Ansatz B (Hook)** — Echtzeit-Erfassung der Human-Prompts. Kombination mit A für die Agent-Prompts.

**Langfristig: Ansatz C (BACH)** — Nur wenn Prompt-Tracking zum systematischen Forschungstool werden soll (z.B. für die Methodenpublikation).

---

## Offene Frage: Kategorisierung in Echtzeit?

Die eigentliche Herausforderung ist nicht das Erfassen (das ist trivial per Hook), sondern das **Kategorisieren in Echtzeit**:

- **Typ** (Startprompt/Nachfrage/Korrektur) ist erst im Kontext der vorherigen Prompts eindeutig
- **Thema** braucht Domänenwissen (was ist "V2b" vs. "V1")
- **Ergebnis** ist erst retrospektiv klar (nach dem Agent-Output)

→ Echtzeit-Kategorisierung wäre zwangsläufig vorläufig und müsste retrospektiv korrigiert werden. Das spricht für den **Batch-Ansatz (A)** als Basis mit optionaler **Live-Annotation (B)** für einfache Felder (Typ, Thema).

---

## Datenmodell für Automatisierung

```python
@dataclass
class CategorizedPrompt:
    id: str              # H001, A001, G001, C001
    timestamp: datetime
    sender: str          # human / claude / copilot / gemini
    recipient: str       # claude / sub-agent / gemini / copilot
    text: str            # Volltext
    text_short: str      # Max 15 Wörter
    session_id: str
    
    # Kategorisierung
    topic: str           # V1-Schutzstufenmodell, Definitionsdivergenz, ...
    type: str            # SP / NT / NM / NS / KO / BE / RA / MP
    purpose: str         # Analyse starten / Prüfung einleiten / ...
    intent: str          # Erkenntnisgewinn / QS / Nachsteuerung / ...
    method_triggered: str # WebSearch / Multi-Agent / Review / ...
    consequence: str     # Recherche gestartet / Hypothese revidiert / ...
    result: str          # CORE3 etabliert / Bayern-Daten gefunden / ...
    
    # Meta
    confidence: float    # 0.0-1.0 (für rekonstruierte Prompts)
    is_turning_point: bool
    word_count: int
```

---

*Konzept: LG + CL, 12.04.2026*
