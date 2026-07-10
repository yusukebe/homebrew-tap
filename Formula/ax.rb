class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.6/ax-darwin-arm64"
      sha256 "8b87dbefe92ada5a756e6b6820be25fcbf29e59efdc7afad785feebaba27dc88"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.6/ax-darwin-x64"
      sha256 "6c1b5e64c948032a7f3c4dae0d430d035fdc69859337cd5312f161e85bb60244"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.6/ax-linux-arm64"
      sha256 "d6c814201f63f2eb5e43792b16ea4fa4c58ca8bf9500905fd47f4c80f7d53297"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.6/ax-linux-x64"
      sha256 "e9d1227f0992d736789ee10247b5eeb050b7d6cb3dc98feec63f41d68f266c04"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
