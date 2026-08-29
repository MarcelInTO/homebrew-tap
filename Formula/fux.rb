class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.5.0/fux-0.5.0-osx-arm64.tar.gz"
      sha256 "7871898f6d351b1fa16a2ba3119f74e6db81a3b5bb1d11835e9adbb315f4079b"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.5.0/fux-0.5.0-osx-x64.tar.gz"
      sha256 "e95af770f62572a3318393259e141ae4e722f301203160dbe998682ca5085d46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.5.0/fux-0.5.0-linux-arm64.tar.gz"
      sha256 "a6e87a92ff7a386de3cb23a59af4edb21332ea910f6b535e00545102823d4f79"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.5.0/fux-0.5.0-linux-x64.tar.gz"
      sha256 "aa0d95cdb3bdb4a0e898b347f9fd8edca818d8f7a190792499ffde41a7e14a53"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
