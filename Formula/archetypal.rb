class Archetypal < Formula
  desc "Archetypal AI — An agentic coding tool powered by a living AI civilization"
  homepage "https://github.com/archetypal-ai/archetypal-ai"
  url "https://github.com/archetypal-ai/archetypal-ai/releases/download/v1.3.2/archetypal-ai-cli-1.3.2.tgz"
  sha256 "8de1be42dff6081b859759464dbd9e89bef1af9a3653f583cbe743624c9744ec"
  version "1.3.2"
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
