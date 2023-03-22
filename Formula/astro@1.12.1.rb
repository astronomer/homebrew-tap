# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1121 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.12.1/astro_1.12.1_darwin_arm64.tar.gz"
        sha256 "05892e70a16640b8dc0a3bcc729e054199389fedcde648f9a2ff189d756d84f6"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.12.1/astro_1.12.1_darwin_amd64.tar.gz"
        sha256 "c857a2f42c2a08985716a9a556dd2dd162b1f34c99aec189703bc14b77326b15"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.12.1/astro_1.12.1_linux_arm64.tar.gz"
        sha256 "7b132938b396d89ed6e498d4e81c5b22bb8436d50e02011c54534356e6a047a9"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.12.1/astro_1.12.1_linux_amd64.tar.gz"
        sha256 "0f4c40bc0c09df772a66461c7b8e00343d1415155f1af22a00c91ce860ffc08b"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
