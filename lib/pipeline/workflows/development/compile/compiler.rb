# frozen_string_literal: true

class Compiler
  def initialize(config)
    @config = config
  end

  def compile
    system(@config[:build_command])
  end
end
