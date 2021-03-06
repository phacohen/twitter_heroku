require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "account_activation" do
    mail = UserMailer.account_activation
    assert_equal "Account activation", mail.subject
    assert_equal ["to@peruli.org"], mail.to
    assert_equal ["from@peruli.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "password_reset" do
    mail = UserMailer.password_reset
    assert_equal "Password reset", mail.subject
    assert_equal ["to@peruli.org"], mail.to
    assert_equal ["from@peruli.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
