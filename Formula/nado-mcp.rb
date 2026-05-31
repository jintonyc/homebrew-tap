class NadoMcp < Formula
  desc "Nado Language MCP server for AI-generated flashcards"
  homepage "https://language.nado.ai.kr/"
  url "https://registry.npmjs.org/@nado-language/mcp/-/mcp-0.1.2.tgz"
  sha256 "3fa5cccc799ee0b176f4770809c03cc250afd71df80ca0af8102281ac10d2d66"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", "--global", "--prefix", libexec, cached_download
    bin.install_symlink libexec/"bin/nado-mcp"
    bin.install_symlink libexec/"bin/nado-mcp-server"
    bin.install_symlink libexec/"bin/nado-mcp-auth"
  end

  test do
    assert_match "Nado Language MCP", shell_output("#{bin}/nado-mcp --help")
  end
end
