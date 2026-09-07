class PitlaneMcp < Formula
  desc "Token-efficient code intelligence MCP server"
  homepage "https://github.com/eresende/pitlane-mcp"
  version "0.14.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-aarch64.tar.gz"
      sha256 "319b30c04979acc484afad22ca0f0fa2ddc25ed77027aee546867a2e0b4a83c3"
    end
    on_intel do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-x86_64.tar.gz"
      sha256 "835150156efa084c0ddb173cdd2af4177234a291de81b112f694f399f3280458"
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
