# Impressum Template

Required sections for Swiss/German legal notice (Impressum).

## 1. Angaben gemäß § 5 TMG / Impressumspflicht

```
[Firmenname]
[Rechtsform: GmbH / AG / Einzelunternehmen / etc.]

Vertreten durch:
[Name Geschäftsführer/Inhaber]
```

## 2. Kontakt

```
Adresse:
[Strasse und Hausnummer]
[PLZ] [Ort]
[Land]

Telefon: [+41 XX XXX XX XX]
E-Mail: [info@domain.ch]
Website: [www.domain.ch]
```

## 3. Registereintrag

**Switzerland:**
```
UID-Nummer: CHE-XXX.XXX.XXX
```

**Germany:**
```
Registergericht: [Amtsgericht Stadt]
Registernummer: HRB XXXXX
```

## 4. Umsatzsteuer-ID

**Switzerland:**
```
MwSt-Nummer: CHE-XXX.XXX.XXX MWST
```

**Germany:**
```
Umsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz:
DE XXXXXXXXX
```

## 5. Verantwortlich für den Inhalt

```
Verantwortlich für den Inhalt nach § 55 Abs. 2 RStV:

[Name]
[Adresse]
```

## 6. Haftungsausschluss

### Haftung für Inhalte

```
Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen.
```

### Haftung für Links

```
Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich. Die verlinkten Seiten wurden zum Zeitpunkt der Verlinkung auf mögliche Rechtsverstöße überprüft. Rechtswidrige Inhalte waren zum Zeitpunkt der Verlinkung nicht erkennbar.
```

### Urheberrecht

```
Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen/schweizerischen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers. Downloads und Kopien dieser Seite sind nur für den privaten, nicht kommerziellen Gebrauch gestattet.
```

## 7. Streitschlichtung (EU only)

```
Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit: https://ec.europa.eu/consumers/odr/

Wir sind nicht bereit oder verpflichtet, an Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle teilzunehmen.
```

---

## i18n Keys Structure

```json
{
  "impressum": {
    "title": "Impressum",
    "companyInfo": {
      "title": "Angaben gemäß § 5 TMG",
      "content": "[Company details]"
    },
    "contact": {
      "title": "Kontakt",
      "address": "[Full address]",
      "phone": "[Phone]",
      "email": "[Email]",
      "website": "[Website]"
    },
    "register": {
      "title": "Registereintrag",
      "content": "[UID/Register info]"
    },
    "vatId": {
      "title": "Umsatzsteuer-ID",
      "content": "[MwSt/USt number]"
    },
    "responsible": {
      "title": "Verantwortlich für den Inhalt",
      "content": "[Name and address]"
    },
    "disclaimer": {
      "title": "Haftungsausschluss",
      "content": {
        "title": "Haftung für Inhalte",
        "text": "[Content liability text]"
      },
      "links": {
        "title": "Haftung für Links",
        "text": "[Link liability text]"
      },
      "copyright": {
        "title": "Urheberrecht",
        "text": "[Copyright text]"
      }
    },
    "dispute": {
      "title": "Streitschlichtung",
      "content": "[OS platform text]"
    }
  }
}
```
