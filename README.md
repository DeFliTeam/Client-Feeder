# Client-Feeder 

Instructions on how to feed your ADSB / M-LAT data to DeFli 

Instructions provided for Raspberry Pi, Ubuntu Installations & Docker. 

For Windows Installations please use VRS and rebroadcast to 34.120.137.41: 30004

# Installation Instructions 

**Install the feeder client** 

curl -L -o /tmp/deflifeed.sh https://raw.githubusercontent.com/defliteam/client-feeder/master/install.sh 

sudo bash /tmp/deflifeed.sh 

**Check it is working** 

$ host feed.defli.xyz

feed.defli.xyz has address 34.120.137.41 

#Expected Output 

$ netstat -t -n | grep -E '30004|31090'
tcp        0    182 localhost:43530     34.120.137.41:31090      ESTABLISHED
tcp        0    410 localhost:47332     34.120.137.41:30004      ESTABLISHED
