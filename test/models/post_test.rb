require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "post is created" do
    @post = Post.new
    assert !@post.nil?
  end
end
