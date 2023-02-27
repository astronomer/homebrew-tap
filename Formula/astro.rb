# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.11.0/astro_1.11.0_darwin_arm64.tar.gz"
      sha256 "04dd73924d50c2d23e1d965b75d1bfd6fbf587904fae00c2d56e8479110f35b6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.11.0/astro_1.11.0_darwin_amd64.tar.gz"
      sha256 "871827d6acc2c0df0cba7a89588758645f5965620167e4a2b02020db32008e15"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.11.0/astro_1.11.0_linux_arm64.tar.gz"
      sha256 "2a26ca6ca6d9a1bd3c65f7c167670247653621604d3f67b7552a423a1cbd3d4e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.11.0/astro_1.11.0_linux_amd64.tar.gz"
      sha256 "d3464dbb654f6dbb7f46fcbeb16e15913e555af642ed83ca2517bc275216cedb"
    end
  end

  def install
    bin.install "astro"
  end


  test do
    system "#{bin}/astro version"
  end
end
