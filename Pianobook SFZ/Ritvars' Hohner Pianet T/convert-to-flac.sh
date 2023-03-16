#!/bin/bash

if [[ "$1" = "-16" ]]; then
    if ! which sox >&/dev/null; then
        echo "Program 'sox' not found. Please install package 'sox'. Aborting..."
        exit 1
    fi

    BIT_DEPTH_16=1
    shift
fi

if ! which flac >&/dev/null; then
    echo "Program 'flac' not found. Please install package 'flac'. Aborting..."
    exit 1
fi

SRCDIR="${1:-Samples}"
echo -n "Convert WAV samples in '$SRCDIR' to FLAC and write them to dir 'flac/'? (y/N): "
read res

if [[ -d "$SRCDIR" && "$res" = "y" ]]; then
    mkdir -p flac

    for wav in "$SRCDIR"/*.wav; do
        echo "Converting ${wav##*/} to FLAC..."
        if [[ "$BIT_DEPTH_16" -eq 1 ]]; then
            echo "Converting WAV $wav to bit-depth=16..."
            sox "$wav" -b 16 flac/"${wav##*/}"
        else
            cp -f "$wav" flac/"${wav##*/}"
        fi

        flac --force --silent --best flac/"${wav##*/}" && \
            rm -f flac/"${wav##*/}"
    done

    echo "FLAC samples written to directory 'flac/'."
fi
