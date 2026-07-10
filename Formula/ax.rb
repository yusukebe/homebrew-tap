class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.4/ax-darwin-arm64"
      sha256 "f147a84d003c4b3d332ecda0c05561a29273015a7b82f2731c85ef74cce7f552"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.4/ax-darwin-x64"
      sha256 "880261f2e954e420bc8e6dd085e94f60ad58c61b9f617b1c9e11f4f3ad6be8fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.4/ax-linux-arm64"
      sha256 "c8b174040078b25dc4476f41815aad3de1190ad40a858288c5564a0c196cb75b"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.4/ax-linux-x64"
      sha256 "9a68370ee8de8598369f51402985da92c468052ab8936fb95d3480c7a1389b6b"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
