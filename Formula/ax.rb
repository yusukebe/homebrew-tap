class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.7/ax-darwin-arm64"
      sha256 "acdd049694aa99400ae78902f65b794d6c4439b2c7c169e8fbd3c13e293d2db7"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.7/ax-darwin-x64"
      sha256 "fa49fdcefa6706e70556418c69097f0a88fe16c56993c035b6749affcc2b19fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.7/ax-linux-arm64"
      sha256 "5b6f4b9c28b0d7a802724beb519ab2cfd0dbc53f27e3304e628534e23a26d766"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.7/ax-linux-x64"
      sha256 "095971474b8b76d1e21fefce2b4d9bb6d2df96617dcd0b11614975f9c4177649"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
