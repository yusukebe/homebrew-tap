class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.21/ax-darwin-arm64"
      sha256 "7232d7f4c1bc96b8bc9c2169ee82f6269531c4c6c941e351217799a034e18fa7"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.21/ax-darwin-x64"
      sha256 "51235e4f65d7848cecdbcf66036bb67fa27481e106df825090c317b2d0e8999e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.21/ax-linux-arm64"
      sha256 "0938e38b9f9ac986cc899ae79531f4607b2c33214df6a80d6a7adceadf8f7218"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.21/ax-linux-x64"
      sha256 "7c2c79d58ca59f23f0535df5d0442b97026d654b3a1beb6bec855112de7bf625"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
