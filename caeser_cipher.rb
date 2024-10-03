# caeser cipher

# caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"

def caesar_cipher(string, shift) 
    

    lowercase_lower_limit = 97
    lowercase_upper_limit = 122

    uppercase_lower_limit = 65
    uppercase_upper_limit = 90

    result = ''

    # or use string.each_char
    string.split("").each do |char|
        if char.ord.between?(lowercase_lower_limit, lowercase_upper_limit)
            new_char = ((char.ord - lowercase_lower_limit + shift) % 26 + lowercase_lower_limit).chr
            result += new_char
        elsif char.ord.between?(uppercase_lower_limit, uppercase_upper_limit)
            new_char = ((char.ord - uppercase_lower_limit + shift) % 26 + uppercase_lower_limit).chr
            result += new_char
        else
            result += char
        end

    end

    result
end

print (caesar_cipher("What a string!", 5))