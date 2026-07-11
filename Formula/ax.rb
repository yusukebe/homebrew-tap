class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.8/ax-darwin-arm64"
      sha256 "7c8dbd074abfd31f67b51c80d13a68d64cdff557b29d93b039a0c41b954cb5df"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.8/ax-darwin-x64"
      sha256 "0f36119fc000c1b99efd9318dec4f3f6ec981b1f0d4eb55846f1c51b008fe2e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.8/ax-linux-arm64"
      sha256 "a239dfb6186e810617f883d2b60f2cfcde7a1afcdfedae72d2396668a1461814"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.8/ax-linux-x64"
      sha256 "bd2c9dbcb0acdc6d303ee5b2acf1c9d3322aba78056620c0564be23e156c3efd"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
