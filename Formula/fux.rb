class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.1/fux-0.2.1-osx-arm64.tar.gz"
      sha256 "9e311bb107f6c9a758e15a91d75ccdee7ff71e1b0306acc7eabe779f1e07dc02"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.1/fux-0.2.1-osx-x64.tar.gz"
      sha256 "06596c210d2e1f6117fdb7d44a51bd8eeb7679d3e384da29eb71248bf5b81e4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.1/fux-0.2.1-linux-arm64.tar.gz"
      sha256 "2daf3fad105663de3ba609ed724f71905816738b604f1a2626fe6c3e7740326b"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.2.1/fux-0.2.1-linux-x64.tar.gz"
      sha256 "108f6152c6cbe602aac732ba1863a6a4a70f3e1f5b2ff7b1d1526a02eb89b9e6"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
