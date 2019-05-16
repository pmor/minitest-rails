class ActionMailer::TestCase
  ##
  # Asserts that the number of emails sent matches the given number.
  #
  #   def test_emails
  #     assert_emails 0
  #     ContactMailer.welcome.deliver_now
  #     assert_emails 1
  #     ContactMailer.welcome.deliver_now
  #     assert_emails 2
  #   end
  #
  # If a block is passed, that block should cause the specified number of
  # emails to be sent.
  #
  #   def test_emails_again
  #     assert_emails 1 do
  #       ContactMailer.welcome.deliver_now
  #     end
  #
  #     assert_emails 2 do
  #       ContactMailer.welcome.deliver_now
  #       ContactMailer.welcome.deliver_later
  #     end
  #   end
  #
  # See also Minitest::Rails::Expectations::ActionMailer#must_have_emails
  # See https://api.rubyonrails.org/v5.0/classes/ActionMailer/TestHelper.html#method-i-assert_emails
  #
  # :method: assert_emails
  # :call-seq: assert_emails(number, &block)

  # Asserts that no emails have been sent.
  #
  #   def test_emails
  #     refute_emails
  #     ContactMailer.welcome.deliver_now
  #     assert_emails 1
  #   end
  #
  # If a block is passed, that block should not cause any emails to be sent.
  #
  #   def test_emails_again
  #     refute_emails do
  #       # No emails should be sent from this block
  #     end
  #   end
  #
  # Note: This assertion is simply a shortcut for:
  #
  #   assert_emails 0, &block
  #
  # See also Minitest::Rails::Expectations::ActionMailer#wont_have_emails
  # See https://api.rubyonrails.org/v5.0/classes/ActionMailer/TestHelper.html#method-i-assert_no_emails
  #
  # :method: refute_emails
  # :call-seq: refute_emails(&block)
  alias refute_emails assert_no_emails

  ##
  # Asserts that the number of emails enqueued for later delivery matches
  # the given number.
  #
  #   def test_emails
  #     assert_enqueued_emails 0
  #     ContactMailer.welcome.deliver_later
  #     assert_enqueued_emails 1
  #     ContactMailer.welcome.deliver_later
  #     assert_enqueued_emails 2
  #   end
  #
  # If a block is passed, that block should cause the specified number of
  # emails to be enqueued.
  #
  #   def test_emails_again
  #     assert_enqueued_emails 1 do
  #       ContactMailer.welcome.deliver_later
  #     end
  #
  #     assert_enqueued_emails 2 do
  #       ContactMailer.welcome.deliver_later
  #       ContactMailer.welcome.deliver_later
  #     end
  #   end
  #
  # See also Minitest::Rails::Expectations::ActionMailer#must_have_enqueued_emails
  # See https://api.rubyonrails.org/v5.0/classes/ActionMailer/TestHelper.html#method-i-assert_enqueued_emails
  #
  # :method: assert_enqueued_emails
  # :call-seq: assert_enqueued_emails(number, &block)

  ##
  # Asserts that no emails are enqueued for later delivery.
  #
  #   def test_no_emails
  #     refute_enqueued_emails
  #     ContactMailer.welcome.deliver_later
  #     assert_enqueued_emails 1
  #   end
  #
  # If a block is provided, it should not cause any emails to be enqueued.
  #
  #   def test_no_emails
  #     refute_enqueued_emails do
  #       # No emails should be enqueued from this block
  #     end
  #   end
  #
  # See also Minitest::Rails::Expectations::ActionMailer#wont_have_enqueued_emails
  # See https://api.rubyonrails.org/v5.0/classes/ActionMailer/TestHelper.html#method-i-assert_no_enqueued_emails
  #
  # :method: refute_enqueued_emails
  # :call-seq: refute_enqueued_emails(&block)
  alias refute_enqueued_emails assert_no_enqueued_emails
end