class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://github.com/archetypal-ai/archetypal-ai/releases/download/v1.3.4/archetypal-ai-cli-1.3.4.tgz"
  sha256 "99d82cb2b9fc07ea8302da4a6ba6b3c711f633a6b982c3a8089009e6fe5670c8"
  version "1.3.4"
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
