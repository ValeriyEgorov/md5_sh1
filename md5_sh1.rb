# # Напишите программу, которая шифрует введённое пользователем слово одним из механизмов MD5 или SHA1.

# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require "digest"

# Введите слово или фразу для шифрования:
puts "Введите слово или фразу для шифрования: "
# Хороший программист
choice = nil

while choice == nil || choice == ''
	choice = STDIN.gets.encode("UTF-8")
end

# Каким способом зашифровать:
# 1. MD5
# 2. SHA1

puts "Каким способом зашифровать: "
puts "1. MD5"
puts "2. SHA1"
# 1
encoding = nil
while encoding == nil || encoding == ''
	encoding = STDIN.gets.encode("UTF-8")
end

# Вот что получилось:
# 9136d475e0fbf87e4fcdc9cb6c38ccc4
if encoding == '1'
	puts "Вот что получилось: #{Digest::MD5.hexdigest(choice)}"
else
	puts "Вот что получилось: #{Digest::SHA1.hexdigest(choice)}"
end


# Вот что получилось:
# 9136d475e0fbf87e4fcdc9cb6c38ccc4

# Для шифровки введённых пользователем данных, подключите модуль Digest и воспользуйтесь функцией 
# Digest::MD5.hexdigest или Digest::SHA1.hexdigest.
