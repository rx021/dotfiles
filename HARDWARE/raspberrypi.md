# RASPBERRY PI 

SSH into the zero 2 W and it has been difficult

## 1) disabled wifi power saving

- check if `PowerManagement:on`
```bash
iwconfig wlan0
```
- turn off power save
```bash
sudo iw dev wlan0 set power_save off
```
- check if `PowerManagement:off`

## 2) change SSH QoS settings
there appears to be a lag
so two things appeared to help

```bash
sudo vi /etc/ssh/sshd_config
```
```
# within /etc/ssh/sshd_config

# added this line so that wifi prioritizes the keyboard inputs for the pi
IPQoS cs0 cs0
```

