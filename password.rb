
puts = "Create your account. Please enter User ID!"
id = gets.chomp
puts = "Hello #{id}, Please enter a Password!"
pw = gets.chomp
puts = "Thank you #{id}! Let's verify your information. Please verify your User ID"
idVerify = gets.chomp
puts = "Please verify your Password"
pwVerify = gets.chomp

def userIdVerify(id,idVerify)
  if id == idVerify
    return true
  else
    return false
  end
end

puts userIdVerify(id,idVerify)

def userPwVerify(pw,pwVerify)
  if pw == pwVerify
    return true
  else
    return false
  end
end

puts userPwVerify(pw,pwVerify)

def userVerify(userIdVerify,userPwVerify)
  if userIdVerify == true && userPwVerify == true
    puts "Your account has been verified. Thank You!"
  else
    puts "We were unable to verify your account. Please try again."
  # TODO: something like ---- load 'password.rb'---- to revert to inputs
  end
end

puts userVerify(userIdVerify(id,idVerify),userPwVerify(pw,pwVerify))
