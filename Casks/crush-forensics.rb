cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.20.0"
  sha256 arm:   "db26bcfbfb2ab753c324b27ea59aeb60004b7f75fc0fdaf237523dfa09ae1b57",
         intel: "8f5abf7994940ed7a250f6d48616cc7d088fcb3ac617b1da815625d07ee75a40"

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
