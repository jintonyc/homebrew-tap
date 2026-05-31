class NadoMcp < Formula
  desc "Nado Language MCP server for AI-generated flashcards"
  homepage "https://language.nado.ai.kr/"
  url "https://registry.npmjs.org/@nado-language/mcp/-/mcp-0.1.0.tgz"
  sha256 "5ee74e46472cb6586c574e591c2ea62df196440b765e09774d049e9d219fe655"
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
