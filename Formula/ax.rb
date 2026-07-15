class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.13/ax-darwin-arm64"
      sha256 "c1e1edff633010174f78343048485e18b75ebe46d90f13ee8dc6903a450065f4"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.13/ax-darwin-x64"
      sha256 "6e32186619d896f191e74f746839fe70aaba97f869d6712a895a20e9949c18fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.13/ax-linux-arm64"
      sha256 "e907feeb374a0a4ea4cf7d8575cf8d2506af784cd64489c903f090cb7726f14b"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.13/ax-linux-x64"
      sha256 "1193da414b0c55a49f7e262d6a50fd3b53d6b9f5c2ba6234d41c2420618d4e67"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
