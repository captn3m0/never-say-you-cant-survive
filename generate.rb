require 'nokogiri'

skip_classes = ['ebook-link-wrapper']

section_headers = []

section_headers[0] = "Section I - Introduction"
section_headers[4] = "Section II - What’s A Story, and How Do You Find One?"
section_headers[10] = "Section III - Your Feelings are Valid—and Powerful"
section_headers[15] = "Section IV - What We Write About When We Write About Spaceships"

for i in Dir.glob('html/*.html')
  html = ""
  complete_html = Nokogiri::HTML(open(i))
  page = complete_html.css('.entry-content')
  title = complete_html.css('.entry-title>a').inner_html[29..]

  started = ended = false
  page.children.each do |e|
    unless started
      if e.class != Nokogiri::XML::Text
        unless e.classes.include? 'frontmatter'
          started = true
        end
      end
    end

    if started
      # we don't need any empty tags
      trimmed = e.inner_text.gsub(/[[:space:]]/, '')
      if trimmed == ""
        next
      end

      if e.name == "h3"
        if /Introduction/.match? e.inner_text
          e.name = "h2"
        elsif /Section/.match? e.inner_text
          next
        elsif /Chapter/.match? e.inner_text
          e.name = "h2"
        end
      end

      skip = (e.classes & skip_classes).size > 0
      ended = true if e.matches?('.squib')

      if skip == false and ended == false
        html += e.to_s
      end
    end
  end
  fn = File.basename(i)
  File.write("chapters/#{fn}", html)
end

html = ""
File.open("urls.txt").each_with_index do |url, index|
  title = url.strip.split('/')[-1]
  unless section_headers[index].nil?
    html += "<h1>#{section_headers[index]}</h1>\n\n"
  end
  html += File.read("chapters/#{title}.html")
  html += "\n\n"
end

File.write("never-say-you-cant-survive.html", html)
`pandoc --metadata title="Never Say You Can’t Survive" -o never-say-you-cant-survive.epub --epub-metadata=metadata.xml --epub-cover-image=cover.jpg never-say-you-cant-survive.html`