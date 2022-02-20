# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class LabelWatch < Formula
  desc "label-watch checks a specific label on worker node then create an label"
  homepage "https://github.com/kolikons/label-watch"
  version "0.0.2-rc2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kolikons/label-watch/releases/download/v0.0.2-rc2/label-watch_0.0.2-rc2_darwin_amd64.tar.gz"
      sha256 "52f98312c90fe9295295f5d4a1b46747d3dfb8c456fde86c8e65bf2decdff10a"

      def install
        bin.install "label-watch"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kolikons/label-watch/releases/download/v0.0.2-rc2/label-watch_0.0.2-rc2_darwin_arm64.tar.gz"
      sha256 "af7da11023b1bf024252706dcb0ed39836c04304b4a5ee807b622a99ab7f58c8"

      def install
        bin.install "label-watch"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kolikons/label-watch/releases/download/v0.0.2-rc2/label-watch_0.0.2-rc2_linux_amd64.tar.gz"
      sha256 "fce6c59dea749ec9e02b49baa6de3b6f3dd3964632cb696832e8c018c74d31cf"

      def install
        bin.install "label-watch"
      end
    end
  end

  test do
    system "#{bin}/label-watch --help"
  end
end
