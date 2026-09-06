class PitlaneMcp < Formula
  desc "Token-efficient code intelligence MCP server"
  homepage "https://github.com/eresende/pitlane-mcp"
  version "0.13.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-aarch64.tar.gz"
      sha256 "b344b8f4772261a8f20c98bd2563ae5a8486dc70a2b2a00405cb8ca2afe13fb4"
    end
    on_intel do
      url "https://github.com/eresende/pitlane-mcp/releases/download/v#{version}/pitlane-mcp-macos-x86_64.tar.gz"
      sha256 "e2b7300f038509c7e96828c5b32661a89d6448975bb559a4dd324a421b8389a4"
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
