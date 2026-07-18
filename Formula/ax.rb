class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.18/ax-darwin-arm64"
      sha256 "360f7ef5cbcd51e9f97d61778e49504a553f2e99ab73ebd6f99cb8b278e38be1"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.18/ax-darwin-x64"
      sha256 "69123fb40b17e1f9f0b1d70cb010e422f56a7b05be1c18371b67193059e8b3f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.18/ax-linux-arm64"
      sha256 "1cfd462f481f34ea9437778ddc97ea0b293a6c7bd280906ee4f762ddd74a7721"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.18/ax-linux-x64"
      sha256 "8633bd9bdd83e2ae66fd91b5905dcb4885cca6f0a45bc5a7776861eabfe5038d"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
