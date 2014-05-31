class Rarma::Framework::Mission::Description

  def self.method_missing(m, *args, &block)
    Rarma.logger.debug "missing: #{m}, #{args}"
  end
end
