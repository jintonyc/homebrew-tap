class NadoMcp < Formula
  desc "Nado Language MCP server for AI-generated flashcards"
  homepage "https://language.nado.ai.kr/"
  url "https://registry.npmjs.org/@nado-language/mcp/-/mcp-0.1.9.tgz"
  sha256 "5d0259ee72e701854004603b8c4eb988a348a9c9808c0537df40d369bc45406a"
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
