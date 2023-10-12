# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1193 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.3/astro_1.19.3_darwin_arm64.tar.gz"
        sha256 "fb5b05482a6c509be7f2f73781beaf72214d266c6f96c025f4bc5dac830ff12a"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.3/astro_1.19.3_darwin_amd64.tar.gz"
        sha256 "e99b44f9353987663f6e1810c5007cd8e8cb430f9c48c16af167ada808f64e7d"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.3/astro_1.19.3_linux_arm64.tar.gz"
        sha256 "07d6e25080c9ac7923beb43311cd6df81b28b353f04b4a8d07795c7e45ab6259"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.19.3/astro_1.19.3_linux_amd64.tar.gz"
        sha256 "83246dc689f5fedd9aca7e6887235b7b50e98c0082c73d29d88d40e1c2c217b8"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
