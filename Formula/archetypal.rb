class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://github.com/archetypal-ai/archetypal-ai/releases/download/v1.3.4/archetypal-ai-cli-1.3.4.tgz"
  sha256 "94f7e20f285eed967e0e6bfb345f4d0bab941621aad92d5bea089c9c6e637986"
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
