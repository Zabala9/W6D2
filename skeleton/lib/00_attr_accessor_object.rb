class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
      # define_method(name) do
      #   instance_variable_get("@#{name}")
      # end
      define_method(name) { instance_variable_get("@#{name}") }

      # define_method("#{name}=") do |ele|
      #   instance_variable_set("@#{name}", ele)
      # end
      define_method("#{name}=") { |ele| instance_variable_set("@#{name}", ele) }
    end
  end
end
