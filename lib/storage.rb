class Storage
  @data = {}

  def self.data
    @data
  end

  def self.create(params)
    self.data= params
  end

  def self.data=(params)
    @data = params
  end

  private_class_method :data=
end
