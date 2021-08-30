<h1 align="center">
  <img src="img/karma_v2_logo.png" alt="axio m" width="530px"></a>
  <br>
</h1>
<h1 align="center">
⡷⠂𝚔𝚊𝚛𝚖𝚊 𝚟𝟸⠐⢾
</h1>

<h2 align="center">
  𝚔𝚊𝚛𝚖𝚊 𝚟𝟸 is a Passive Open Source Intelligence (OSINT) Automated Rconnaissance (framework)
  
![Follow on Twitter](https://img.shields.io/twitter/follow/Dheerajmadhukar?style=social)  [![Version](https://img.shields.io/badge/Release-%E2%A1%B7%E2%A0%82%F0%9D%9A%94%F0%9D%9A%8A%F0%9D%9A%9B%F0%9D%9A%96%F0%9D%9A%8A%20%F0%9D%9A%9F%F0%9D%9F%B8%E2%A0%90%E2%A2%BE-white.svg)]()  [![Build](https://img.shields.io/badge/Supported_OS-Linux-white.svg)]() [![Build](https://img.shields.io/badge/Supported_WSL-Windows-white.svg)]()   [![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/dheerajkmadhukar)
</h2>
𝚔𝚊𝚛𝚖𝚊 𝚟𝟸 can be used by Infosec Researchers, Penetration Testers, Bug Hunters to find deep information, more assets, WAF/CDN bypassed IPs, Internal/External Infra, Publically exposed leaks and many more about their target. Shodan Premium API key is required to use this automation. Output from the `𝚔𝚊𝚛𝚖𝚊 𝚟𝟸` is displayed to the screen and saved to files/directories.

- Regarding Premium Shodan API
Please see the Shodan site for more information. Shodan website: [Shodan](https://www.shodan.io) API: [https://developer.shodan.io/api](https://developer.shodan.io/api)

## Usage
You should use this with docker, just by sending this command:
```bash
$ bash karma_v2 -h
```
## Features
- Import and parse Nmap XML files
- Run and Schedule Nmap Scan from dashboard
- Statistics and Charts on discovered services, ports, OS, etc...
- Inspect a single host by clicking on its IP address
- Attach labels on a host
- Insert notes for a specific host
- Create a PDF Report with charts, details, labels and notes
- Copy to clipboard as Nikto, Curl or Telnet commands
- Search for CVE and Exploits based on CPE collected by Nmap
- RESTful API

## Roadmap for v2.1
Upcoming features for the v2.1:
- [todo] Improve template: try to define better the html template and charts
- [todo] Improve API: create a documentation/wiki about it
- [todo] Wiki: create WebMap User Guide on GitHub
- [working] Authentication or something that could blocks access to WebMap if != localhost
- [working] Scan diff: show difference between two scheduled nmap scan report
- [todo] Zaproxy: Perform web scan using the OWASP ZAP API

# Operating Systems Supported
| OS         | Supported | Easy Install  | Tested        | 
|------------|-----------|---------------|---------------|
| Ubuntu     |    Yes    | Yes           | Ubuntu 20.04  |
| Kali       |    Yes    | Yes           | Kali 2020.4   |
| Debian     |    Yes    | Yes           | Debian 10     |
| Windows    |    Yes    | Yes           | WSL w/ Ubuntu |
| MacOS      |    Yes    | Yes           | MacOS 11.4    |
| Arch Linux |    Yes    | No            | Yes           |

## Demo

- karma_v2 [mode -ip]
[![asciicast](https://asciinema.org/a/1aKFM3oyQZ14t9H8V0qjp2lUV.svg)](https://asciinema.org/a/1aKFM3oyQZ14t9H8V0qjp2lUV?autoplay=1&t=25&speed=5&theme=solarized-dark)

<script src="https://asciinema.org/a/14.js" id="asciicast-14" async data-autoplay="true" data-size="big"></script>
https://asciinema.org/a/1aKFM3oyQZ14t9H8V0qjp2lUV

- karma_v2 [mode -asn]
[![asciicast](https://asciinema.org/a/0RcsIp6f6xxX81JmEHvvlepBT.svg)](https://asciinema.org/a/0RcsIp6f6xxX81JmEHvvlepBT?t=25&speed=5&theme=solarized-dark)
https://asciinema.org/a/0RcsIp6f6xxX81JmEHvvlepBT

- karma_v2 [mode -cve]
[![asciicast](https://asciinema.org/a/4Ri9FW97qnVV37v3Mb2mNTKz8.svg)](https://asciinema.org/a/4Ri9FW97qnVV37v3Mb2mNTKz8?t=25&speed=5&theme=solarized-dark)

- karma_v2 [mode -favicon]
[![asciicast](https://asciinema.org/a/6bnPXhwacmCOanRRsdNIA1rs4.svg)](https://asciinema.org/a/6bnPXhwacmCOanRRsdNIA1rs4?t=25&speed=5&theme=solarized-dark)

- karma_v2 [mode -deep]

## Support
If you like `⡷⠂𝚔𝚊𝚛𝚖𝚊 𝚟𝟸⠐⢾` and it help you in work, money/bounty, pentesting, recon or just brings you happy feelings, please show your support ! 

buy me a beer to keep me powered :)

<a href="https://www.buymeacoffee.com/me_dheeraj" target="_blank"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a beer&emoji=🍺&slug=medheeraj&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff" alt="Buy Me A Beer"></a>
