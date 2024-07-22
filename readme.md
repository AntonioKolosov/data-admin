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
http://127.0.0.1:8086
```
```bash
$:./clear.bash
```

### Run a show
#### 1. Open the EXTERNAL_PORT to the Internet
```bash
$:ngrok http --domain=[your-static-domain] EXTERNAL_PORT

``` 
#### 2. Run the data-feed-service and the database
```bash
$:./run.bash
```
#### 3. Run the PROMPTER page from a browser on the prompter machine (phone)
copy the external uri after the 1 
```
https://<external uri>/prompter
```
#### 4. Now users can run the VIEWR page from a browser on each viewers machine (phone)
```
https://<external uri>/viewer
```

<b>THE SHOW IS GOING ON!</b>
