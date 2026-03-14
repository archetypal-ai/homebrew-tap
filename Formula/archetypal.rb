class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://github.com/archetypal-ai/archetypal-ai/releases/download/v2.6.0/archetypal-ai-cli-2.6.0.tgz"
  sha256 "ada026bcdff566b71d81690c593ea4e75a3f05b13866d34d7b98f0a5cad6193c"
  version "2.6.0"
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
