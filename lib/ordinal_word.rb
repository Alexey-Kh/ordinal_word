# Current version accepts numbers only in range [1..99]

module OrdinalWord

  class OrdinalWordError < Exception
  end

  def self.wordinalize(int)
    raise OrdinalWordError.new("Argument is not an Integer.") unless int.is_a?(Integer)
    raise OrdinalWordError.new("Number is less than 1.") if int < 1
    raise OrdinalWordError.new("Unfortunately, the module doesn't support numbers more than 99.") if int > 99
    if @@ordinalize_hash.has_key?(int)
      return @@ordinalize_hash[int]
    else
      tens = int / 10
      ones = int % 10
      return @@cardinal_hash[tens*10] + '-' + @@ordinalize_hash[ones]
    end
  end

  private

    @@ordinalize_hash = {
                         1 => 'first',
                         2 => 'second',
                         3 => 'third',
                         4 => 'fourth',
                         5 => 'fifth',
                         6 => 'sixth',
                         7 => 'seventh',
                         8 => 'eighth',
                         9 => 'ninth',
                         10 => 'tenth',
                         11 => 'eleventh',
                         12 => 'twelfth',
                         13 => 'thirteenth',
                         14 => 'fourteenth',
                         15 => 'fifteenth',
                         16 => 'sixteenth',
                         17 => 'seventeenth',
                         18 => 'eighteenth',
                         19 => 'nineteenth',
                         20 => 'twentieth',
                         30 => 'thirtieth',
                         40 => 'fortieth',
                         50 => 'fiftieth',
                         60 => 'sixtieth',
                         70 => 'seventieth',
                         80 => 'eightieth',
                         90 => 'ninetieth',
=begin
                         100 => 'one hundredth',
                         1_000 => 'one thousandth',
                         1_000_000 => 'one millionth'
=end
    }

    @@cardinal_hash = {
                       1 => 'one',
                       2 => 'two',
                       3 => 'three',
                       4 => 'four',
                       5 => 'five',
                       6 => 'six',
                       7 => 'seven',
                       8 => 'eight',
                       9 => 'nine',
                       10 => 'ten',
                       11 => 'eleven',
                       12 => 'twelve',
                       13 => 'thirteen',
                       14 => 'fourteen',
                       15 => 'fifteen',
                       16 => 'sixteen',
                       17 => 'seventeen',
                       18 => 'eighteen',
                       19 => 'nineteen',
                       20 => 'twenty',
                       30 => 'thirty',
                       40 => 'forty',
                       50 => 'fifty',
                       60 => 'sixty',
                       70 => 'seventy',
                       80 => 'eighty',
                       90 => 'ninety',
=begin
                       100 => 'one hundred',
                       101 => 'a hundred and one',
                       110 => 'a hundred and ten',
                       120 => 'a hundred and twenty',
                       200 => 'two hundred',
                       1,000 => 'one thousand',
                       1,001 => 'a thousand and one',
                       1,010 => 'a thousand and ten',
                       100,000 => 'one hundred thousand',
                       1,000,000 => 'one million',
                       2,000,000 => 'two million'
=end
    }
end


