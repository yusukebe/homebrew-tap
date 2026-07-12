class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.9/ax-darwin-arm64"
      sha256 "e783f823c4f4e83aec14b2c0709fafdf4f6bb89e70cad1508343a1ff5ea71354"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.9/ax-darwin-x64"
      sha256 "673cc1339559b1608d04fffa84f1a1ab36e47531f29ea8eac91dcbb7b0973ccd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.9/ax-linux-arm64"
      sha256 "b94d58300e91ca38c523fe1337d7e0eb6511bdc16b23c8cb8b016c8b00bcf427"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.9/ax-linux-x64"
      sha256 "a0a92ad25368386e21552a14519a7bf959fb6eb47b57acb876f76b7ee2e0a1c7"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
