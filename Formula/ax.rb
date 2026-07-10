class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.5/ax-darwin-arm64"
      sha256 "a9a9a895f14dda744384028403c32c5ac437bc4b2e124690a9e35e94ac29e7ee"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.5/ax-darwin-x64"
      sha256 "d1472c43d49705332fad264081c0176847f4634cb55e87de0083b1469d2a22f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.5/ax-linux-arm64"
      sha256 "a287d0911f38fb944090bca653893b614232fe2a4c2a55e2970142c070921c56"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.5/ax-linux-x64"
      sha256 "4f8fc6445f64836c6b594290f7a5d900ee57fe7f1f99b238172b9b83aa323317"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
