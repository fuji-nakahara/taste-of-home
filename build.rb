require 'fuji_markdown'

output = <<~EOS
  作品タイトル: 家庭の味
  ============

EOS

Dir[File.expand_path('docs/*.md', __dir__)].sort.each do |path|
  output += FujiMarkdown.render(File.read(path), :KAKUYOMU) + "\n"
end

output += <<~EOS 
  <終>
EOS

File.write('家庭の味.txt', output)
