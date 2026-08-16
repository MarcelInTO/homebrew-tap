class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.5/fux-0.2.5-osx-arm64.tar.gz"
      sha256 "1579ac77262f13a65067d84fb0a84633c74813cf98b115468a2be5243c891125"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.5/fux-0.2.5-osx-x64.tar.gz"
      sha256 "d5c39044ba94f76d145f98d401f50ba48f6ddfef327d48749c5ef022eced613f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.5/fux-0.2.5-linux-arm64.tar.gz"
      sha256 "82115a9c92e66d6100ed81735c405ce7945da0ec3a0b99277dc6d21bd5d9e1fa"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.5/fux-0.2.5-linux-x64.tar.gz"
      sha256 "3802c3dfc40b111288f839d394491d20ab507ec5caef7447a4abfce720a57533"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
