cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.24.0"
  sha256 arm:   "4e50aa64f8406943cb7523166ce9d17950ff159ef37ee85a23bed6ca02caea77",
         intel: "b20b4cd50620bea7b7ffcb5ee7887ca626ba705cba79604bcd9690cb94fa7c91"

  url "https://github.com/kalink0/crush-forensics/releases/download/v#{version}/crush-macos-#{arch}-v#{version}.zip"
  name "Crush"
  desc "Open source digital forensic workbench"
  homepage "https://github.com/kalink0/crush-forensics"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "crush.app", target: "Crush.app"
end
