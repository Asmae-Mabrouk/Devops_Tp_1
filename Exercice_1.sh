#!/bin/bash

# Check if a root directory is specified as an argument
root_dir="${1:-.}"

# Create the directory and file structure
directories=(
    "$root_dir/personnages/mascottes"  
    "$root_dir/personnages/super heros/femmes/cape" 
    "$root_dir/personnages/super heros/femmes/sans cape"  
    "$root_dir/personnages/super heros/hommes/cape" 
    "$root_dir/personnages/super heros/hommes/sans cap"  
    "$root_dir/personnages/super heros/femmes/cape/batgirl"  
    "$root_dir/personnages/super heros/femmes/cape/wonderwoman"  
    "$root_dir/personnages/super heros/femmes/sans cape/electra" 
    "$root_dir/personnages/super heros/femmes/sans cape/superwoman" 
)

files=(
    "$root_dir/personnages/mascottes/beastie" 
    "$root_dir/personnages/mascottes/bibendum"  
    "$root_dir/personnages/mascottes/mario"  
    "$root_dir/personnages/mascottes/sonic"
    "$root_dir/personnages/super heros/hommes/cape/batman" 
    "$root_dir/personnages/super heros/hommes/cape/superman"  
    "$root_dir/personnages/super heros/hommes/cape/thor"  
    "$root_dir/personnages/super heros/hommes/sans cap/antman"  
    "$root_dir/personnages/super heros/hommes/sans cap/daredevil"  
    "$root_dir/personnages/super heros/hommes/sans cap/linuxman"  
    "$root_dir/personnages/super heros/hommes/sans cap/spiderman"  
)

# Create directories
for dir in "${directories[@]}"; do
    mkdir -p "$dir"
done

# Create files
for file in "${files[@]}"; do
    touch "$file"
done

# Set permissions for directories
chmod 755 "$root_dir/personnages"
chmod 775 "$root_dir/personnages/mascottes"
chmod 755 "$root_dir/personnages/super heros"
chmod 755 "$root_dir/personnages/super heros/femmes"
chmod 775 "$root_dir/personnages/super heros/femmes/cape"
chmod 775 "$root_dir/personnages/super heros/femmes/cape/batgirl"
chmod 775 "$root_dir/personnages/super heros/femmes/cape/wonderwoman"
chmod 775 "$root_dir/personnages/super heros/femmes/sans cape"
chmod 775 "$root_dir/personnages/super heros/femmes/sans cape/electra"
chmod 775 "$root_dir/personnages/super heros/femmes/sans cape/superwoman"
chmod 755 "$root_dir/personnages/super heros/hommes"
chmod 775 "$root_dir/personnages/super heros/hommes/cape"
chmod 775 "$root_dir/personnages/super heros/hommes/sans cap"

# Set permissions for files
chmod 644 "$root_dir/personnages/mascottes/beastie"
chmod 644 "$root_dir/personnages/mascottes/bibendum"
chmod 644 "$root_dir/personnages/mascottes/mario"
chmod 644 "$root_dir/personnages/mascottes/sonic"
chmod 644 "$root_dir/personnages/super heros/hommes/cape/batman"
chmod 644 "$root_dir/personnages/super heros/hommes/cape/superman"
chmod 644 "$root_dir/personnages/super heros/hommes/cape/thor"
chmod 644 "$root_dir/personnages/super heros/hommes/sans cap/antman"
chmod 644 "$root_dir/personnages/super heros/hommes/sans cap/daredevil"
chmod 644 "$root_dir/personnages/super heros/hommes/sans cap/linuxman"
chmod 644 "$root_dir/personnages/super heros/hommes/sans cap/spiderman"

# Move linuxman to mascots directory and rename to tux
mv "$root_dir/personnages/super heros/hommes/sans cap/linuxman" "$root_dir/personnages/mascottes/tux"

# Display permissions using ls
ls -lR --color=auto "$root_dir/personnages"
