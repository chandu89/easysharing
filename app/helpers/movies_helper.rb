# This module deals with movies helper methods
module MoviesHelper
  def movie_url(url)
    url.split('v=').last
  end

  # def sliced_text(text, read_more = true)
  #   read_more ? text[0, 300] : text[300, text.length - 1]
  # end
end
