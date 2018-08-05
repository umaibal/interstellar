require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user attributes must not be empty" do
    user = User.new
    assert user.invalid?
    assert user.errors[:username].any?
    assert user.errors[:full_name].any?
    assert user.errors[:country].any?
    assert user.errors[:email].any?
    assert user.errors[:password].any?
    assert user.errors[:password_confirmation].any?
  end

  test "user phone number must be numerical" do
    user = User.new(username: "Arthur",
                    full_name: "Arthur Read",
                    country: "United States of America",
                    email: "aardvark@hotmail.com",
                    password: "dw",
                    password_confirmation: "dw")

    user.phone_number = "fjhldsoqje"
    assert user.invalid?

    # user.phone_number = 6273141
    # assert user.valid?
  end

  test "password confirmation must match password" do
    user = User.new(username: "DW",
      full_name: "DW Read",
      country: "United States of America",
      email: "deew@hotmail.com",
      password: "art",
      password_confirmation: "art")

      assert_equal user.password, user.password_confirmation
  end

  test "email must be valid" do
    user = User.new(username: "Buster",
      full_name: "Buster Baxter",
      country: "United States of America",
      password: "bax",
      password_confirmation: "bax")

    user.email = "@hotmail.ca"
    assert user.invalid?
    assert_match /^\w+@\w+(.com|.ca|.org)$/, user.email

    user.email = "umai@"
    assert user.invalid?
    assert_match /^\w+@\w+(.com|.ca|.org)$/, user.email

    user.email = "hihi@.ca"
    assert user.invalid?
    assert_match /^\w+@\w+(.com|.ca|.org)$/, user.email

    user.email = "baxter@hotmail.en"
    assert user.invalid?
    assert_match /^\w+@\w+(.com|.ca|.org)$/, user.email

    user.email = "baxter@hotmail.ca"
    assert user.valid?
    assert_match /^\w+@\w+(.com|.ca|.org)$/, user.email
  end
end
