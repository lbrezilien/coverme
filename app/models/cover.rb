class Cover < ActiveRecord::Base
  def youtube_id
    split_link = self.video_url.split('/')
    id = split_link.last
  end

  def self.search(query)
    if query.present?
      @results = where("title @@ :q or original_artist @@ :q or cover_artist @@ :q", q: query)
    else
      @results = Cover.all
    end
  end
end
