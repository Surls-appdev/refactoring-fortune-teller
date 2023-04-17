class FortunesController < ApplicationController
  
  def horoscopes
   
    @sign = params.fetch("the_sign") #all params come in as Strings. I need to change them to Symbols using .to_sym in order to use them to key into the Hash returned by Zodiac.list
   
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(:leo)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "fortunes_template/fortunes.html.erb"})

  end
end
