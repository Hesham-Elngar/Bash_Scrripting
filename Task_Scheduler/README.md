# 🗓️ Bash Task Scheduler

A simple **task scheduler** written in **Bash** that allows you to **schedule, list, and remove tasks** using `cron`. With this script, you can automate repetitive commands at **hourly, daily, weekly, or custom intervals**. Perfect for Linux users who want a lightweight task scheduling solution without installing extra software.  

<img width="1400" height="720" alt="image" src="https://github.com/user-attachments/assets/122f96e4-10f3-4c54-8f93-42fe6c3fd136" />

---

## 🚀 Features

- **List scheduled tasks** with `crontab`.
- **Add tasks** with hourly, daily, weekly, or custom cron schedules.
- **Remove tasks** easily by selecting the task number.
- **Simple menu-driven interface** for easy use.
- Minimal dependencies – works on any Linux system with Bash.

---

## ⚡ Requirements

- Linux OS
- Bash shell
- `cron` service (usually installed by default)
- `nl`, `sed`, `crontab` commands (available on most Linux distributions)

---

## 📝 Usage

1. **Download or clone the script**:

```bash
git clone https://github.com/yourusername/bash-task-scheduler.git
cd bash-task-scheduler
```
---

2.Make the script executable:

```bash
chmod +x task_scheduler.sh
```

3.Run the script:

```bash
./task_scheduler.sh
```

4.Follow the menu:

```mathematica
1) List tasks
2) Add task
3) Remove task
4) Exit
```

## ⚙️ How It Works

<img width="777" height="418" alt="image" src="https://github.com/user-attachments/assets/648d7721-aa30-49b8-a9d2-7c154141c080" />

### Adding a Task
You enter the command you want to schedule.
Choose a schedule type:

Hourly – runs at minute 0 of every hour
Daily – runs at midnight
Weekly – runs on Sunday at midnight
Custom – enter your own cron expression
Task is added to your user's crontab.

### Removing a Task
Lists tasks with numbering.
Enter the number of the task you want to remove.
Task is removed from your crontab.

---
## 🖥️ Example

### Add a daily backup command:
``` bash
Enter command to schedule: /home/user/backup.sh
Choose schedule type:
1) Hourly
2) Daily
3) Weekly
4) Custom
Enter choice (1-4): 2
✅ Task added: '/home/user/backup.sh' scheduled as '0 0 * * *'
```

### Remove a task:
```bash
choose which task to remove: 1
Task #1 removed.
```
--- 

## 💡 Notes

Ensure the cron service is running on your system.
The script only manages the current user's crontab.
You can extend it to send email alerts, log outputs, or run scripts with environment variables.

## 👨‍💻 Author
**Hesham Mohamed Soliman Elngar** – DevOps & Linux Enthusiast  
[LinkedIn Profile](https://www.linkedin.com/in/hesham-elngar-277432249/)
