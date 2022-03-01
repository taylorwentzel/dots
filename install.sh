#!/usr/bin/env bash

USERNAME='taylor'

WM_SOURCE='./i3'
WM_DEST='/home/'"$USERNAME"'/.config/i3'

for srcfile in ${WM_SOURCE}/*
do
    cp "$srcfile" "$WM_DEST"
    echo copying "$srcfile" to "$WM_DEST"
done

PB_SOURCE='./polybar'
PB_DEST='/home/'"$USERNAME"'/.config/polybar'

for srcfile in ${PB_SOURCE}/*
do
    cp "$srcfile" "$PB_DEST"
    echo copying "$srcfile" to "$PB_DEST"
done

WP_SOURCE='./wallpapers'
WP_DEST='/home/'"$USERNAME"'/Pictures/wallpapers/'
mkdir -p "$WP_DEST"

for srcfile in ${WP_SOURCE}/*
do
    cp "$srcfile" "$WP_DEST"
    echo copying "$srcfile" to "$WP_DEST"
done