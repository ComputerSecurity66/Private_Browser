# 🔐 Secure Private Browsing Launcher

A lightweight Windows Batch (`.bat`) utility that provides a simple menu for launching popular web browsers directly in their private browsing modes.

The tool is designed for quick access to privacy-focused browser sessions without manually opening the browser and selecting private/incognito mode.

## 🚀 Features

* 🌐 Google Chrome — Incognito Mode
* 🛡️ Microsoft Edge — InPrivate Mode
* 🦊 Mozilla Firefox — Private Window
* 🔴 Opera — Private Mode
* 🦁 Brave — Incognito Mode
* 🧅 Tor Browser — Launches Tor Browser
* 🔗 Open a website directly
* 📄 Launch a blank private browsing window
* 🔙 Simple menu navigation
* 💻 Windows Batch Script — no additional software required

## 📋 Supported Browsers

| Browser         | Private Mode   |
| --------------- | -------------- |
| Google Chrome   | Incognito      |
| Microsoft Edge  | InPrivate      |
| Mozilla Firefox | Private Window |
| Opera           | Private        |
| Brave           | Incognito      |
| Tor Browser     | Tor Browser    |

## 🖥️ Requirements

* Windows 10 or Windows 11
* At least one supported browser installed
* `.bat` file execution enabled

For Tor Browser, the script expects the Tor Browser shortcut to be located at:

```text
C:\Users\YOUR_USERNAME\Desktop\Tor Browser\Start Tor Browser.lnk
```

If your Tor Browser shortcut is located somewhere else, update the path in the batch file.

## ⚙️ How to Use

1. Download or clone this repository.
2. Open the `.bat` file.
3. Select a browser from the menu.
4. Choose one of the available options:

   * **Enter website address**
   * **Continue without web address**
   * **Back**
5. The selected browser will launch in its private browsing mode.

Example:

```text
======================================
      SECURE IN PRIVATE BROWSING
======================================
1. Google chrome
2. Microsoft Edge
3. FireFox
4. Opera
5. Brave
6. Tor
0. Exit
======================================

Choose a browser (0-6):
```

## 🔗 Opening a Website

Select:

```text
1. Enter website address
```

Then enter a URL such as:

```text
google.com
```

The selected browser will open the address using its private browsing mode.

## 📄 Blank Private Window

Select:

```text
2. Continue without web address (Blank Page)
```

This launches the selected browser without specifying a website.

## 🧅 Tor Browser

Tor Browser is handled differently because the script launches it through a Windows shortcut.

The default path is:

```text
C:\Users\%USERNAME%\Desktop\Tor Browser\Start Tor Browser.lnk
```

If your shortcut is stored elsewhere, modify the Tor Browser path inside the batch file.

When using the website option with Tor Browser, the script opens Tor and asks you to enter the website manually.

## 🔒 Privacy Note

Private/incognito browsing primarily prevents the browser from retaining certain local browsing information such as browsing history, cookies, and site data after the private session ends.

It does **not** make you completely anonymous or invisible online. Websites, network administrators, internet service providers, and other parties may still be able to observe or log network activity depending on the environment.

Tor Browser provides additional privacy and anonymity protections, but it also does not guarantee complete anonymity.

## 🛠️ Customization

You can customize the script by editing the browser commands.

For example:

```bat
set "browser_name=Google Chrome"
set "browser_cmd=chrome.exe --incognito"
```

You can also change the command prompt color:

```bat
color 0B
```

For a classic hacker-green appearance:

```bat
color 0A
```

## 📁 Project Structure

```text
Secure-Private-Browsing/
│
├── SecurePrivateBrowsing.bat
└── README.md
```

## ⚠️ Disclaimer

This project is provided for legitimate privacy, security, and convenience purposes.

The author does not guarantee complete anonymity, privacy, or security when using private browsing modes.

Users are responsible for complying with applicable laws, network policies, and the terms of service of the websites and browsers they use.

## 📜 License

Computer Security Latest Proprietary License Copyright © 2026 VALOR. All Rights Reserved.

This project is proprietary software and is not open source.

Use, copying, modification, redistribution, publication, sublicensing, commercial use, and creation of derivative works are prohibited unless explicitly authorized in writing by the copyright holder.

See the LICENSE file for the complete license terms.
