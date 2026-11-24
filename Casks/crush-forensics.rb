cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.26.0"
  sha256 arm:   "8b0fcbdcc36871d040c4b9fd61eab671f77c955ece79f120bdeba8ec3602b78f",
         intel: "650519ccf6a1398edbf8fd31461df164bde9bfbbb82f4fd4985e2926d6240d30"

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
