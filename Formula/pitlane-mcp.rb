class PitlaneMcp < Formula
  desc "Token-efficient code intelligence MCP server"
  homepage "https://github.com/eresende/pitlane-mcp"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-aarch64.tar.gz"
      sha256 "37c7c9dc4b54fe44d8ee5d74492be9cac1533148a9628588953cf86f5d5e9378"
    end
    on_intel do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-x86_64.tar.gz"
      sha256 "1f43555f952dc2a66183d3f53fd7390eecd1cbf7bccd166bd5d6b4593f0dfb85"
    end
  end

  def install
    bin.install "pitlane-mcp"
    bin.install "pitlane"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pitlane-mcp --version 2>&1", 1)
  end
end
