module PostsHelper
  def current_ep
    if Post.all.order("id asc").limit(20).where("bit_length(file_link) > 0").first.nil?
      return "#"
    else
      x = Post.all.order("id asc").limit(20).where("bit_length(file_link) > 0 AND posted IS TRUE").first
      return x.file_link
    end
  end
end
