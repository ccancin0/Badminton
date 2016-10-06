require 'test_helper'

class ProducerTest < ActiveSupport::TestCase
   test "should not allow empty string" do
   		actors = actors(:three)
   		assert actors.valid?
   end	

   test "should allow blank for name" do
   		actors = actors(:ten)
   		assert_not actors.valid?
   end

   test "should allow blank for greeting" do
   		actors = actors(:ten)
   		assert_not actors.valid?
   end

   test "should allow blank for mission_statement" do
   		actors = actors(:ten)
   		assert_not actors.valid?
   end
end
