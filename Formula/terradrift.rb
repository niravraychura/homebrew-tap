# frozen_string_literal: true

# Homebrew formula for the TerraDrift CLI (GitHub Release archives).
class Terradrift < Formula
  desc "Plan-based Terraform and OpenTofu drift detection CLI"
  homepage "https://github.com/niravraychura/terradrift"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_darwin_arm64.tar.gz"
      sha256 "b1ba786a77e9452bb680f566e179e70e63242a10558c99f948ca8f19712b13af"
    end
    on_intel do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_darwin_amd64.tar.gz"
      sha256 "b4279ec031b422f3bd144a17ab7d7472854fabb5cf477c1781202abcc90c8d41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_linux_arm64.tar.gz"
      sha256 "0e0827b804e888ae44093544ecabe42ebb7fbc07af9cc8f212785ac1b49dd1c2"
    end
    on_intel do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_linux_amd64.tar.gz"
      sha256 "5cf5057d98f6312f79d331529d335455cba57aaba350656d6cd99fa78fe8af36"
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
