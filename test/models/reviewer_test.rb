require 'test_helper'

class ReviewerTest < ActiveSupport::TestCase
  test "should be no error" do
   		reviewers = reviewers(:one)
     	assert reviewers.valid?
   end

   test "should not allow name of length 16+" do
   		reviewers = reviewers(:two)
   		assert reviewers.valid?
   end	

   test "should not be allowed because not unique" do
   		reviewers = reviewers(:three)
   		assert reviewers.valid?
   end	

   test "should be allowed" do
   		reviewers = reviewers(:one)
   		reviewers2 = reviewers(:one)
   		assert_not_equal reviewers, reviewers2
   end	

   test "should be allowed" do
   		reviewers = reviewers(:four)
   		assert reviewers.valid?
   end	

   test "shouldn't be allowed empty handle" do
   		reviewers = reviewers(:six)
   		assert_not reviewers.valid?
   end	

   test "shouldn't be allowed, phone too long" do
   		reviewers = reviewers(:seven)
   		assert reviewers.valid?
   end	

   test "should be allowed" do
   		reviewers = reviewers(:eight)
   		assert reviewers.valid?
   end	

   test "should not allow years active to under 0" do
   		reviewers = reviewers(:nine)
   		assert reviewers.valid?
   end	

   test "shouldn't allowed over 125 " do
   		reviewers = reviewers(:ten)
   		assert_not reviewers.valid?
   end	

   test "shouldn't be allowed phone must have number " do
   		reviewers = reviewers(:eleven)
   		assert_not reviewers.valid?
   end	
end
