#
# Update status of pacients
#

function update_status( s1 :: Int64, s2 :: Int64, r :: Float64, input :: MDInput)
  # Check contatmination
  if r < input.xsec
    if  ( s1 == 1 || s2 == 1 ) && ( s1 < 3 && s2 < 3 ) # 3 nor 4 are dead and immune
      if rand() < input.pcont
        return 1, 1, true
      end
    end
    return s1, s2, true
  end
  return s1, s2, false
end
