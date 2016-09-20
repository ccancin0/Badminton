require 'test_helper'

class ActorTest < ActiveSupport::TestCase
   test "should be no error, valid value for name" do
   		actors = actors(:one)
     	assert actors.valid?
   end

   test "should not allow name of length 60+" do
   		actors = actors(:two)
   		assert actors.valid?
   end	

   test "should not allow empty string" do
   		actors = actors(:three)
   		assert actors.valid?
   end	

   test "should not allow same name" do
   		actors = actors(:one)
   		actors2 = actors(:one)
   		assert_not_equal actors, actors2
   end	

   test "should not allow anything other than the 3 options given" do
   		actors = actors(:four)
   		assert actors.valid?
   end	

   test "should allow blank for homepage" do
   		actors = actors(:six)
   		assert_not actors.valid?
   end	

   test "should not allow anything other than http or https" do
   		actors = actors(:seven)
   		assert actors.valid?
   end	

   test "should not allow age to be 1 or below" do
   		actors = actors(:eight)
   		assert actors.valid?
   end	

   test "should not allow age to be over 125" do
   		actors = actors(:nine)
   		assert actors.valid?
   end	

   test "should allow blank for age" do
   		actors = actors(:ten)
   		assert_not actors.valid?
   end	

end
