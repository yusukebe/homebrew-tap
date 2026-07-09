class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.0/ax-darwin-arm64"
      sha256 "38f01bf1239ec4404156464d7acdac2b99b2f3f0be07da0c5bfde774a86ffe5b"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.0/ax-darwin-x64"
      sha256 "0244c57c3e8ee031fad670d01b8af490ec34aa7bcc73be6ee13de933ef887769"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.0/ax-linux-arm64"
      sha256 "77dcdca177c6ea79aedc747070e9abd01ab4a326ced191bcfd63cfae900e7188"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.0/ax-linux-x64"
      sha256 "aea2be1c768889849427a1fd317d8308b58c2de5a82de93b7803c0fdcf9a9c10"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
