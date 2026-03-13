class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://registry.npmjs.org/@archetypal-ai/cli/-/cli-0.1.0.tgz"
  sha256 ""
  license :cannot_represent
  head "https://github.com/archetypal-ai/archetypal-ai-internal.git", branch: "main"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/archetypal"
  end

  def post_install
    ohai "Archetypal AI installed!"
    ohai "Run 'archetypal auth login' to authenticate"
    ohai "Run 'archetypal' to start a session"
  end

  test do
    assert_match "archetypal v", shell_output("#{bin}/archetypal --version")
  end
end
