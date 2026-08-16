cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.15.2"
  sha256 arm:   "d5fb604d5951509f625d26f27f945a1dfe952e3f9f250a8e7df75f11ecc68dd9",
         intel: "0af73cc85f2e4b24a81e8b71a0534534d1d7530f01ccdcad84d50ca6e5860462"

  url "https://github.com/kalink0/crush-forensics/releases/download/v#{version}/crush-macos-#{arch}-v#{version}.zip",
      verified: "github.com/kalink0/crush-forensics/"
  name "Crush"
  desc "Open source digital forensic workbench"
  homepage "https://github.com/kalink0/crush-forensics"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Crush.app"
end
