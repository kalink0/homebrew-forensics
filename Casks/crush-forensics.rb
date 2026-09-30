cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.21.0"
  sha256 arm:   "ed279da9c705a4dafbd85403e3ab946c1ab8ce855e80e6ccb8dd917e31f72123",
         intel: "f0e1a876bb467133840ec018f6134b01cc5f723caf3b0f9dde045f8a059dfa6b"

  url "https://github.com/kalink0/crush-forensics/releases/download/v#{version}/crush-macos-#{arch}-v#{version}.zip"
  name "Crush"
  desc "Open source digital forensic workbench"
  homepage "https://github.com/kalink0/crush-forensics"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "crush.app", target: "Crush.app"
end
