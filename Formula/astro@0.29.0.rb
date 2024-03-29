# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0290 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
    version "0.29.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v0.29.0/astro_0.29.0_darwin_arm64.tar.gz"
        sha256 "45a0cdc50af27aa22e43fb5d5c72302edf23576d1ecdf06b0d534db0d8ec6430"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v0.29.0/astro_0.29.0_darwin_amd64.tar.gz"
        sha256 "3fb649f62767f3e81b59d6b4e16c754eb27b51ff52050496cad665c15d85116d"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v0.29.0/astro_0.29.0_linux_arm64.tar.gz"
        sha256 "ec9f1be36258403c828b61bac30894020e105f27fdc7c676b2edbe34c72a2ca0"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v0.29.0/astro_0.29.0_linux_amd64.tar.gz"
        sha256 "bff9668764cf62eae6a49ab4daea5bd1e619ebba674f0fb00f765cd42d32fd8a"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
  