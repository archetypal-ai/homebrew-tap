class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://github.com/archetypal-ai/archetypal-ai-internal/releases/download/v1.3.3/archetypal-ai-cli-1.3.3.tgz"
  sha256 "5b2e4b17f364d539b2c02fabace447cbad3cce6f534f5d7807049a3a0a51121a"
  version "1.3.3"
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
