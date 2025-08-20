class Macro < Formula
  desc "Macro Terminal"
  homepage "https://github.com/getmacro/terminal"
  version "0.3.0"
  license "MIT"

  depends_on "unixodbc" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.3.0/macro-aarch64-apple-darwin.tar.gz"
      sha256 "7baec0d5be087442ea9b072f81820047aaac937dab2d1bc057547611c9d1a3d5"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.3.0/macro-x86_64-apple-darwin.tar.gz"
      sha256 "4f5beb6044cabb463b5f950ed317643f195aab8bf3ae9b18c9d9afd220103f53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.3.0/macro-aarch64-linux-gnu.tar.gz"
      sha256 "9f347ee08e8060b33b1629702fa6bf2c371a25f8a376a0a82004d7d45245603b"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.3.0/macro-x86_64-linux-gnu.tar.gz"
      sha256 "e53165da9886c69d92cc69c6de8abd0b663749ea9e6589e6113a65575f74bc36"
    end
  end

  def install
    bin.install "macro"
  end

  test do
    assert_match "Macro Terminal #{version}", shell_output("#{bin}/macro --version")
  end
end
