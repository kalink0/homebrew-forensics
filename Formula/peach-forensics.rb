class PeachForensics < Formula
  desc "Open source DFIR log workbench"
  homepage "https://github.com/kalink0/peach-forensics"
  url "https://github.com/kalink0/peach-forensics/releases/download/v0.8.0/peach-macos-v0.8.0.tar.gz"
  sha256 "d8851c636ec3f10d4bc43929f8e94177e46cb76e46aed44f8b55fda480696277"
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
