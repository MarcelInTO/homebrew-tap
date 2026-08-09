class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.3/fux-0.2.3-osx-arm64.tar.gz"
      sha256 "9b14230cd2fe0392ce0e6a3f04c1d4a6cda0a9c65787f6b1aeaba3fcb81fac2f"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.3/fux-0.2.3-osx-x64.tar.gz"
      sha256 "9ff17f0b4376dae9659abb05822cae15787a94d3c33d641b1e5ce1ed6eff49e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.3/fux-0.2.3-linux-arm64.tar.gz"
      sha256 "ded63ed603cc77ad30aca86a9582b01e47a7055c105b79bdb543e11c8f42d39b"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.3/fux-0.2.3-linux-x64.tar.gz"
      sha256 "306ef87efc50de048cec3112ca18f010a77ade4ecc7548f63a659a0cbc828e55"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
