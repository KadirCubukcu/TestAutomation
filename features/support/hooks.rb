#encoding: UTF-8

Around('@fast') do |scenario, block|
  Timeout.timeout(0.5) do
    block.call
  end
end

Around('@slow') do |scenario, block|
  Timeout.timeout(30) do
    block.call
  end
end
