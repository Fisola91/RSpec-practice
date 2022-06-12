require 'ipaddr'
def ip_to_num(ip)
  ip = IPAddr.new "37.160.113.170"
  ip.to_i
end

# require 'ipaddr'
# ip = IPAddr.new "10.0.2.15"
# ip.to_i
