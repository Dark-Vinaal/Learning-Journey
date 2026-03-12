## 🌐 Network & Internet Commands

### 📌 `ipconfig`

#### Description:

- Displays IP configuration details.
```cmd
ipconfig
```

#### Where & When Used:

- Network diagnostics
- Checking IP address

---

### 📌 `ipconfig /flushdns`

#### Description:

Clears the DNS resolver cache.
```cmd
ipconfig /flushdns
```

#### Where & When Used:

- Fix DNS issues
- Website loading problems

---

### 📌 `ipconfig /release`

#### Description:

- Releases current IP address.
```cmd
ipconfig /release
```

#### Where & When Used:

- Network reset
- DHCP troubleshooting

---

### 📌 `ipconfig /renew`

#### Description:

- Requests a new IP address from DHCP.
```cmd
ipconfig /renew
```

#### Where & When Used:

- After /release
- Fix connectivity issues

---

### 📌 `ping <website / IP>`

#### Description:

- Tests connectivity to a host.
```cmd
ping google.com
ping 8.8.8.8
```

#### Where & When Used:

- Internet connectivity testing
- Latency checking

---

### 📌 `tracert`

#### Description:

- Traces route packets take to a destination.
```cmd
tracert google.com
tracert 8.8.8.8
```

#### Where & When Used:

- Network troubleshooting
- Finding latency issues

---

### 📌 `nslookup`

#### Description:

- Queries DNS records.
```cmd
nslookup
nslookup google.com
```

#### Where & When Used:

- DNS troubleshooting
- Server lookup

---

### 📌 `netsh winsock reset`

#### Description:

- Resets Winsock catalog.

```cmd
netsh winsock reset
```

#### Where & When Used:

- Fix network corruption
- Internet issues after malware

---

### 📌 `netsh int ip reset`

#### Description:

- Resets TCP/IP stack.
```cmd
netsh int ip reset
```

#### Where & When Used:

- Severe network problems
- Network adapter issues

---

### 📌 `netsh wlan show wlanreport`

#### Description:

- Generates Wi-Fi diagnostics report.
```cmd
netsh wlan show wlanreport
```

#### Where & When Used:

- Wi-Fi connection debugging
- Network diagnostics

---
