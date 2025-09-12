class Macro < Formula
  desc "Macro Terminal"
  homepage "https://github.com/getmacro/terminal"
  version "0.6.0"
  license "MIT"

  depends_on "unixodbc" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.6.0/macro-aarch64-apple-darwin.tar.gz"
      sha256 "be5c2863f071f73a213477a0a45eda472d625629d1cc18ecb93e1014b04d05a1"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.6.0/macro-x86_64-apple-darwin.tar.gz"
      sha256 "e2e7a1d41f6ed1c0fd685b9d6af3a03b4b564a5b7b2413df3ad9613fc1961ac7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.6.0/macro-aarch64-linux-gnu.tar.gz"
      sha256 "8c41405347642626d367c6580173f6379993294addedf0471fc778bf6d4039a7"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.6.0/macro-x86_64-linux-gnu.tar.gz"
      sha256 "89c3eedfd89f0432bc15ad6b731212a46a11bb4bb42af686345aeabae836a148"
    end
  end

  def install
    bin.install "macro"
  end

  test do
    assert_match "Macro Terminal #{version}", shell_output("#{bin}/macro --version")
  end
end
