#Correct use of the Dependency Inversion Principle in Ruby
class Printer
  def initialize(data)
    @data = data
  end

  def print(formatter: PdfFormatter.new)
    formatter.format(@data)
  end
end

class PdfFormatter
  def format(data)
    # format data to Pdf logic
  end
end

class HtmlFormatter
  def format(data)
    # format data to Html logic
  end
end
