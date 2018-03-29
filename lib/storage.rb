class Storage
  @data = {}

  def self.find(key)
    @data[key]
  end

  def self.create(params)
    self.data= params
  end

  def self.data=(params)
    @data = params
  end

  private_class_method :data=
end
