cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.25.0"
  sha256 arm:   "0791296eb1d672bcdf9b88f56355983506142443fa0c0acd48b8802eddf3cd99",
         intel: "c42a6344d7f479fca483199b8a5a8cadd7fb9dfe69676aae1a3636eed9b4e577"

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
