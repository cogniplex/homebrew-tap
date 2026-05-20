class Codemem < Formula
  desc "Standalone Rust memory engine for AI coding assistants"
  homepage "https://github.com/cogniplex/codemem"
  version "0.18.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.18.0/codemem-macos-arm64.tar.gz"
      sha256 "8b4e12f659fa0c55ab959decd000fb975f22ca9cbc4facb155c16f91e28fe807"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cogniplex/codemem/releases/download/v0.18.0/codemem-linux-arm64.tar.gz"
      sha256 "ec7b3c6aa373e763fb9dd562360e52a180257b18658b5b258faa14b726db1cad"
    end
    on_intel do
      url "https://github.com/cogniplex/codemem/releases/download/v0.18.0/codemem-linux-amd64.tar.gz"
      sha256 "c83f2a3e6b662377efb9b459d07cbfec90d533edb55d00ec77f0c209ec983f03"
    end
  end

  def install
    bin.install "codemem"
  end

  test do
    assert_match "codemem", shell_output("#{bin}/codemem --version")
  end
end
