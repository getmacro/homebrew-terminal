class Macro < Formula
  desc "Macro Terminal"
  homepage "https://github.com/getmacro/terminal"
  version "0.5.1"
  license "MIT"

  depends_on "unixodbc" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.5.1/macro-aarch64-apple-darwin.tar.gz"
      sha256 "19820bde447e1a0240880a2b7de64584cb3d640accfe8bf70b2fb4641ea953ab"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.5.1/macro-x86_64-apple-darwin.tar.gz"
      sha256 "9a1dd3e1f6d3a2786b38ae595254890adadc24fec533e5bbfb7d35ff563ac5a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.5.1/macro-aarch64-linux-gnu.tar.gz"
      sha256 "e35525701b478f8b346e329ba56f820a00efb1afbbb2df110cf59278852f4b6d"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.5.1/macro-x86_64-linux-gnu.tar.gz"
      sha256 "aa546c847503a648fca4be5750fb86d9c670897d4c5405540ee81a35ee66d2a0"
    end
  end

  def install
    bin.install "macro"
  end

  test do
    assert_match "Macro Terminal #{version}", shell_output("#{bin}/macro --version")
  end
end
