@echo off
break>ip_list.txt
FOR /F "tokens=* USEBACKQ" %%F IN (`docker ps -aq`) DO (
docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" %%F >> ip_list.txt
)

python get_ip.py