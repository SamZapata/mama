class Core::FetchMedia

  def call(m)
    puts "============= I'm staying here #{m} =========="
    Multimedium.find(m)
  end
end
