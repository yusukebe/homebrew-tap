class Ax < Formula
  desc "The AI-era curl: fetch, discover, extract. One command."
  homepage "https://ax.yusuke.run"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.17/ax-darwin-arm64"
      sha256 "a48d5ed052a71fe48266b40a621bde6ce3594d9a638915fabf7e9ca9e59ac04c"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.17/ax-darwin-x64"
      sha256 "8a709fdb360b2219f8f656275110ac74df743c7f2e9090c84db121a6b2789c59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yusukebe/ax/releases/download/v0.1.17/ax-linux-arm64"
      sha256 "be52d4aa073a102c79a8d42ffeda0fd246ec03049839ab4ef6f1ff7da0f33896"
    else
      url "https://github.com/yusukebe/ax/releases/download/v0.1.17/ax-linux-x64"
      sha256 "a81c43663cf2d173fe5fbfc39124eda6a9921b9625f811682d99b78f43c231e9"
    end
  end

  def install
    bin.install Dir["ax-*"].first => "ax"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ax --version")
  end
end
