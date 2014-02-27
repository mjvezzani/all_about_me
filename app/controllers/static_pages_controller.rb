class StaticPagesController < ApplicationController
  def index
    @posts = Post.order('created_at desc').limit(3)
  end

  def about
  end

  def contact
  end
end
