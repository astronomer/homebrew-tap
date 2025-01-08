# typed: false
# frozen_string_literal: true
# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1321 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.32.1"
  depends_on "podman" => :recommended if OS.mac?
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.32.1/astro_1.32.1_darwin_arm64.tar.gz"
      sha256 "ea3eb8f6e077a93701cb0f655c138981cbd81e48cc5074905b25a0d74d7ebafc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.32.1/astro_1.32.1_darwin_amd64.tar.gz"
      sha256 "51f85df8c5e7a590e0391fa0388fdf5fb035f7fe14951faf5e6bff9f56693ed3"
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.32.1/astro_1.32.1_linux_arm64.tar.gz"
      sha256 "e09daa1f525f7e9af816361e2d85ee523551a1b34538093d38c384dc25524556"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.32.1/astro_1.32.1_linux_amd64.tar.gz"
      sha256 "eb29b769fb56daea9a6f736b5380389063451a94858748e8502951dcc11a0118"
    end
  end
  def install
    bin.install "astro"
  end
  test do
    system "#{bin}/astro version"
  end
end
