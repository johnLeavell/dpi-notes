def preparation_time_in_minutes(layers)
    layers = layers * 2
    return layers.to_i
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    sum = prepration_time_in_minutes(number_of_layers) + actual_minutes_in_oven
    sum.to_i
  end

  