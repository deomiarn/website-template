# Datenschutz Template

Required sections for DSGVO/DSG compliant privacy policy.

## 1. Einleitung & Verantwortlicher

```
Der Schutz Ihrer persönlichen Daten ist uns ein besonderes Anliegen. Wir verarbeiten Ihre Daten daher ausschließlich auf Grundlage der gesetzlichen Bestimmungen (DSGVO, DSG, TKG).

Verantwortlicher:
[Firmenname]
[Adresse]
[E-Mail]
[Telefon]
```

## 2. Erhobene Daten

### Server-Logfiles

```
Bei jedem Zugriff auf unsere Website werden automatisch folgende Daten erfasst:
- IP-Adresse (anonymisiert)
- Datum und Uhrzeit des Zugriffs
- Aufgerufene Seite/Datei
- Übertragene Datenmenge
- Browsertyp und -version
- Betriebssystem
- Referrer URL

Diese Daten werden für die Sicherheit und Stabilität der Website benötigt und nach [14 Tagen / 30 Tagen] automatisch gelöscht.
```

### Kontaktformular

```
Wenn Sie uns per Kontaktformular Anfragen zukommen lassen, werden Ihre Angaben (Name, E-Mail, Nachricht) zur Bearbeitung der Anfrage gespeichert. Diese Daten werden nicht ohne Ihre Einwilligung weitergegeben.

Rechtsgrundlage: Art. 6 Abs. 1 lit. b DSGVO (Vertragsanbahnung)
```

### Newsletter (if applicable)

```
Mit Ihrer Einwilligung können wir Ihnen unseren Newsletter zusenden. Die Anmeldedaten (E-Mail, Name) werden ausschließlich für den Newsletterversand verwendet.

Sie können sich jederzeit vom Newsletter abmelden. Ein Abmeldelink befindet sich in jedem Newsletter.

Rechtsgrundlage: Art. 6 Abs. 1 lit. a DSGVO (Einwilligung)
```

## 3. Rechtsgrundlagen (DSGVO Art. 6)

```
Die Verarbeitung Ihrer Daten erfolgt auf Basis folgender Rechtsgrundlagen:

- Einwilligung (Art. 6 Abs. 1 lit. a DSGVO): Newsletter, Cookies
- Vertragserfüllung (Art. 6 Abs. 1 lit. b DSGVO): Kontaktanfragen, Auftragsabwicklung
- Rechtliche Verpflichtung (Art. 6 Abs. 1 lit. c DSGVO): Aufbewahrungspflichten
- Berechtigtes Interesse (Art. 6 Abs. 1 lit. f DSGVO): Website-Sicherheit, Statistiken
```

## 4. Cookies

```
Unsere Website verwendet Cookies. Dabei handelt es sich um kleine Textdateien, die auf Ihrem Gerät gespeichert werden.

Technisch notwendige Cookies:
Diese Cookies sind für den Betrieb der Website erforderlich und können nicht deaktiviert werden.

[Analyse-Cookies (optional):]
Mit Ihrer Einwilligung verwenden wir [Google Analytics / Plausible / etc.] zur Analyse des Nutzerverhaltens. Sie können Ihre Einwilligung jederzeit widerrufen.
```

## 5. Drittanbieter

### Hosting

```
Unsere Website wird gehostet bei:
[Hosting-Anbieter Name]
[Adresse]

Rechtsgrundlage: Art. 6 Abs. 1 lit. f DSGVO (berechtigtes Interesse an einer sicheren Website)
```

### Analyse-Tools (if applicable)

```
Google Analytics:
Wir nutzen Google Analytics mit IP-Anonymisierung. Die Datenverarbeitung erfolgt auf Grundlage von Art. 6 Abs. 1 lit. a DSGVO (Einwilligung).

Sie können die Erfassung durch Google Analytics verhindern, indem Sie auf folgenden Link klicken: [Opt-out Link]

Weitere Informationen: https://policies.google.com/privacy
```

### Fonts (if applicable)

```
Google Fonts:
Wir nutzen Google Fonts lokal eingebunden / über Google-Server. Bei der Nutzung über Google-Server wird Ihre IP-Adresse an Google übermittelt.

Weitere Informationen: https://policies.google.com/privacy
```

## 6. Betroffenenrechte

```
Sie haben folgende Rechte bezüglich Ihrer personenbezogenen Daten:

- Auskunftsrecht (Art. 15 DSGVO): Sie können Auskunft über Ihre verarbeiteten Daten verlangen.
- Berichtigungsrecht (Art. 16 DSGVO): Sie können die Berichtigung unrichtiger Daten verlangen.
- Löschungsrecht (Art. 17 DSGVO): Sie können die Löschung Ihrer Daten verlangen.
- Einschränkungsrecht (Art. 18 DSGVO): Sie können die Einschränkung der Verarbeitung verlangen.
- Datenübertragbarkeit (Art. 20 DSGVO): Sie können Ihre Daten in einem gängigen Format erhalten.
- Widerspruchsrecht (Art. 21 DSGVO): Sie können der Verarbeitung widersprechen.
- Widerrufsrecht: Eine erteilte Einwilligung können Sie jederzeit widerrufen.

Beschwerderecht:
Sie haben das Recht, sich bei einer Aufsichtsbehörde zu beschweren.

[Schweiz: EDÖB - Eidgenössischer Datenschutz- und Öffentlichkeitsbeauftragter]
[Deutschland: Zuständige Landesaufsichtsbehörde]
```

## 7. Speicherdauer

```
Wir speichern Ihre Daten nur so lange, wie es für den jeweiligen Zweck erforderlich ist:

- Server-Logfiles: [14/30] Tage
- Kontaktanfragen: [6 Monate / bis zur Erledigung]
- Vertragsdaten: 10 Jahre (gesetzliche Aufbewahrungspflicht)
- Newsletter: Bis zum Widerruf
```

## 8. SSL-Verschlüsselung

```
Diese Seite nutzt aus Sicherheitsgründen eine SSL/TLS-Verschlüsselung. Eine verschlüsselte Verbindung erkennen Sie an dem Schloss-Symbol in der Adresszeile Ihres Browsers und an der Adresszeile "https://".
```

## 9. Änderungen

```
Wir behalten uns vor, diese Datenschutzerklärung anzupassen, um sie an geänderte Rechtslagen oder bei Änderungen des Dienstes anzupassen.

Stand: [Datum]
```

---

## i18n Keys Structure

```json
{
  "datenschutz": {
    "title": "Datenschutzerklärung",
    "intro": {
      "title": "Einleitung",
      "text": "[Intro text]",
      "responsible": "[Responsible party info]"
    },
    "dataCollection": {
      "title": "Erhobene Daten",
      "serverLogs": {
        "title": "Server-Logfiles",
        "text": "[Server logs text]"
      },
      "contactForm": {
        "title": "Kontaktformular",
        "text": "[Contact form text]"
      }
    },
    "legalBasis": {
      "title": "Rechtsgrundlagen",
      "text": "[Legal basis text]"
    },
    "cookies": {
      "title": "Cookies",
      "text": "[Cookies text]"
    },
    "thirdParties": {
      "title": "Drittanbieter",
      "hosting": {
        "title": "Hosting",
        "text": "[Hosting info]"
      }
    },
    "rights": {
      "title": "Ihre Rechte",
      "text": "[User rights text]"
    },
    "storage": {
      "title": "Speicherdauer",
      "text": "[Storage duration text]"
    },
    "ssl": {
      "title": "SSL-Verschlüsselung",
      "text": "[SSL text]"
    },
    "changes": {
      "title": "Änderungen",
      "text": "[Changes text]",
      "date": "[Last updated date]"
    }
  }
}
```
