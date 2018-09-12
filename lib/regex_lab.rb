def starts_with_a_vowel?(word)
  v=word.scan(/\b[aAeEiIoOuU]/)
  if v.empty?
    return false
  else
    return true
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  v=text.scan(/\b+un\w+ing/)
  if v.count == 4
    return v
  end
end

def words_five_letters_long(text)
  v=text.scan(/\b\w{5}\b/)
  return v
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  v=text.scan(/\b\p{Lu}\b[[:punct:]]/)
  if v.empty?
    return false
  else
    return true
  end
end

def valid_phone_number?(phone)
  #valid=phone.all? do |number|
      #number.scan(/\d/).join.size == 10
  valid=phone.scan(/\d/).join.size == 10
end
