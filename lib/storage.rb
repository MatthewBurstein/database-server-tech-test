class Storage
  @data = {}

  def self.data
    @data
  end

  def self.data=(params)
    @data = params
  end
end
