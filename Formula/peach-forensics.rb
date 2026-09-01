class PeachForensics < Formula
  desc "Open source DFIR log workbench"
  homepage "https://github.com/kalink0/peach-forensics"
  url "https://github.com/kalink0/peach-forensics/releases/download/v0.4.1/peach-macos-v0.4.1.tar.gz"
  sha256 "5367fab926f21218633b3912b443e4b4d89aebd269518093094c40d344dac155"
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
