# frozen_string_literal: true

# Homebrew formula for the TerraDrift CLI (GitHub Release archives).
class Terradrift < Formula
  desc "Plan-based Terraform and OpenTofu drift detection CLI"
  homepage "https://github.com/niravraychura/terradrift"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_darwin_arm64.tar.gz"
      sha256 "136d6d108d69700c460dd737e5454ddc9cc3eae6444cde0967d83e8b659f91af"
    end
    on_intel do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_darwin_amd64.tar.gz"
      sha256 "544b8b1052c1da80de53f496e8a5d2ffc5c691a8e0fb84db9329c5157230c341"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_linux_arm64.tar.gz"
      sha256 "3c53ffee2d877cddef74486299024b9acc9a9d0612b1031ad851f4c355f739e7"
    end
    on_intel do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_linux_amd64.tar.gz"
      sha256 "f66321fbce203b3a726b8022ee2955afee630a6592b83fbaf827ecb18458b3b6"
    end
  end

  def install
    bin.install "terradrift"
    generate_completions_from_executable(bin/"terradrift", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terradrift --version")
  end
end
