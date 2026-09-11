# frozen_string_literal: true

# Homebrew formula for the TerraDrift CLI (GitHub Release archives).
class Terradrift < Formula
  desc "Plan-based Terraform and OpenTofu drift detection CLI"
  homepage "https://github.com/niravraychura/terradrift"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_darwin_arm64.tar.gz"
      sha256 "8b890032e6c95928ceb3b630b575dcbab76d7e15bf11ca9de38287ddf7d0e379"
    end
    on_intel do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_darwin_amd64.tar.gz"
      sha256 "7fbb50e81fc8260f4b2a6d20479a6a6fcce1d82bada649da603810c1ea241ac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_linux_arm64.tar.gz"
      sha256 "db50559c89492bb9f6153d930d88b366adc8b31ab3b0285b9fe9a73e00f2f135"
    end
    on_intel do
      url "https://github.com/niravraychura/terradrift/releases/download/v#{version}/terradrift_linux_amd64.tar.gz"
      sha256 "afaf0f880c05f8b2dbe226f72e8de7dcd2147685bb6aff7dbf191438e0c71f00"
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
