class PeachForensics < Formula
  desc "Local-first forensic log viewer for DFIR timelines"
  homepage "https://github.com/kalink0/peach-forensics"
  url "https://github.com/kalink0/peach-forensics/releases/download/v0.3.0/peach-macos-v0.3.0.tar.gz"
  sha256 "3ec21d008adcf8aee3e253513b697532d0c16ea4c6ebfd0384f2c8d3cbb7b833"
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
