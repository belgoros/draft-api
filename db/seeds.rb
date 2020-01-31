puts "Creating posts ...."
Post.delete_all

3.times do |i|
  Post.create!(title: "title-#{i}", body: "fancy post-#{i}", tag_ids: [1, 2, 3])
end
puts "Created #{Post.count} posts with success"
