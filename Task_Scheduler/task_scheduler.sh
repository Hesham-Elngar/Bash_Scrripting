#! /bin/bash
menu() {
        echo "1) List tasks"
        echo "2) Add task"
        echo "3) Remove task"
        echo "4) Exit"
}
add_task() {
        read -p "Enter command to schedule: " command
        echo "Choose schedule type:"
        echo "1) Hourly"
        echo "2) Daily"
        echo "3) Weekly"
        echo "4) Custom (enter full cron expression)"
        read -p "Enter choice (1-4): " schedule_choice

    case $schedule_choice in
        1) schedule="0 * * * *" ;;         # Hourly (at minute 0 each hour)
        2) schedule="0 0 * * *" ;;         # Daily (at midnight)
        3) schedule="0 0 * * 0" ;;         # Weekly (Sunday at midnight)
        4) read -p "Enter custom cron expression: " schedule ;;
        *) echo "Invalid choice, task not added."; return ;;
    esac
        (crontab -l 2>/dev/null; echo "$schedule $command") | crontab -
echo "✅ Task added: '$command' scheduled as '$schedule'"
}
remove_task() {
crontab -l | nl -w2 -s '. ' > /tmp/mycron.$$
echo "choose which task to remove"
read choice
sed -i "${choice}d" /tmp/mycron.$$
# Install the new crontab
crontab /tmp/mycron.$$

rm /tmp/mycron.$$
echo "Task #$choice removed."
}
while true; do
        menu
        read -p "Choose an option: " choice
        case $choice in
                1) echo "Listing tasks..."
                        crontab -l
                        ;;
                2) echo "Adding task..."
                        add_task
                        ;;
                3) echo "Removing task..."
                        remove_task
                        ;;
                4) echo "Exiting..."
                        break;
                        ;;
                *) echo "Invalid option, try again."
                        ;;
        esac
done

