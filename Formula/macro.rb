class Macro < Formula
  desc "Macro Terminal"
  homepage "https://github.com/getmacro/terminal"
  version "0.2.0"
  license "MIT"

  depends_on "unixodbc" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.2.0/macro-aarch64-apple-darwin.tar.gz"
      sha256 "3460459e1a75f731019d9e11e729447a038659eee4186868e8f4988d7df72aa1"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.2.0/macro-x86_64-apple-darwin.tar.gz"
      sha256 "8283bb50723b5e7cdb97127c11ff965e00e7738a4a6fe95ec0c03567835bd885"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/getmacro/terminal/releases/download/v0.2.0/macro-aarch64-linux-gnu.tar.gz"
      sha256 "5b3012e3a2a08478fcc4368d46a516117bba7cd16409bc35dd21366203bfea06"
    else
      url "https://github.com/getmacro/terminal/releases/download/v0.2.0/macro-x86_64-linux-gnu.tar.gz"
      sha256 "e554afe6d4d0c5e0e30a6e200e9bde5984c3ba4c09d9d4ce22371b1359ae8ea7"
    end
  end

  def install
    bin.install "macro"
  end

  test do
    assert_match "Macro Terminal #{version}", shell_output("#{bin}/macro --version")
  end
end
