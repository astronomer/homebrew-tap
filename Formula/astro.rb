# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.15.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.15.1/astro_1.15.1_darwin_arm64.tar.gz"
      sha256 "bdece2d1d5d30b3c47c0e1c5708ebf9d0be8b2626ab3595d631b98faf906d34d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.15.1/astro_1.15.1_darwin_amd64.tar.gz"
      sha256 "c1465e06c25589321000cbb47f526c5db53d5d4aea30d1eba6d996459dcc2833"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.15.1/astro_1.15.1_linux_arm64.tar.gz"
      sha256 "f0f09ef14b9a8306b0279745105d6287cea7d93141ef5b5313505ecae63bb32a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.15.1/astro_1.15.1_linux_amd64.tar.gz"
      sha256 "349a9119188b7e042f65c086bc23d3a4ebafd1ea5b99d719ae31c084dd048311"
    end
  end

  def install
    bin.install "astro"
  end


  test do
    system "#{bin}/astro version"
  end
end
