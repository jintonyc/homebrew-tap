class NadoMcp < Formula
  desc "Nado Language MCP server for AI-generated flashcards"
  homepage "https://language.nado.ai.kr/"
  url "https://registry.npmjs.org/@nado-language/mcp/-/mcp-0.1.13.tgz"
  sha256 "1a538f0576f019716117a77d44b3f70e325676862070ebd91e7c1c32079165bb"
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
