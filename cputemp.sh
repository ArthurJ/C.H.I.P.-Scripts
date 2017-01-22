lsb=$(i2cget -y -f 0 0x34 0x5f)
msb=$(i2cget -y -f 0 0x34 0x5e)
bin=$(( $(($msb << 4)) | $(($lsb & 0x0F))))
cel=`echo $bin | awk '{printf("%.1f", ($1/10) - 144.7)}'`

ax=$( axp209 --temperature | cut -c -4 )   

temp1=$(cat /sys/class/hwmon/hwmon0/temp1_input)
temp1=$(awk "BEGIN {print $temp1/1000}")

#Header:
#Date, Time, I2C/SMBus data (°C), Axp209 Sensor (°C), Thermal Zone "temp1" (°C)
echo $(date +%Y-%m-%d,%T) "," $cel "," $ax "," $temp1 
