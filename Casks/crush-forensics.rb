cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.23.0"
  sha256 arm:   "eb31fa24b3ca8b90ae6da56e0f1e6c7f61dacc7a1f9dd57cb7b2fca181e78fd0",
         intel: "be2e93d877e9c0ec05d9d767c1921c0b9d8adc65cf319b538396ff84bc12599e"

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
