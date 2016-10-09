module Kernel
  def with(resource)
    begin
      yield
    ensure
      resource.dispose if resource.respond_to?(:dispose)
    end
  end
end