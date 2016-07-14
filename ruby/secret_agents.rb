def encrypt(v)
  i = 0

  while i <= v.length - 1 
  	if v[i] == "z"
      v[i]="a"
    else
    v[i] = v[i].next
	end
    i += 1
  end
  return v.to_s
end

def decrypt(c)
  i = 0
  alpha = "abcdefghijklmnopqrstuvwxyz"

  while i <= c.length - 1
    c[i] = alpha[alpha.index(c[i])-1]
  	i += 1
  end
  return c.to_s
end

#p encrypt("abc")
#p encrypt("zed")
#p decrypt("bcd")
#p decrypt("afe")

#p decrypt(encrypt("swordfish"))

#The nested method works because it starts from within
#parenthesis and when it gets to the second method, it reserves
#what the first method did.

#alpha.index (gives us a number)
#alpha[what letter is at that number]

#Ask the user if they would like to decrypt or encrypt
#valid_input will keep asking the user until they answer

valid_input = false

until valid_input
 puts "Would you like to decrypt or encrypt a code?"
  eord = gets.chomp
  
  if eord == "encrypt"
    valid_input = true
  elsif eord == "decrypt"
    valid_input = true
  else
    puts "That is not a valid input"
  end
end

puts "What password would you like to #{eord}?"
password = gets.chomp

if eord == "encrypt"
  puts "The encrypted password is #{encrypt(password)}."
else
  puts "The decrypted password is #{decrypt(password)}."
end  