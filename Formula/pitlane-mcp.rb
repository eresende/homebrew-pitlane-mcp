class PitlaneMcp < Formula
  desc "Token-efficient code intelligence MCP server"
  homepage "https://github.com/eresende/pitlane-mcp"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-aarch64.tar.gz"
      sha256 "f7e729893c7e0d2fb7327cedb48d630b73f3979571b5fb5494623c244ad52c3c"
    end
    on_intel do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-x86_64.tar.gz"
      sha256 "06fae3f37201010ff740e1786c3e1417cb00f7f62ade77f4aeb47781beb20656"
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
