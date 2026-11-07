class PeachForensics < Formula
  desc "Open source DFIR log workbench"
  homepage "https://github.com/kalink0/peach-forensics"
  url "https://github.com/kalink0/peach-forensics/releases/download/v0.11.0/peach-macos-v0.11.0.tar.gz"
  sha256 "bfe00b05d6f6367d77482fa7dbe36bb3ad006c6bcc012cecb9954718831db57b"
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
