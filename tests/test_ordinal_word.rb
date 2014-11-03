require "./lib/ordinal_word.rb"
require "minitest/autorun"

class OrdinalNameTest < MiniTest::Test
  
  def test_should_raise_exception_if_not_integer
    assert_raises(OrdinalWord::OrdinalWordError) {OrdinalWord.wordinalize('df')}
    assert_raises(OrdinalWord::OrdinalWordError) {OrdinalWord.wordinalize(2.2)}
    assert_raises(OrdinalWord::OrdinalWordError) {OrdinalWord.wordinalize(Array.new)}
    assert_raises(OrdinalWord::OrdinalWordError) {OrdinalWord.wordinalize('Hash.new')}
    assert_raises(OrdinalWord::OrdinalWordError) {OrdinalWord.wordinalize(nil)}
    assert_raises(OrdinalWord::OrdinalWordError) {OrdinalWord.wordinalize(-1)}
    assert_raises(OrdinalWord::OrdinalWordError) {OrdinalWord.wordinalize(0)}
    assert_raises(OrdinalWord::OrdinalWordError) {OrdinalWord.wordinalize(100)}
  end

  def test_should_properly_transform_numbers_from_1_to_99
    assert_equal('first', OrdinalWord.wordinalize(1))
    assert_equal('second', OrdinalWord.wordinalize(2))
    assert_equal('third', OrdinalWord.wordinalize(3))
    assert_equal('fourth', OrdinalWord.wordinalize(4))
    assert_equal('fifth', OrdinalWord.wordinalize(5))
    assert_equal('sixth', OrdinalWord.wordinalize(6))
    assert_equal('seventh', OrdinalWord.wordinalize(7))
    assert_equal('eighth', OrdinalWord.wordinalize(8))
    assert_equal('ninth', OrdinalWord.wordinalize(9))
    assert_equal('tenth', OrdinalWord.wordinalize(10))
    assert_equal('eleventh', OrdinalWord.wordinalize(11))
    assert_equal('twelfth', OrdinalWord.wordinalize(12))
    assert_equal('thirteenth', OrdinalWord.wordinalize(13))
    assert_equal('fourteenth', OrdinalWord.wordinalize(14))
    assert_equal('fifteenth', OrdinalWord.wordinalize(15))
    assert_equal('sixteenth', OrdinalWord.wordinalize(16))
    assert_equal('seventeenth', OrdinalWord.wordinalize(17))
    assert_equal('eighteenth', OrdinalWord.wordinalize(18))
    assert_equal('nineteenth', OrdinalWord.wordinalize(19))
    assert_equal('twentieth', OrdinalWord.wordinalize(20))
    assert_equal('thirtieth', OrdinalWord.wordinalize(30))
    assert_equal('fortieth', OrdinalWord.wordinalize(40))
    assert_equal('fiftieth', OrdinalWord.wordinalize(50))
    assert_equal('sixtieth', OrdinalWord.wordinalize(60))
    assert_equal('seventieth', OrdinalWord.wordinalize(70))
    assert_equal('eightieth', OrdinalWord.wordinalize(80))
    assert_equal('ninetieth', OrdinalWord.wordinalize(90))

    assert_equal('thirty-first', OrdinalWord.wordinalize(31))
    assert_equal('forty-second', OrdinalWord.wordinalize(42))
    assert_equal('fifty-third', OrdinalWord.wordinalize(53))
    assert_equal('sixty-fourth', OrdinalWord.wordinalize(64))
    assert_equal('seventy-fifth', OrdinalWord.wordinalize(75))
    assert_equal('eighty-sixth', OrdinalWord.wordinalize(86))
    assert_equal('ninety-seventh', OrdinalWord.wordinalize(97))
    assert_equal('ninety-eighth', OrdinalWord.wordinalize(98))
    assert_equal('ninety-ninth', OrdinalWord.wordinalize(99))
  end

end