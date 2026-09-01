cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.16.0"
  sha256 arm:   "9203af6d750e06371bde71624d4135ac14298413e9964a37cc06c58b8d285cb8",
         intel: "5aee3432caf56f31853d49e07b7e750bd5edf96422f1fec9f8e8f9056c69ef20"

  url "https://github.com/kalink0/crush-forensics/releases/download/v#{version}/crush-macos-#{arch}-v#{version}.zip",
      verified: "github.com/kalink0/crush-forensics/"
  name "Crush"
  desc "Open source digital forensic workbench"
  homepage "https://github.com/kalink0/crush-forensics"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Crush.app"
end
