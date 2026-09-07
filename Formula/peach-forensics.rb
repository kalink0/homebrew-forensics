class PeachForensics < Formula
  desc "Open source DFIR log workbench"
  homepage "https://github.com/kalink0/peach-forensics"
  url "https://github.com/kalink0/peach-forensics/releases/download/v0.7.0/peach-macos-v0.7.0.tar.gz"
  sha256 "6d23c342fddbdc6bcdf673d8b30c4743d16349a6bf1fcbd80fc09e729be4d3be"
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
