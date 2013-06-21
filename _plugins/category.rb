module Jekyll
  class Post
    def url
      return @url if @url

      url = if permalink
        permalink
      else
        {
          "year"       => date.strftime("%Y"),
          "month"      => date.strftime("%m"),
          "day"        => date.strftime("%d"),
          "title"      => CGI.escape(slug),
          "i_day"      => date.strftime("%d").to_i.to_s,
          "i_month"    => date.strftime("%m").to_i.to_s,
          "categories" => categories.map { |c| URI.escape(c.to_s.gsub(/ /, '-')) }.join('/'),
          "short_month" => date.strftime("%b"),
          "y_day"      => date.strftime("%j"),
          "output_ext" => self.output_ext
        }.inject(template) { |result, token|
          result.gsub(/:#{Regexp.escape token.first}/, token.last)
        }.gsub(/\/\//, "/")
      end

      # sanitize url
      @url = url.split('/').reject{ |part| part =~ /^\.+$/ }.join('/')
      @url += "/" if url =~ /\/$/
      @url.gsub!(/\A([^\/])/, '/\1')
      @url
    end
  end
end
