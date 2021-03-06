require_relative 'cleaner'
require_relative 'scout_view'

class ScoutCleanerController
  def initialize path_info
    @view = ScoutView.new
    if path_info
      path = path_info
    else
      path = @view.get_path
    end
    puts "The path variable you entered is: " + path
    @view.message(Cleaner.clean_folder path)
    @view.goodbye
  end
end

path_info = ARGV[0]

start = Time.now
ScoutCleanerController.new path_info
finish = Time.now

puts "Time for this run: "
puts finish - start