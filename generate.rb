require 'nokogiri'

skip_classes = ['ebook-link-wrapper']

for i in Dir.glob('html/*.html')
  html = ""
  puts i
  complete_html = Nokogiri::HTML(open(i))
  page = complete_html.css('.entry-content')
  title = complete_html.css('.entry-title>a').inner_html[29..]

  started = ended = false
  page.children.each do |e|
    unless started
      if e.class != Nokogiri::XML::Text
        unless e.classes.include? 'frontmatter'
          puts e.classes
          started = true
        end
      end
    end

    if started
      trimmed = e.inner_text.gsub(/[[:space:]]/, '')
      if trimmed == "" and not ['hr'].include? e.name
        next
      end

      if e.name == "h3"
        if e.inner_text.strip[0..7] == "Section" or e.inner_text.strip[0..12] == "Introduction"
          e.name = "h1"
        else
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
File.open("urls.txt").each do |url|
  title = url.strip.split('/')[-1]
  html += File.read("chapters/#{title}.html")
  html += "\n\n"
end

File.write("never-say-you-cant-survive.html", html)
`pandoc --metadata title="Never Say You Can’t Survive" -o never-say-you-cant-survive.epub --epub-metadata=metadata.xml --epub-cover-image=cover.jpg never-say-you-cant-survive.html`