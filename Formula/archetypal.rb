class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://github.com/archetypal-ai/archetypal-ai/releases/download/v1.5.0/archetypal-ai-cli-1.5.0.tgz"
  sha256 "d5ed20ddbc738975dcdfbb58d61e430e7f1acd6a9d7915647b3b30aa2f4fa7f5"
  version "1.5.0"
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
