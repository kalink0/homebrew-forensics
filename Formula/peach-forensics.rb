class PeachForensics < Formula
  desc "Local-first forensic log viewer for DFIR timelines"
  homepage "https://github.com/kalink0/peach-forensics"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kalink0/peach-forensics/releases/download/v0.1.0/peach-macos-arm-v0.1.0.tar.gz"
      sha256 "998dee6919d4c7c69d6a5924fcf52b8e50aa7cd05fbb20fca78cc249af323073"
    end

    on_intel do
      url "https://github.com/kalink0/peach-forensics/releases/download/v0.1.0/peach-macos-intel-v0.1.0.tar.gz"
      sha256 "1c4bc76690ce0256d2caef92c2331260e8c6e138a9e2f6b2803528f27a0f0b89"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "peach"
  end

  test do
    system "#{bin}/peach", "--version"
  end
end
