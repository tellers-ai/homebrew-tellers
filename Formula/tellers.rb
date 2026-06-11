class Tellers < Formula
  desc "Tellers CLI - interact with tellers.ai from the terminal"
  homepage "https://tellers.ai"
  version "0.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.4/tellers-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "416fab8a51c116dc79d630a921496f51a1fa242bcb1189073c42b0721e7b9e0f"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.4/tellers-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "6b64ff1666e0829cf0416953da11b0fa91d96b5aff32a14f27b9d4d0b1a49aee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.4/tellers-v0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9f6f61eab856c82ba25225e206acc18f6f93b1494ab0355289596b709f49b5b"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.4/tellers-v0.0.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c190f6c88d063849714572ff1f6b0586b7e04acc314fc8a3280b8e3d5417f1a3"
    end
  end

  def install
    bin.install "tellers"
  end

  test do
    system "#{bin}/tellers", "--help"
  end
end
