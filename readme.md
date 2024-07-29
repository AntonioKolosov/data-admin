## Data admin site

### File system structure   
.   
├── original - <b>show's original texts</b>   
├── content - current converted data   
│   ├── auto-import.sh   
│   ├── en_data.json   
│   ├── he_data.json   
│   └── ru_data.json  
├── data - converted data   
│   └── show_1   
│   │      ├── he_data.json   
│   │      └── ru_data.json   
│   └── show_N   
│       ├── he_data.json   
│       └── ru_data.json   
├── dt-adm.yaml   
├── dt-run.yaml   
├── clear.bash - clear after test   
├── load.bash - test load converted data   
├── readme.md   
├── run.bash   
└── stop.bash   

### Prepare original texts to use
#### 1. Convert from subtitle format to the content format
```bash
$:
```
#### 2. Copy from data folder to content folder
```bash
$:cp
```
#### 3. Test content (load to the database)
```bash
$:./load.bash
```
Run from a browser database UI and check the show content:
```
http://127.0.0.1:<EXTERNAL_EXPRESS_PORT>
```
```bash
$:./clear.bash
```

### Run a show
#### 1. Open the EXTERNAL_PORT to the Internet
```bash
$:ngrok http --domain=[your-static-domain] <EXTERNAL_PORT>

Session Status    online                     
Forwarding        https://....ngrok-free.app -> http://localhost:8003  
``` 
#### 2. Copy the external https url from the ngrok output (Forwardig) 


#### 3. Run the data-feed-service  and the database with the external https url
```bash
$:./run.bash <external https url>
```
#### 4. Run the PROMPTER page from a browser on the prompter machine (phone)
```
<external https url>/app/prompter
```
#### 5. Now users can run the VIEWR page from a browser on each viewers machine (phone)
```
https://<external uri>/app/viewer
```

<b>THE SHOW IS GOING ON!</b>

#### 6. Stop the data-feed-service and the database
```bash
$:./stop.bash
```


