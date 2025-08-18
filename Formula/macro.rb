class Macro < Formula
  desc "Macro Terminal"
  homepage "https://github.com/getmacro/terminal"
  version "0.1.6"
  license "MIT"

  depends_on "unixodbc" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.1.6/macro-aarch64-apple-darwin.tar.gz"
      sha256 "ecfde3353ce290106dbaa68e246008c76c6f0d512069ed6313ab0d34d7dbcfc6"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.1.6/macro-x86_64-apple-darwin.tar.gz"
      sha256 "d2b68366d20a6dcdd243c4067df3f2aac914c57ee4320a7650665473b4e7dc88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.1.6/macro-aarch64-linux-gnu.tar.gz"
      sha256 "0150933dd3a5c9e267e24eac815628e47e016d154c0face566c49c076cdd0ed6"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.1.6/macro-x86_64-linux-gnu.tar.gz"
      sha256 "694c63912b652c42bb0ac31899bbc4e1cb8d1de7eb45f1d478be7b79fa48c2d4"
    end
  end

  def install
    bin.install "macro"
  end

  test do
    assert_match "Macro Terminal #{version}", shell_output("#{bin}/macro --version")
  end
end
