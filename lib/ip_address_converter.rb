require 'ipaddr'
def ip_to_num(ip)
  # IPAddr provides a set of methods to manipulate an IP address.
  # Both IPv4 and IPv6 are supported.
  ip = IPAddr.new ip
  ip.to_i
end
