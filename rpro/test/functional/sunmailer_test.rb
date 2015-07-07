require 'test_helper'

class SunmailerTest < ActionMailer::TestCase
  test "send_mail" do
    mail = Sunmailer.send_mail
    assert_equal "Send mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "spam" do
    mail = Sunmailer.spam
    assert_equal "Spam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
