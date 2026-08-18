class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.3.0/fux-0.3.0-osx-arm64.tar.gz"
      sha256 "c2bc0ca99d643df6d19acadba620af189dc115b185025bed0b89fb0fe3d8e02b"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.3.0/fux-0.3.0-osx-x64.tar.gz"
      sha256 "240a1c321ad53aa2ae46fc461b501578d91a97928d898e0fc58cb6e9295f617a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.3.0/fux-0.3.0-linux-arm64.tar.gz"
      sha256 "dd02153b86973c1491712057d43bc6f04b0faaa0419d5dbca3887d39e0e7cf47"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.3.0/fux-0.3.0-linux-x64.tar.gz"
      sha256 "797700babf58732d4dc5d269dab5dd70347c3807b4c70059f5e7b187badbac87"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
