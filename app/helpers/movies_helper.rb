module MoviesHelper
  def movie_url(url)
    url.split("v=").last
  end
end
