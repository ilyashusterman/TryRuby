require 'json'


class App

  def main
    # test_print
    # test_method('test string')
    # test_sorting
    # test_files
    test_hash
  end

  def test_hash
    # options = 'i have the best country in the world'
    options = {'country': '123124'}
    # options = ['country', 'abcd']
    options[:country] = 'ilya' if options[:country].nil?
    puts options
  end

  def test_method(string)
    puts string
  end

  def test_files
    entries = Dir.entries '/'
    print entries
    puts File.read('random_file.txt')
    File.open('specs.json', 'a') do |f|
      puts f
    end
    f = File.read('specs.json')
    data = JSON.parse(f)
    puts data['key']
  end

  def test_sorting
    numbers = [123, 444, 1455]
    puts numbers
    puts 'Sorting numbers:'
    puts numbers.sort
    puts 'Sorting numbers with block code:'
    puts numbers.sort {
        |x, y| y <=> x
    }
  end

  def test_print
    puts 'Starting to test new ruby syntax language'
  end
end

app = App.new
app.main