class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.4/fux-0.2.4-osx-arm64.tar.gz"
      sha256 "8bb77c382e934be2fcfb5da018aee8bb1f27569e6b2643c3d9c2dfdd7fa11c88"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.4/fux-0.2.4-osx-x64.tar.gz"
      sha256 "f67898a8289aa65e5e031dc8b8f2b15ef02b6db73fb2fee8a527a491ebb39c6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.4/fux-0.2.4-linux-arm64.tar.gz"
      sha256 "9ff11d546de312320de03a43846271818cc372af27007d4f2ac37ccba32efefd"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.4/fux-0.2.4-linux-x64.tar.gz"
      sha256 "0bb97e4a248564728af081e3d801564689d3fb8ea199e3f21f0872f2d8ec8f14"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
