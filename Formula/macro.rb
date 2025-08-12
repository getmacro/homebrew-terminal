class Macro < Formula
  desc "Macro Terminal"
  homepage "https://github.com/getmacro/terminal"
  version "0.1.4"
  license "MIT"

  depends_on "unixodbc" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.1.4/macro-aarch64-apple-darwin.tar.gz"
      sha256 "03893531457729089faff706dd229f195e3a9c5fcf15fb47b4178cb7ad4a5995"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.1.4/macro-x86_64-apple-darwin.tar.gz"
      sha256 "fc81cd230cc98b90aa07cad9f6df9dd6a3572e2123ae771adb16f8ad32606e09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.1.4/macro-aarch64-linux-gnu.tar.gz"
      sha256 "c9e32ad1097e49711125d4234555082029e7fcad18c46f40680ad32a6a6b80e4"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.1.4/macro-x86_64-linux-gnu.tar.gz"
      sha256 "b3118452622a9fa3d0bceed83e0196a4324b8c93995860615a0bd7ae0ac9ece5"
    end
  end

  def install
    bin.install "macro"
  end

  test do
    assert_match "Macro Terminal #{version}", shell_output("#{bin}/macro --version")
  end
end
