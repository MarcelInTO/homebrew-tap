class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.2/fux-0.2.2-osx-arm64.tar.gz"
      sha256 "1aaf86efcbaf2d7051f520561c59194e9354f435e9d906579eb76da23889717e"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.2/fux-0.2.2-osx-x64.tar.gz"
      sha256 "a5f5c2042202c0686fb39ed1f448753aa7f17d478beaec71faeb5ac57e923ef0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.2/fux-0.2.2-linux-arm64.tar.gz"
      sha256 "dc99df53f717b5479e7cd7b5f7f1555c90e468d427a188f8ab725bcffd7d457a"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.2/fux-0.2.2-linux-x64.tar.gz"
      sha256 "d7e666993b1af7361dbd8ab909677219f2c46fc9d3315b8ff8013318cc9b9423"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
