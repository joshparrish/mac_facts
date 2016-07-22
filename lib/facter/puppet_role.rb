# ([a-z]+)[0-9]+, i.e. www01 or logger22 have a puppet_role of www or logger
if Facter.value(:hostname) =~ /(class118|class119|class120|class210)/
  Facter.add('puppet_role') do
    setcode do
        'music_classroom'
    end
  end

elsif Facter.value(:hostname) =~ /fac.*[1][3][0-9]|cfa-fac[2][0-9][0-9]|cfa-fac254/
  Facter.add('puppet_role') do
    setcode do
        'music_faculty'
    end
  end

elsif Facter.value(:hostname) =~ /lab209/
  Facter.add('puppet_role') do
    setcode do
        'music_piano_lab'
    end
  end

elsif Facter.value(:hostname) =~ /lab140/
  Facter.add('puppet_role') do
    setcode do
        'music_lab140'
    end
  end

# ([a-z]+), i.e. www or logger have a puppet_role of www or logger
elsif Facter.value(:hostname) =~ /cfaa-fac[1-2][0-9][0-9]|fac[1][0-1][0-9]|fac121/
  Facter.add('puppet_role') do
    setcode do
      'art_faculty'
    end
  end

elsif Facter.value(:hostname) =~ /(class127|class[1][0][4-9])|cfaa-class209/
  Facter.add('puppet_role') do
    setcode do
      'art_classroom'
    end
  end

elsif Facter.value(:hostname) =~ /lab204/
  Facter.add('puppet_role') do
    setcode do
        'art_lab204'
    end
  end

elsif Facter.value(:hostname) =~ /lab208/
  Facter.add('puppet_role') do
    setcode do
        'art_lab208'
    end
  end

elsif Facter.value(:hostname) =~ /cfa-fac158/
  Facter.add('puppet_role') do
    setcode do
        'theatre_faculty'
    end
  end

# Set to hostname if no patterns match
else
  Facter.add('puppet_role') do
    setcode do
      'unassigned'
    end
  end
end
