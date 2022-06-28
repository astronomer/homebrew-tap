# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.2.0/astro_1.2.0_darwin_arm64.tar.gz"
      sha256 "438ac3f8ebe357f8b5cf9c287468c479873493d2df6b85635ec7b58e7a6e0200"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.2.0/astro_1.2.0_darwin_amd64.tar.gz"
      sha256 "223e67194e7b9ce3e384dc629540358292695dd97071210ac93b8ed9f204362d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.2.0/astro_1.2.0_linux_arm64.tar.gz"
      sha256 "111ec56a355ff005c8b2cf523d6beeb6af29e7372a507fc10a00e6da428c3e7e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.2.0/astro_1.2.0_linux_amd64.tar.gz"
      sha256 "ff262807f09bf92c03e332ee8bf0832eee636d63a1801e97c8833807aaf61888"  
    end
  end

  def install
    bin.install "astro"
  end


  test do
    system "#{bin}/astro version"
  end
end
