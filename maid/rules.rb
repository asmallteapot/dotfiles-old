Maid.rules do
  rule "Delete old screenshots" do
    dir('~/Desktop/Screen shot *').each do |path|
      if 1.week.since?(accessed_at(path))
        trash(path)
      end
    end
  end
  
  rule "Add audio files longer than 30s to iTunes" do
    dir('~/Downloads/*.{mp3,aac}').each do |path|
      if duration_s(path) > 30.0
        move(path, '~/Music/iTunes/iTunes Media/Automatically Add to iTunes/')
      end
    end
  end
end
