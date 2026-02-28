class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.6.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.3/codemem-macos-arm64.tar.gz"
      sha256 "fbd3512116c3fdadc3776b09801471f7ccb740538f245fdb30d28c8068d549ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.3/codemem-linux-arm64.tar.gz"
      sha256 "ac224ac480d1e068d03a4ea8b7d8d3868671803e5145cc8fd0d6b3d2a7320cf1"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.6.3/codemem-linux-amd64.tar.gz"
      sha256 "114c4dab547500b41b04572a2e9eac7e089b23e060ddc6c036e80b0c56cedd61"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
