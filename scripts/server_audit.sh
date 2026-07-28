REPORT="reports/server_report_$(date +%F_%H-%M-%S).txt"
{

echo "============================================="

echo "              SERVER AUDIT REPORT            "


echo "=============================================="


echo ""

echo "Date:"
date

echo ""

echo "Hostname:"
hostname

echo ""

echo "Current User:"
whoami

echo ""

echo "Logged-in Users:"
who

echo ""

echo "Disk inode Usage:"
df -i

echo ""

echo "Running SSH service:"
systemctl status ssh --no-pager

echo ""

echo "Load Average:"
uptime

echo ""

echo "Current Processes:"
ps aux | head


echo ""
echo "Operating System:"
grep PRETTY_NAME /etc/os-release

echo ""

echo "Kernel"
uname -r

echo ""

echo "Uptime:"
uptime

echo""

echo "Memory Usage:"
free -h

echo ""

echo "Disk Usage:"
df -h

echo "CPU Information:"
lscpu | grep "Model name"

echo ""

echo "IP Address:"
hostname -I

echo ""

echo "============================================="
echo "Audit  Complete"
echo "============================================="

} > "$REPORT"

echo "Report saved to $REPORT"
