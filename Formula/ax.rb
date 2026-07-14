class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.12/ax-darwin-arm64"
      sha256 "59c0ab1ca06bc33f239d653fe9be0bb77dda2a22c05bf4a1eed2e5a55e1794b1"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.12/ax-darwin-x64"
      sha256 "06ba9156d6eb95424108986f0f90e92b36a86ccc844a5ae112be65a0c7af5b66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.12/ax-linux-arm64"
      sha256 "188550bee5d53ac74bb515cdc671e15ed6ce7d9766d107e1fc8147b15b6e855e"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.12/ax-linux-x64"
      sha256 "ec7ad957dd9ee1cdcbcc47141b9624b0b988b85689939d64854e03635c2a672a"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
