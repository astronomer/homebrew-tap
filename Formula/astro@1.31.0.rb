# typed: false
# frozen_string_literal: true
# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.31.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.31.0/astro_1.31.0_darwin_arm64.tar.gz"
      sha256 "4ebf4120489f31a3242ef13c6484233ecb4e5254621bf8b1a367d4ae9dd07f5d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.31.0/astro_1.31.0_darwin_amd64.tar.gz"
      sha256 "4f7f8b82b022826f76d185ebb5009c7431c8f1332c8630a27dc95a5a6c51a5dc"
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.31.0/astro_1.31.0_linux_arm64.tar.gz"
      sha256 "46fd434c5555f6efd789897fc34275ca89b50770f135cdaae055518828a86fc6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.31.0/astro_1.31.0_linux_amd64.tar.gz"
      sha256 "332d0cf89b6884e9d6d29858ae34c79af69c8848a47d33ed32650fa7e72439a6"
    end
  end
  def install
    bin.install "astro"
  end
  test do
    system "\#{bin}/astro version"
  end
end
