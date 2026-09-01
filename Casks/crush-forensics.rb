cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.17.0"
  sha256 arm:   "6cf857420cf69c3c32439d90373e0d04fbf164cfe2415d9597e5bd1e47f8721e",
         intel: "935e807f4aff8f0b767e18f5c5f7abb2975c1cbd5b0e2c2fab2dda3e51756988"

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
