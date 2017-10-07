require 'json'


class App
  def main
    test_print
    test_sorting
    test_files
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