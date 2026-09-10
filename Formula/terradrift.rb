# frozen_string_literal: true

# Homebrew formula for the TerraDrift CLI (GitHub Release archives).
class Terradrift < Formula
  desc "Plan-based Terraform and OpenTofu drift detection CLI"
  homepage "https://github.com/niravraychura/terradrift"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_darwin_arm64.tar.gz"
      sha256 "da5c9954ce8c8d7d2c5a659d5d28d11b079a2a1b557ed89785a1ea2dbe26cad1"
    end
    on_intel do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_darwin_amd64.tar.gz"
      sha256 "fb5eafd99d42f3a760cee0d2355e718dee39730d7fd05abd0b428a3b9493a6a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_linux_arm64.tar.gz"
      sha256 "200950d2ad937e3274ba13b4deac531136057ad7bdd1581d3ecc8f380ce1466d"
    end
    on_intel do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_linux_amd64.tar.gz"
      sha256 "c537124527c21e9a8f9ebef5887cf4be86483f10ef53aa32fb8f81cbc53b5d6f"
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
