class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://github.com/archetypal-ai/archetypal-ai/releases/download/v2.7.0/archetypal-ai-cli-2.7.0.tgz"
  sha256 "4c395c20cd296b1b57866c8aff1a4b4d1167c5da60ecbc5faa4fcb53a412a2c1"
  version "2.7.0"
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
