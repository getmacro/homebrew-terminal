class Macro < Formula
  desc "Macro Terminal"
  homepage "https://github.com/getmacro/terminal"
  version "0.4.0"
  license "MIT"

  depends_on "unixodbc" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.4.0/macro-aarch64-apple-darwin.tar.gz"
      sha256 "07c37d4ee12ed2d2020cadf19144feb2caf919064a5fa3382b327658af791a5e"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.4.0/macro-x86_64-apple-darwin.tar.gz"
      sha256 "9f22ad974094697719ff920622590c58fd25351e33eb324d5203b06c348a3918"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.4.0/macro-aarch64-linux-gnu.tar.gz"
      sha256 "d9283aa717f1dcade6a635814f3102bdd43f8ec53e7f3605de09204265768ea2"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.4.0/macro-x86_64-linux-gnu.tar.gz"
      sha256 "deeaa412ed5628415fed9ea316c1cf6aa47a987133c23d5d67bb3bb1b36c80c0"
    end
  end

  def install
    bin.install "macro"
  end

  test do
    assert_match "Macro Terminal #{version}", shell_output("#{bin}/macro --version")
  end
end
