cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.19.0"
  sha256 arm:   "cb3eda4d3d617fb849e3e7d292992d37fca040ddc8df784461f368b56b84e714",
         intel: "0fab218374318a229c4a771ab5ba0f016d61bfc7e4d916c131ef52e20c61ba13"

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
