# spec/credit_card_checker_spec.rb
require_relative "../credit_card_checker"

describe "#credit_card_checker" do
  it "returns 'Invalid credit card number' when passed an empty string" do
    actual = credit_card_checker("")
    expected = "Invalid credit card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Invalid credit card number' when passed a string with at least one non-numeric character" do
    actual = credit_card_checker("4242-4242-4242-4242")
    expected = "Invalid credit card number"
    expect(actual).to eq(expected)
  end

  # it "returns 'Valid credit card number' when passed 4 groups of 4 digits separated by spaces" do
  #   actual = credit_card_checker("4242 4242 4242 4242")
  #   expected = "Valid credit card number"
  #   expect(actual).to eq(expected)
  # end

  # it "returns 'Valid credit card number' when passed 16 digits, whatever space there may be" do
  #   actual = credit_card_checker("42     42 4   242 42   42 4 2 4 2 ")
  #   expected = "Valid credit card number"
  #   expect(actual).to eq(expected)
  # end

  it "returns 'Valid Visa credit card number' when passed 16 digits starting with 4, whatever space there may be" do
    actual = credit_card_checker("42     42 4   242 42   42 4 2 4 2 ")
    expected = "Valid Visa Credit Card number"
    expect(actual).to eq(expected)
  end

  it "returns 'Valid Mastercard credit card number' when passed 16 digits starting with 5, whatever space there may be" do
    actual = credit_card_checker("52     42 4   242 42   42 4 2 4 2 ")
    expected = "Valid Master Credit Card number"
    expect(actual).to eq(expected)
  end
end
