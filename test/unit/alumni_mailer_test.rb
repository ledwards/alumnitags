require 'test_helper'

class AlumniMailerTest < ActionMailer::TestCase
  test "forward" do
    @expected.subject = 'AlumniMailer#forward'
    @expected.body    = read_fixture('forward')
    @expected.date    = Time.now

    assert_equal @expected.encoded, AlumniMailer.create_forward(@expected.date).encoded
  end

end
