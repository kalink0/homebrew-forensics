cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.18.0"
  sha256 arm:   "8eee0418aa4ef341a34ce8ae0ca511a01f7d3f9a9c0c64e9f49d2e1c8acd7863",
         intel: "680c73428bc2629b52243d50e8826cc76aae69b292961851b14857f84c24d450"

  url "https://github.com/kalink0/crush-forensics/releases/download/v#{version}/crush-macos-#{arch}-v#{version}.zip",
      verified: "github.com/kalink0/crush-forensics/"
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
