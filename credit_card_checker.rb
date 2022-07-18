def credit_card_checker(number)
  patter = /^(?<first_digit>4|5)\d{15}/
  number_without_spaces = number.delete(" ")
  is_valid = number_without_spaces.match?(patter)
  match_data = number_without_spaces.match(patter)
  if is_valid
    if match_data[:first_digit] == "5"
      return "Valid Master Credit Card number"
    elsif match_data[:first_digit] == "4"
      return "Valid Visa Credit Card number"
    end
  else
    return "Invalid credit card number"
  end
end

# "4444 4444 4444 4444"
# "4444444444444444"
# "5" -> master
# "4" -> visa
credit_card_checker("4444 4444 4444 4444")
credit_card_checker("444 4444 4 444444 44")
