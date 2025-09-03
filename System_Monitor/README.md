# 🖥️ Linux System Monitor

A lightweight **Linux system monitoring tool** written in **Bash** that continuously tracks your system's **CPU**, **Memory**, and **Disk** usage. Receive **real-time alerts** when any resource exceeds a defined threshold. Perfect for system administrators or anyone who wants to keep an eye on their system performance.  

<img width="1400" height="720" alt="image" src="https://github.com/user-attachments/assets/14746ce3-fa61-46d5-8ac0-52e77932bd37" />

---

## 🚀 Features

- Monitor **CPU usage** in real-time.
- Monitor **Memory usage** in real-time.
- Monitor **Disk usage** in real-time.
- **Customizable thresholds** for CPU, memory, and disk.
- **Instant alerts** when usage exceeds thresholds.
- Minimal dependencies – works on any Linux system with Bash.

---

<img width="679" height="367" alt="image" src="https://github.com/user-attachments/assets/31c1381e-efb4-4a51-8ca6-fa763acd5ec9" />


## ⚡ Requirements

- Linux OS
- Bash shell
- `top`, `free`, `df`, and `awk` commands (available by default on most Linux distributions)

---

## 📝 Usage

1. **Clone the repository** or copy the script to your system:

```bash
git clone https://github.com/yourusername/linux-system-monitor.git
cd linux-system-monitor
```

2. Make the script executable:
```bash
chmod +x system_monitor.sh
```

3. Run the script:
```bash
./system_monitor.sh
```



⚙️ Configuration
```bash
CPU_THRESHOLD=80      # CPU usage threshold in percentage
MEMORY_THRESHOLD=80   # Memory usage threshold in percentage
DISK_THRESHOLD=80     # Disk usage threshold in percentage
```


## 🖥️ How It Works

CPU: Uses top to calculate total CPU usage.
Memory: Uses free to calculate memory usage percentage.
Disk: Uses df to calculate disk usage percentage.
If any usage exceeds the threshold, an alert is displayed in red on the terminal.

## 🔔 Alert Example
```bash
ALERT: CPU usage exceeded threshold! Current value: 85%
ALERT: MEMORY usage exceeded threshold! Current value: 92%
ALERT: DISK usage exceeded threshold! Current value: 90%
```


## ⏱️ Refresh Rate

The script refreshes every 2 seconds.
Modify the sleep 2 line in the script to adjust the refresh rate.


## 💡 Notes

Make sure you run the script in a terminal that supports ANSI colors for proper alert display.
Can be extended to send alerts via email, Slack, or other notification services.


👨‍💻 Author

Hesham Mohamed Soliman Elngar – DevOps & Linux Enthusiast \
[LinkedIn Profile](https://www.linkedin.com/in/hesham-elngar-277432249/)
