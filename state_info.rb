@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan',
}

@cities = {
  OR: ['Portland', 'Bend'],
  FL: ['Miami', 'Palm Beach'],
  CA: ['Los Angeles', 'San Fransisco', 'San Diego'],
  NY: ['New York', 'Buffalo']
}

@states[:NJ] = 'New Jersey'
@states[:WA] = 'Washington'

@cities[:MI] = ['Detroit', 'Flint']
@cities[:WA] = ['Seattle', 'Port Angeles']

@taxes = {
  OR: 1.5,
  FL: 5,
  CA: 2,
  NY: 4,
  MI: 3.0,
  NJ: 7,
  WA: 6
}

def describe_state(state_code = nil)
  if state_code
    if state_key = @states[state_code.to_sym]
      if city_key = @cities[state_code.to_sym]
        "#{state_code} is for #{state_key}. It has #{@cities[state_code.to_sym].size} major cities: #{@cities[state_code.to_sym].join(', ')}."
      else city_key != @cities[state_code.to_sym]
        "#{state_code} is for #{state_key}. No information on its cities found."
      end
    else
      "no state by that name in here"
    end
  elsif state_code.nil?
    "no state entered"
  end
end

puts describe_state('NY')

def calculate_tax(state_code = nil, dollars = nil)
  if state_code and dollars
    if @taxes.has_key?(state_code.to_sym)
      print "calculated taxes for #{@states[state_code.to_sym]}: "
      tax_rate = @taxes[state_code.to_sym]
      tax_amount = dollars / (tax_rate + 1)
      tax_amount.round(2)
    else
      "no state with that code in here"
    end
  elsif state_code.nil? and dollars.nil?
    "please enter a state code and dollar amount"
  elsif state_code and dollars.nil?
    "please enter a state code and the amount you wish to calculate"
  end
end

puts calculate_tax('PC', 347)

def find_state_for_city(city_name = nil)
  if city_name
    @cities.each do |key, values|
      values.each do |value|
        if value == city_name
          print "#{city_name} is in #{@states[key]}"
        end
      end
    end
  elsif city_name.nil?
    "no city entered"
  end
end

puts find_state_for_city("Flint")







