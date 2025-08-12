class Macro < Formula
  desc "Macro Terminal"
  homepage "https://github.com/getmacro/slargma"
  version "0.1.5"
  license "MIT"

  depends_on "unixodbc" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/slargma/releases/download/v0.1.5/macro-aarch64-apple-darwin.tar.gz"
      sha256 "a62100a29722f9170580c7adf7404b961c4f7e59a5c5940b91e95fb0e0504b99"
    else
      url "https://github.com/getmacro/slargma/releases/download/v0.1.5/macro-x86_64-apple-darwin.tar.gz"
      sha256 "e06053eb3b81fc08fe34b8fa598f87eb9cf03da9f43956711812650c08e9fd53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/slargma/releases/download/v0.1.5/macro-aarch64-linux-gnu.tar.gz"
      sha256 "f7e89648cb71ccbc279d1230a8ac1feaddc1b5ac39d3cb33ab8135abdbcc3014"
    else
      url "https://github.com/getmacro/slargma/releases/download/v0.1.5/macro-x86_64-linux-gnu.tar.gz"
      sha256 "b8a88418e0b3a0d2e8a5be3b8ad75fe26ed2ef100978ff96938be95a91bca981"
    end
  end

  def install
    bin.install "macro"
  end

  test do
    assert_match "Macro Terminal #{version}", shell_output("#{bin}/macro --version")
  end
end