class Celular
  attr_reader :numbers

  MAPPING_KEY_BOARD = { '2' => ['A', 'B', 'C'],
                        '3' => ['D', 'E', 'F'],
                        '4' => ['G', 'H', 'I'],
                        '5' => ['J', 'K', 'L'],
                        '6' => ['M', 'N', 'O'],
                        '7' => ['P', 'Q', 'R', 'S'],
                        '8' => ['T', 'U', 'V'],
                        '9' => ['W', 'X', 'Y', 'Z'],
                        '0' => [' '],
                        '_' => [''] }

  def initialize(numbers)
    @numbers = numbers
  end

  def write_on_cellphone
  	list_numbers = @numbers.split(//)
  	new_list_1 = []
  	new_list_2 = []
  	message, previous_number = ''

  	list_numbers.each do |number|
  		if previous_number != number
  			new_list_1 << number
  			new_list_2 << 1
  		else
  			quantidade = new_list_2[-1]
  			new_list_2.pop
        new_list_2 << quantidade + 1
  		end
  		previous_number = number
  	end

  	zipped = new_list_1.zip(new_list_2)

  	zipped.each do |x, y|
      message = message + MAPPING_KEY_BOARD[x][y-1]
  	end

  	message
  end
end