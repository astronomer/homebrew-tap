# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1120 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.12.0/astro_1.12.0_darwin_arm64.tar.gz"
        sha256 "3b6f5d2b4fa8f6a16d53c9fd2bf8fdfd0c16176f1c50e362493fe8d07ec35620"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.12.0/astro_1.12.0_darwin_amd64.tar.gz"
        sha256 "7dbf68249cde05a2375086906fddfd891f4e7cefc243cda7ac8ca19a9146adec"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.12.0/astro_1.12.0_linux_arm64.tar.gz"
        sha256 "dd4b53f7fad53d3d4b87ba620f509f02440eb217cb443e2ba857fbb78f7d20e1"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.12.0/astro_1.12.0_linux_amd64.tar.gz"
        sha256 "f6d015321c4208ee72c5005b0e5a2eb22cf79cc4275620488789998178a00122"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
