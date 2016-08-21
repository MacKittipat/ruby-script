#
# $ ruby office365-account-gen.rb ~/Downloads/emp.csv
#
# == emp.csv ==
# Firstname,Lastname
#

require 'csv'
customers = CSV.read(ARGV[0])
content = "User Name,First Name,Last Name,Display Name,Job Title,Department,Office Number,Office Phone,Mobile Phone,Fax,Address,City,State or Province,ZIP or Postal Code,Country or Region\n"
for customer in customers
  content += "#{customer[0]}.#{customer[1][0]}@11street.co.th".downcase + ",#{customer[0]},#{customer[1]},#{customer[0]} #{customer[1]}, , , , , , , , , , , \n"
end
File.write('office365_emp.csv', content)
