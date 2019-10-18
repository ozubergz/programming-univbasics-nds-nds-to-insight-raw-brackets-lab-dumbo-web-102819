$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  
  nds.each do |elem|
    name = elem[:name]
    total = 0
    elem[:movies].each do |movie|
      total += movie[:worldwide_gross]
    end
    result[name] = total
  end
  result
  
end
