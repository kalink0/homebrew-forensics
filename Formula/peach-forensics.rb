class PeachForensics < Formula
  desc "Open source DFIR log workbench"
  homepage "https://github.com/kalink0/peach-forensics"
  url "https://github.com/kalink0/peach-forensics/releases/download/v0.5.0/peach-macos-v0.5.0.tar.gz"
  sha256 "95b64f374c1b68ff53fc02dd58e2d80d4d3f280b27bf1e79395a0616b97e8597"
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
