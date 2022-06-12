# require 'ipaddr'
# def ip_to_num(ip)
#   # IPAddr provides a set of methods to manipulate an IP address.
#   # Both IPv4 and IPv6 are supported.
#   ip = IPAddr.new ip
#   ip.to_i
# end

# def num_to_ip(*num )
#   num.pack("N").unpack("CCCC").join(".")
# end
# # [631271850].pack('N').unpack('CCCC').join('.')
# # => "37.160.113.170"
def ip_to_num(ip_address)
  # convert to array of base 2 binary numbers as strings
  binary_components = ip_address.split('.') #rjust means right jusrtify
                      .map { |num| num.to_i.to_s(2).rjust(8, '0') }
  # join them together and convert back to a base 10 integer
  binary_components.join.to_i(2)
end
p ip_to_num("37.160.113.170")
def num_to_ip(num)
  digital_number = num.to_s(2).rjust(32, "0").scan(/.{8}/).map { |ip| ip.to_i(2) }
  digital_number.join(".")

end
p num_to_ip(631271850)
