require 'test_helper'
# require './controllers/students_controller'
require 'minitest/autorun' # the minitest itself
require 'ansi' # makes it colored
require 'turn' # improves the default output


class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@student = Student.new
  end

  def test_student_can_be_created
  	assert @student
  end



end
