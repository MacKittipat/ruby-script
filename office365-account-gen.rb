#
# $ ruby office365-account-gen.rb ~/Downloads/emp.csv
#
require 'csv'
customers = CSV.read(ARGV[0])
puts "User Name,First Name,Last Name,Display Name,Job Title,Department,Office Number,Office Phone,Mobile Phone,Fax,Address,City,State or Province,ZIP or Postal Code,Country or Region"
for customer in customers
  puts "#{customer[0]}.#{customer[1][0]}@11street.co.th".downcase + ",#{customer[0]},#{customer[1]},#{customer[0]} #{customer[1]}, , , , , , , , , , , "
end
