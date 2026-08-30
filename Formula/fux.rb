class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.6.0/fux-0.6.0-osx-arm64.tar.gz"
      sha256 "d91e9ba54122fdf036e091bbde81f50aa53be763fddfbbd089f0625190292aab"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.6.0/fux-0.6.0-osx-x64.tar.gz"
      sha256 "6eb2500a227b0003051b0812b754f3b4ff25376ce70b60d291e91348615475ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.6.0/fux-0.6.0-linux-arm64.tar.gz"
      sha256 "15acc60734808dd9527b490a92acb00ffa4baea3ace935cf57b79de8a4e30e1c"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.6.0/fux-0.6.0-linux-x64.tar.gz"
      sha256 "e39a3dabdfedf8807746c311d71377ac3cfdca6e4eca5555f850f5966978d1e9"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
