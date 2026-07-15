class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.14/ax-darwin-arm64"
      sha256 "44b87c2057c9d9f0d6cce0bd5049b3d98c375fab68f264128d8086e634bbb745"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.14/ax-darwin-x64"
      sha256 "dff627d1682317dcf9ef3791a00c20eb6334ddd05783c062835bf8f78fdbb4da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.14/ax-linux-arm64"
      sha256 "750705f9be10c54e94004bb860c77595478a15d153af72407ae66af720508fae"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.14/ax-linux-x64"
      sha256 "a9ed5de9fbb8b1b8b0b5eecedfcd2d2ec27b0a9916fa84000c83d580dd6647cf"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
