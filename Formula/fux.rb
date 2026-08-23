class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.4.0/fux-0.4.0-osx-arm64.tar.gz"
      sha256 "89270d837d28d6e1fed1939738f3e403fcfb193f9f12c7a478809d7a77415276"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.4.0/fux-0.4.0-osx-x64.tar.gz"
      sha256 "ca1fffd3b7aac16e699005c93c3e67744a79f647a91eb88a92f7f3ecd89bcd39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.4.0/fux-0.4.0-linux-arm64.tar.gz"
      sha256 "81a2f5da3af1edd859c1d6ecbee511c9538f944aa495465625e075aaa35695b8"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.4.0/fux-0.4.0-linux-x64.tar.gz"
      sha256 "69d9d1140567d5ecfea02280919fb247ab25f875eade7cdd57722729ec74634c"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
