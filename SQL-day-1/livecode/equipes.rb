batch = %W(Nicholas Nathan Colin Marc Romain Oscar Martin Alex Hadrien)


p batch.shuffle.each_slice(3).to_a
