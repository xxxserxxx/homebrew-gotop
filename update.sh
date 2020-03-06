#!/bin/bash
# Updates the version and checksums of a gotop release

V=${1#v}

for O in linux darwin; do
	U=https://github.com/xxxserxxx/gotop/releases/download/v${V}/gotop_${V}_${O}_amd64.tgz
	S=$(curl -sL $U | sha256sum | cut -d ' ' -f 1)
	# I apologize for this.
    sed -i "s,\(^ *url \"\)https:.*${O}_amd64.tgz,\1${U},; s/version .*/version \"$V\"/; /${O}_amd64/{n;s/\".*\"/\"$S\"/}" gotop.rb
done
