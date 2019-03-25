delay = rand(60)

ruby_block "sleep #{delay} seconds" do
  block do
    sleep delay
  end
end 
