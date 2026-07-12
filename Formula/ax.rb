class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.10/ax-darwin-arm64"
      sha256 "1420ab9e28243620ad087b2ece9b24c996b17c918651d96d38cbb603e58abce9"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.10/ax-darwin-x64"
      sha256 "85e366a6953fd6f2def9c7adab736cc8a9aa8b34b7184e136b04d16f25f5aaff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.10/ax-linux-arm64"
      sha256 "8cf932cc16303772dfe29ddb1c3ca9f0ba443b0f40315d78c55b8a79fb3c045d"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.10/ax-linux-x64"
      sha256 "74959a669c81e7c4a65efe9244cc7233c7752d23529ccef00479056e3334e0d0"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
