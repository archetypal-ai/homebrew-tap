class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://github.com/archetypal-ai/archetypal-ai/releases/download/v1.6.0/archetypal-ai-cli-1.6.0.tgz"
  sha256 "eb8a38a45ce54e987d0ded8cc3d9118722d4c88b1c7fcbe709dc1a2827555c4a"
  version "1.6.0"
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
