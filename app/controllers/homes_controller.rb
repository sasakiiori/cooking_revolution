class HomesController < ApplicationController
  def top
    @post = Post.new
  end
end
