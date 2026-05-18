class PitlaneMcp < Formula
  desc "Token-efficient code intelligence MCP server"
  homepage "https://github.com/eresende/pitlane-mcp"
  version "0.10.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-aarch64.tar.gz"
      sha256 "92dea36cee07cb7e251daa21f88ea5cbca1dfe6f8bffb48a15046c01821d2f1f"
    end
    on_intel do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-x86_64.tar.gz"
      sha256 "eca55322e9b6e2f89f19b82a05ad8cac92b4a8b6bd3e721013a65994f4464b79"
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
