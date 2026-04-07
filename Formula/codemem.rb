class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.16.0/codemem-macos-arm64.tar.gz"
      sha256 "e8ff3a7416cbd8ec308539c8b65b6de80bbd5f5a5c3679d0b62a55fa0158d888"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.16.0/codemem-linux-arm64.tar.gz"
      sha256 "991f521809ca52f4286af39d426881b7156019ada3c6750c13bf4d4f297ed410"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.16.0/codemem-linux-amd64.tar.gz"
      sha256 "bbe3383c8741305b4a15605947ff473ab29304a78feeda758416b902787d59e7"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
