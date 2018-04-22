module Rarma::Compiler::Processor::Keywords
  def process_keyword keyword, exp
    Rarma.logger.debug exp
    raise RuntimeError, "Unknown compiler keyword #{keyword}" unless respond_to? "process_keyword_#{keyword}".to_sym
    send("process_keyword_#{keyword}".to_sym, exp)
    exp
  end
  def process_keyword_require exp
    Rarma.logger.debug exp
    # load another source file into space
    file = exp.shift[1]
    Rarma::Compiler.load_file file
    exp
  end
end
