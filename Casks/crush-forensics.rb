cask "crush-forensics" do
  arch arm: "arm", intel: "intel"

  version "0.22.0"
  sha256 arm:   "869abefc7565e3406aeda8c2245a19e118ae5931613caec6f735e92c666815aa",
         intel: "40ddedb7d9d927e06502662a0c2040b57d6c2333ce432192052a8da3082825a8"

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
