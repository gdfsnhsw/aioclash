{% if request.target == "clash" or request.target == "clashr" %}

# 系统参数
mixed-port: 7891            #集成端口，http与socks
redir-port: 7892            #透明代理端口，不能更改
tproxy-port: 7893           #tproxy端口
authentication:
  - "user:pass"             #http与socks的账号跟密码，推荐使用
allow-lan: true
bind-address: '*'
mode: Script
log-level: info
ipv6: false
external-controller: 0.0.0.0:9090
external-ui: dashboard
secret: ""                  #dashboard面板的密码，同时也是tracing的密码
interface-name: ens18
routing-mark: 6666
profile:
  store-selected: true      #策略组选择缓存开关，打开后可以保存策略组选择，重启不会回复默认
  tracing: true             #tracing开关，必须打开才能对接tracing
  store-fake-ip: true       #持久化fake-ip

hosts:
  # Firebase Cloud Messaging
  'mtalk.google.com': 108.177.125.188
  # Google Dl
  'dl.google.com': 180.163.151.161
  'dl.l.google.com': 180.163.151.161

# TUN设置
tun:
  enable: true         
  stack: system
  dns-hijack:
    - 22.0.0.2:53
#    - tcp://8.8.8.8:53
#    - tcp://8.8.4.4:53
#    - 8.8.8.8:53
#    - 8.8.4.4:53

# DNS设置  
dns:
  enable: true
  ipv6: false
  listen: 127.0.0.1:5352
  default-nameserver:
    - 223.5.5.5
    - 8.8.8.8
  enhanced-mode: fake-ip
  fake-ip-range: 22.0.0.0/8
  use-hosts: true
  fake-ip-filter:
    # === LAN ===
    - '*.example'
    - '*.home.arpa'
    - '*.invalid'
    - '*.lan'
    - '*.local'
    - '*.localdomain'
    - '*.localhost'
    - '*.test'
    # === Apple Software Update Service ===
    - 'mesu.apple.com'
    - 'swscan.apple.com'
    # === ASUS Router ===
    - '*.router.asus.com'
    # === Google ===
    - 'lens.l.google.com'
    - 'stun.l.google.com'
    ## Golang
    - 'proxy.golang.org'
    # === Linksys Wireless Router ===
    - '*.linksys.com'
    - '*.linksyssmartwifi.com'
    # === Windows 10 Connnect Detection ===
    - '*.ipv6.microsoft.com'
    - '*.msftconnecttest.com'
    - '*.msftncsi.com'
    - 'msftconnecttest.com'
    - 'msftncsi.com'
    # === NTP Service ===
    - 'ntp.*.com'
    - 'ntp1.*.com'
    - 'ntp2.*.com'
    - 'ntp3.*.com'
    - 'ntp4.*.com'
    - 'ntp5.*.com'
    - 'ntp6.*.com'
    - 'ntp7.*.com'
    - 'time.*.apple.com'
    - 'time.*.com'
    - 'time.*.gov'
    - 'time1.*.com'
    - 'time2.*.com'
    - 'time3.*.com'
    - 'time4.*.com'
    - 'time5.*.com'
    - 'time6.*.com'
    - 'time7.*.com'
    - 'time.*.edu.cn'
    - '*.time.edu.cn'
    - '*.ntp.org.cn'
    - '+.pool.ntp.org'
    - 'time1.cloud.tencent.com'
    # === Game Service ===
    ## Microsoft Xbox
    - 'speedtest.cros.wr.pvp.net'
    - '*.*.xboxlive.com'
    - 'xbox.*.*.microsoft.com'
    - 'xbox.*.microsoft.com'
    - 'xnotify.xboxlive.com'
    ## Nintendo Switch
    - '*.*.*.srv.nintendo.net'
    - '+.srv.nintendo.net'
    ## Sony PlayStation
    - '*.*.stun.playstation.net'
    - '+.stun.playstation.net'
    ## STUN Server
    - '+.stun.*.*.*.*'
    - '+.stun.*.*.*'
    - '+.stun.*.*'
    - 'stun.*.*.*'
    - 'stun.*.*'
    # === Music Service ===
    ## 咪咕音乐
    - '*.music.migu.cn'
    - 'music.migu.cn'
    ## 太和音乐
    - 'music.taihe.com'
    - 'musicapi.taihe.com'
    ## 腾讯音乐
    - 'songsearch.kugou.com'
    - 'trackercdn.kugou.com'
    - '*.kuwo.cn'
    - 'api-jooxtt.sanook.com'
    - 'api.joox.com'
    - 'joox.com'
    - 'y.qq.com'
    - '*.y.qq.com'
    - 'amobile.music.tc.qq.com'
    - 'aqqmusic.tc.qq.com'
    - 'mobileoc.music.tc.qq.com'
    - 'streamoc.music.tc.qq.com'
    - 'dl.stream.qqmusic.qq.com'
    - 'isure.stream.qqmusic.qq.com'
    ## 网易云音乐
    - 'music.163.com'
    - '*.music.163.com'
    - '*.126.net'
    ## 虾米音乐
    - '*.xiami.com'
    # === Other ===
    ## QQ Quick Login
    - 'localhost.ptlogin2.qq.com'
    - 'localhost.sec.qq.com'
    ## BiliBili P2P
    - '*.mcdn.bilivideo.cn'
  nameserver:
    - 223.5.5.5

{% endif %}
