class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://github.com/bsharvey/Chairman-Infrastructure/releases/download/v2.10.0/archetypal-ai-cli-2.10.0.tgz"
  sha256 "191aeb1003c66c47d1bca67741a7d404decd735d5be2004efa45451edd95e8da"
  version "2.10.0"
  license :cannot_represent

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "archetypal v", shell_output("#{bin}/archetypal --version")
  end
end
