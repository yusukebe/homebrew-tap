class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.2/ax-darwin-arm64"
      sha256 "9467e11c809c7f63c54dcbfc7a2fe55dfeb84ca4dce3987bd63ddbf0cc698fda"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.2/ax-darwin-x64"
      sha256 "83d5cf10f62b68f1b4f0c8166047aef72b8639bf463e3fadd3c1f982df1e6533"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.2/ax-linux-arm64"
      sha256 "99c272e2cf6c7f534bb6d71d0ad6d2804d41c575866668cdbfb3868593bb6450"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.2/ax-linux-x64"
      sha256 "b46439dca0f5b2d206cf401203f7d6f77f9bcd05bf4a1780356fbb2c5d72a5e4"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
