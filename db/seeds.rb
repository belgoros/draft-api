3.times do |i|
  Post.create!(title: "title-#{i}", body: "fancy post-#{i}", tag_ids: [1, 2, 3])
end
