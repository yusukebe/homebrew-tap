class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.11/ax-darwin-arm64"
      sha256 "a93fe0bcd826da23ecc4ce2a1d3686cd36fcac60f408f529d76d4b40b699f21c"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.11/ax-darwin-x64"
      sha256 "1d5c0144673e2c9040e81bb09c2f645f13a167f4b3313169138b197212096ce0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.11/ax-linux-arm64"
      sha256 "c1db6e760aef8863ff821ec3f5f11fb62701a06fadda3b469512f42bb3e2ab1d"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.11/ax-linux-x64"
      sha256 "d83d534463b763ac87decca852518a57c0701445014b9678e0b2c71db6ad1f50"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
