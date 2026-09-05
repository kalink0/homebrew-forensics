class PeachForensics < Formula
  desc "Open source DFIR log workbench"
  homepage "https://github.com/kalink0/peach-forensics"
  url "https://github.com/kalink0/peach-forensics/releases/download/v0.6.0/peach-macos-v0.6.0.tar.gz"
  sha256 "b1ec4a6c5c4716d0641d06efcc6f3791b67cf882ae7e56aa29089c26f96d5e1e"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "peach"
  end

  test do
    system "#{bin}/peach", "--version"
  end
end
