#ard_text_1.rb
Facter.add(:puppet_role) do
  confine :kernel => "Darwin"
  setcode do
    Facter::Util::Resolution.exec("defaults read /Library/Preferences/com.apple.RemoteDesktop Text1")
  end
end
