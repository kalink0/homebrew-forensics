class PeachForensics < Formula
  desc "Local-first forensic log viewer for DFIR timelines"
  homepage "https://github.com/kalink0/peach-forensics"
  license "Apache-2.0"

  url "https://github.com/kalink0/peach-forensics/releases/download/v0.2.1/peach-macos-v0.2.1.tar.gz"
  sha256 "2d2be2829f5f4c247a00bfdeca5ec05affbef597492c1dee9cb75107121cf6d4"

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
