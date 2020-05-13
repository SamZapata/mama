module HomeHelper

  def show_svg(path)
    File.open("app/assets/images/svgs/#{path}", "rb") do |file|
      raw file.read.html_safe
    end
  end

  # helper to show adjectives/attributes/ from the album - multimedia relationship
  def comp_show_attribrutes(album, media = 1)
    album_media = Album.find_by(name: album).album_media_joins
    medium = Multimedium.find(media)
    adjectives = []
    album_media.all.each do |m|
      if medium.id == m.multimedium_id
        adjectives << content_tag(:div, link_to(m.adjective, "/media/#{m.id}", remote: true, class: 'active', "data-target" => "#exampleModal", "data-toggle" => "modal"), class: 'option active')
      else
        adjectives << content_tag(:div, link_to(m.adjective, "/media/#{m.id}", remote: true, "data-target" => "#exampleModal", "data-toggle" => "modal"), class: 'option')
      end
    end
    adjectives.join.html_safe
  end

end
