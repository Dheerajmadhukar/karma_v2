<h1 align="center">
  <img src="img/karma_v2_logo.png" alt="axio m" width="530px"></a>
  <br>

⡷⠂𝚔𝚊𝚛𝚖𝚊 𝚟𝟸⠐⢾
</h1>

<h2 align="center">
  𝚔𝚊𝚛𝚖𝚊 𝚟𝟸 is a Passive Open Source Intelligence (OSINT) Automated Reconnaissance (framework)
  
![Follow on Twitter](https://img.shields.io/twitter/follow/Dheerajmadhukar?style=social)  [![Version](https://img.shields.io/badge/Release-%E2%A1%B7%E2%A0%82%F0%9D%9A%94%F0%9D%9A%8A%F0%9D%9A%9B%F0%9D%9A%96%F0%9D%9A%8A%20%F0%9D%9A%9F%F0%9D%9F%B8%E2%A0%90%E2%A2%BE-white.svg)]()  [![Build](https://img.shields.io/badge/Supported_OS-Linux-white.svg)]() [![Build](https://img.shields.io/badge/Supported_WSL-Windows-white.svg)]()   [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/dheerajkmadhukar)
</h2>
𝚔𝚊𝚛𝚖𝚊 𝚟𝟸 can be used by Infosec Researchers, Penetration Testers, Bug Hunters to find deep information, more assets, WAF/CDN bypassed IPs, Internal/External Infra, Publicly exposed leaks and many more about their target. Shodan Premium API key is required to use this automation. Output from the `𝚔𝚊𝚛𝚖𝚊 𝚟𝟸` is displayed to the screen and saved to files/directories.
</br></br>
 ℹ  Regarding Premium Shodan API, Please see the Shodan site for more information. 
<br>

Shodan website: [Shodan Website](https://shodan.io)

API : [Developer API](https://developer.shodan.io/api)

## Usage
You can use this command to check help:
```bash
$ bash karma_v2 -h
```
<img src="img/karma_v2_help.png" alt="axio m" width="1000px">

## MODEs 
| **MODE** |  **Examples**  |
|:-------------|:----------------|
|**-ip**|``` bash karma_v2 -d <DOMAIN.TLD> -l <INTEGER> -ip```|
|**-asn**|``` bash karma_v2 -d <DOMAIN.TLD> -l <INTEGER> -asn```|
|**-cve**|``` bash karma_v2 -d <DOMAIN.TLD> -l <INTEGER> -cve```|
|**-favicon**|``` bash karma_v2 -d <DOMAIN.TLD> -l <INTEGER> -favicon```|
|**-leaks**|``` bash karma_v2 -d <DOMAIN.TLD> -l <INTEGER> -leaks```|
|**-deep**|``` bash karma_v2 -d <DOMAIN.TLD> -l <INTEGER> -deep```|
|**-count**|``` bash karma_v2 -d <DOMAIN.TLD> -l <INTEGER> -count```|
## Features
- 

## Roadmap for v2.1
* Upcoming features for the v2.1:
  - [working] Apache kafka
  - [working] Apache Hadoop
  - [working] JBoss
  - [working] phpinfo
  - [working] ID_VC
  - [working] Service Now
  - [working] Salesforce
  - [working] Splunk
  - [working] SAP S4 Hana
  - [working] Workday
  - [working] okta
  - [working] ADP
  - [working] IBM MQ
  - [working] Oracle Web Login
  - [ToDo] Still Looking for more . . .

# 𝚔𝚊𝚛𝚖𝚊 𝚟𝟸 Supported Shodan Dorks
| **DORKs** | **DORKs** | **DORKs** |
|:-------------|:----------------|:----------------|
| **`ssl.cert.fingerprint`**  |    **`http.status:"302" oauth`**    | **`"Server: Jetty"`**           |
| **`ssl`** |   **`http.status:"302" sso`**    | **`X-Amz-Bucket-Region`**           |
| **`org`** |    **`title:"401 Authorization Required"`**    | **`"development" org:"Amazon.com"`**           |
| **`hostname`**  |    **`http.html:"403 Forbidden"`**    | **`"X-Jenkins" "Set-Cookie: JSESSIONID" http.title:"Jenkins [Jenkins]"`**           |
| **`ssl.cert.issuer.cn`**      |    **`http.html:"500 Internal Server Error"`**    | **`http.favicon.hash:81586312 200`**           |
| **`ssl.cert.subject.cn`** |    **`ssl.cert.subject.cn:*vpn*`**    | **`product:"Kubernetes" port:"10250, 2379"`**            |
| **`ssl.cert.expired:true`** |    **`title:"citrix gateway"`**    | **`port:"9100" http.title:"Node Exporter"`**           |
| **`ssl.cert.subject.commonName`** |    **`http.html:"JFrog"`**    | **`http.title:"Grafana"`**           |
| **`http.title:"Index of /"`** |    **`"X-Jfrog"`**    | **`http.title:"RabbitMQ"`**           |
| **`ftp port:"10000"`** |    **`http.title:"dashboard"`**    | **`HTTP/1.1 307 Temporary Redirect "Location: /containers"`**            |
| **`"Authentication: disabled" port:445 product:"Samba"`** |    **`http.title:"Openfire Admin Console"`**    | **`http.favicon.hash:1278323681`**            |
| **`title:"Login - Adminer"`** |    **`http.title:"control panel"`**    | **`"MongoDB Server Information" port:27017 -authentication`**            |
| **`http.title:"sign up"`** |    **`http.html:"* The wp-config.php creation script uses this file"`**    | **`port:"9200" all:"elastic indices" `**            |
| **`http.title:"LogIn"`** |   **`clockwork`**    | **`"220" "230 Login successful." port:21`**            |
| **`port:"11211" product:"Memcached"`** | **`"port: 53" Recursion: Enabled`** | **`title:"kibana"`** |
| **`port:9090 http.title:"Prometheus Time Series Collection and Processing Server"`** | **`"default password"`** | **`title:protected`** |
| **`http.component:Moodle`** | **`http.favicon.hash:116323821`** | **`html:"/login/?next=" title:"Django"`** |
| **`html:"/admin/login/?next=" title:"Django"`** | **`title:"system dashboard" html:jira`** | **`http.component:ruby port:3000`** |
| **`html:"secret_key_base"`** | **`I will add more soon`** | **`. . .`** |

# Output
```bash
output/bugcrowd.com-YYYY-MM-DD/ 

.
├── ASNs_Detailed_bugcrowd.com.txt
├── Collect
│   ├── host_domain_bugcrowd.com.json.gz
│   ├── ssl_SHA1_12289a814...83029f8944b6088d60204a92e_bugcrowd.com.json.gz
│   ├── ssl_SHA1_17537bf84...73cb1d684a495db7ea5aa611b_bugcrowd.com.json.gz
│   ├── ssl_SHA1_198d6d4ec...681b77585190078b07b37c5e1_bugcrowd.com.json.gz
│   ├── ssl_SHA1_26a9c5618...d60eae2947b42263e154d203f_bugcrowd.com.json.gz
│   ├── ssl_SHA1_3da3825a2...3b852a42470410183adc3b9ee_bugcrowd.com.json.gz
│   ├── ssl_SHA1_4d0eab730...68cf11d2db94cc2454c906532_bugcrowd.com.json.gz
│   ├── ssl_SHA1_8907dab4c...12fdbdd6c445a4a8152f6b7b7_bugcrowd.com.json.gz
│   ├── ssl_SHA1_9a9b99eba...5dc5106cea745a591bf96b044_bugcrowd.com.json.gz
│   ├── ssl_SHA1_a7c14d201...b6fd4bc4e95ab2897e6a0bsfd_bugcrowd.com.json.gz
│   ├── ssl_SHA1_a90f4ddb0...85780bdb06de83fefdc8a612d_bugcrowd.com.json.gz
│   ├── ssl_domain_bugcrowd.com.json.gz
│   ├── ssl_subjectCN_bugcrowd.com.json.gz
│   └── ssl_subject_bugcrowd.com.json.gz
|   └── . . .
├── IP_VULNS
│   ├── 104.x.x.x.json.gz
│   ├── 107.x.x.x.json.gz
│   ├── 107.x.x.x.json.gz
│   └── 99.x.x.x.json.gz
|   └── . . .
├── favicons_bugcrowd.com.txt
├── host_enum_bugcrowd.com.txt
├── ips_inscope_bugcrowd.com.txt
├── main_bugcrowd.com.data
├── . . . 
```
## Demo

- karma_v2 [mode -ip]
[![asciicast](https://asciinema.org/a/1aKFM3oyQZ14t9H8V0qjp2lUV.svg)](https://asciinema.org/a/1aKFM3oyQZ14t9H8V0qjp2lUV?t=25&speed=5&theme=tango)

---

- karma_v2 [mode -asn]
[![asciicast](https://asciinema.org/a/0RcsIp6f6xxX81JmEHvvlepBT.svg)](https://asciinema.org/a/0RcsIp6f6xxX81JmEHvvlepBT?t=25&speed=5&theme=tango)

---

- karma_v2 [mode -cve]
[![asciicast](https://asciinema.org/a/4Ri9FW97qnVV37v3Mb2mNTKz8.svg)](https://asciinema.org/a/4Ri9FW97qnVV37v3Mb2mNTKz8?t=25&speed=5&theme=tango)

---

- karma_v2 [mode -favicon]
[![asciicast](https://asciinema.org/a/6bnPXhwacmCOanRRsdNIA1rs4.svg)](https://asciinema.org/a/6bnPXhwacmCOanRRsdNIA1rs4?t=25&speed=5&theme=tango)

---

- karma_v2 [mode -deep]

---

## Support
If you like `⡷⠂𝚔𝚊𝚛𝚖𝚊 𝚟𝟸⠐⢾` and it help you in work, money/bounty, pentesting, recon or just brings you happy feelings, please show your support ! 
:stop_sign:   **Please avoid opening GitHub issues for support requests or questions!**
buy me a beer to keep me powered :)

<a href="https://www.buymeacoffee.com/me_dheeraj" target="_blank"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a beer&emoji=🍺&slug=medheeraj&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff" alt="Buy Me A Beer"></a>
