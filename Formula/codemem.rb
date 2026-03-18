class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.14.0/codemem-macos-arm64.tar.gz"
      sha256 "97dcd76dd20b6300653c1c666e5ffbdda77e1d5695e1ec06f49d62416337068d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.14.0/codemem-linux-arm64.tar.gz"
      sha256 "fe876b884bd21314866c0a3ffaaa692c5561ad4ecbea888613a5e29f60b96bd7"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.14.0/codemem-linux-amd64.tar.gz"
      sha256 "ebf941db706773d2a45f443103aad7a2dfd98f5e36673978e9a27a4b9d3ef919"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
