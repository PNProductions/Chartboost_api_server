[![Build Status](https://travis-ci.org/PNProductions/Chartboost_api_server.svg?branch=setup-iniziale)](https://travis-ci.org/PNProductions/Chartboost_api_server)

Chartboost_api_server
=====================

Piccolo server API per la gestione delle callback inviate da chartboost.

##### Path1: GET uuid/get_info_last_ads_clicked
Fornisce all'utente informazioni sull'ultimo banner cliccato. Se non esite ritorna error

##### Path2: GET uuid/delete
Elimina il record presente sul db

##### Path2: /chartboost/setup_clicked_ads
Chartboost scrive su un url quando un utente installa un’app, lui fa un socket a questo url con le seguenti informazioni:

```ruby
{"from" : "TestPublisherGame", "uuid" :"5555555555555555555555555555555555555555",
"campaign" : "TestCampaign", "campaign_id" :
"444444444444444444444444", "macid" :
"7777777777777777777777777777777777777777", "to" :
"TestAdvertiserGame", "ifa" :
"66666666666666666666666666666666", "type" : "click" }
```

Il server deve salvare le informazioni date da chartboost in un model, associate anche ad un timestamp. Ho un’unica tabella, se l’id dell’utente è già presente nel model devo sostituirla, altrimenti creo un nuovo record
