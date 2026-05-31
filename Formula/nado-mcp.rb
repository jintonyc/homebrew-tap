class NadoMcp < Formula
  desc "Nado Language MCP server for AI-generated flashcards"
  homepage "https://language.nado.ai.kr/"
  url "https://registry.npmjs.org/@nado-language/mcp/-/mcp-0.1.7.tgz"
  sha256 "68cb5b3ad634ba945f4f925f1f22ba581afad6e2b0c7c7a4d650eee7525161b4"
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
