# ✉️ Viaggio di un pacchetto – Dal browser a Internet (e ritorno)

Quando scrivi `https://www.google.com` nel browser e premi Invio, sembra tutto semplice.  
Ma dietro a quella riga c’è un viaggio affascinante, regolato da **strati, protocolli e dispositivi**.  
In questo articolo racconto – da tecnico – cosa succede davvero, passo per passo.

---

## 🌐 1. Il browser si attiva (Livello 7 – Applicazione)

Il browser costruisce una richiesta HTTP e capisce che deve connettersi a `www.google.com` sulla porta **443** (HTTPS).  
La richiesta non è ancora partita: serve scoprire **dove si trova Google**, in termini di IP.

---

## 🔍 2. DNS – Dove abita il dominio? (Livello 7 → 3)

Il sistema esegue una **query DNS** per sapere l’IP di `www.google.com`.  
La risposta arriva: ad esempio `142.250.74.4`.

📌 *Comando usato:* `nslookup www.google.com`

---

## 🔗 3. TCP e TLS si preparano (Livello 4 – Trasporto)

Prima di inviare dati, il client esegue un **3-way handshake TCP**:
1. SYN → il client chiede di iniziare
2. SYN-ACK ← il server accetta
3. ACK → il client conferma

Ora il canale è stabile, ma **non ancora sicuro**.

Subito dopo inizia il **TLS handshake**:
- Il client riceve il certificato del server
- Entrambi negoziano la chiave condivisa
- Parte la **connessione cifrata**

📌 *Analizzato con:* Wireshark (`tcp.port == 443` + `ssl.handshake`)

---

## 📡 4. Il pacchetto viaggia (Livelli 3, 2, 1)

Il pacchetto HTTP cifrato viaggia attraverso:
- **IP** → per sapere dove andare (livello 3)
- **MAC address** → per saltare da router a router (livello 2)
- **Cavo/Wi-Fi** → segnale fisico (livello 1)

Ogni hop è visibile con:

📌 *Comando usato:* `traceroute www.google.com`

---

## 📥 5. Il server risponde

Il server Google risponde con un **pacchetto cifrato di risposta HTTPS**, che torna indietro lungo lo stesso percorso.  
Il browser decifra il contenuto grazie alla sessione TLS attiva, e visualizza la pagina.

---

## 🧪 Cattura reale (.pcap)

Ho eseguito una navigazione reale con Wireshark attivo e ho salvato il traffico `.pcap`.  
Il file contiene:

- handshake TCP + TLS
- richiesta HTTPS
- risoluzione DNS

📁 *File annotato: `tls_handshake_google.pcapng` (in arrivo)*

---

## 🧠 Conclusione

Ogni volta che visiti un sito, decine di pacchetti, handshake e traduzioni DNS avvengono sotto la superficie.  
Capirli ti dà il controllo.  
Analizzarli ti trasforma da utente in operatore.  
Dominarli ti avvicina a un vero **cybersecurity engineer**.

---

