module HomeHelper
  def show_svg(path)
    File.open("app/assets/images/svgs/#{path}", "rb") do |file|
      raw file.read.html_safe
    end
  end
end
