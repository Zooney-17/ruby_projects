def caesar_cipher(string, shift_factor)
  string_array = string.split("")
  ordinal_array = string_array.map { |str| str.ord}
  shifted_array = ordinal_array.map do |int|
    if int.between?(65,90) && (int + shift_factor) > 90
      ((int + shift_factor) - 90) + 64
    elsif int.between?(97,122) && (int + shift_factor) > 122
      ((int + shift_factor) - 122) + 96
    elsif int.between?(65,90) || int.between?(97,122)
      int + shift_factor
    else
      int + 0
    end
  end
  converted_array = shifted_array.map { |int| int.chr}
  final_cipher = converted_array.join("")
p final_cipher
end

caesar_cipher("What a string!", 5)