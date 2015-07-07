require 'test_helper'

class SunmailTest < ActionMailer::TestCase
  test "sendmail" do
    mail = Sunmail.sendmail
    assert_equal "Sendmail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "spam" do
    mail = Sunmail.spam
    assert_equal "Spam", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
