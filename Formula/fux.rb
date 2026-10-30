class Fux < Formula
  desc "Cross-platform terminal XML editor"
  homepage "https://github.com/MarcelInTO/fux"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.7.0/fux-0.7.0-osx-arm64.tar.gz"
      sha256 "13aeca922ab6b49fbe49cf65a26beaf1efc4f01bf55553454946fe81b3e29a36"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.7.0/fux-0.7.0-osx-x64.tar.gz"
      sha256 "b176bd88011f96fda2a98caa5af0b2a8ef9205000f55ffcd0df189234f40add7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.7.0/fux-0.7.0-linux-arm64.tar.gz"
      sha256 "8415ecc3c87e9886a58d7dac70a37d08502cf6f994946eac43b33d48d45ff34b"
    end
    on_intel do
      url "https://github.com/MarcelInTO/fux/releases/download/v0.7.0/fux-0.7.0-linux-x64.tar.gz"
      sha256 "ed3ed235a70027b20d76f93d252ed5ecac6bc9192f2713bf3d23d3a56751c868"
    end
  end

  def install
    bin.install "fux"
  end

  test do
    assert_match "fux #{version}", shell_output("#{bin}/fux --version")
  end
end
