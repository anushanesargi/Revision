def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)

  # puts "#{cipher}"

  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end

  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # puts "#{cipher}"

  plaintext_chars = ciphertext.chars.map do |char|
    # puts cipher.ord
    cipher[char.ord - 65]
  end
  return plaintext_chars.join
end