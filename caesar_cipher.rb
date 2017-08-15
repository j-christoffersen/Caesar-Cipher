def caesar_cipher s, shift
    s = s.split("").map do |letter|
        letter = letter.ord
        if letter >= 'a'.ord && letter <= 'z'.ord
            letter = letter + shift%26
            if letter >= 'z'.ord
                letter = letter - 26
            end
            letter.chr
        elsif letter >= 'A'.ord && letter <= 'Z'.ord
            letter = letter + shift%26
            if letter >= 'Z'.ord
                letter = letter - 26
            end
            letter.chr
        else
            letter.chr
        end
    end
    
    return s.join
end