File.readlines('weekly_email_fields.txt').each do |line|
  puts line.scan(/%%(.*)%%/)
end