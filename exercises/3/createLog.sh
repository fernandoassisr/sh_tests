# /bin/bash
echo $(whoami)' - '$(date)' [' $(cat /etc/issue)'] - ['$(groups | cut -s -d" " -f1-  --output-delimiter="; ")']' >> log

