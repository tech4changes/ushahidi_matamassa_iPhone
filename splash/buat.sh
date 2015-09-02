#!/bin/bash
  SAVEIF=$IFS
  IFS=$(echo -en "\n\b")
  for file in $(cat data.csv)
  do
   data=${file%%}
	#echo  "+$data"
		IFS=',' read -a array <<< "$data"
		
			mkdir -p "${array[0]}"
		
			#cp "splash.svg" "${array[0]}/splash.svg"
			#cp "title.svg" "${array[0]}/title.svg"
			#cp "logo.svg" "${array[0]}/logo.svg"
			
			
			cp "default@2x.svg" "${array[0]}/default@2x.svg" 
			cp "default-portrait.svg" "${array[0]}/default-portrait.svg" 
			cp "default.svg" "${array[0]}/default.svg" 
			cp "icon@2x.svg" "${array[0]}/icon@2x.svg"
			cp "icon-57.svg" "${array[0]}/icon-57.svg"
			cp "icon-72.svg" "${array[0]}/icon-72.svg"
			cp "icon-small@2x.svg" "${array[0]}/icon-small@2x.svg"
			cp "icon-small-50.svg" "${array[0]}/icon-small-50.svg"
			cp "icon-small.svg" "${array[0]}/icon-small.svg"
			cp "icon.svg" "${array[0]}/icon.svg"
			cp "Logo_iPad@2x.svg" "${array[0]}/Logo_iPad@2x.svg"
			cp "Logo_iPad.svg" "${array[0]}/Logo_iPad.svg"
			cp "Logo_iPhone@2x.svg" "${array[0]}/Logo_iPhone@2x.svg"
			cp "Logo_iPhone.svg" "${array[0]}/Logo_iPhone.svg"
			
			
			
			#replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/splash.svg"
			#replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/title.svg"
			#replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/logo.svg"
			
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/default@2x.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/default-portrait.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/default.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/icon@2x.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/icon-57.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/icon-72.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/icon-small@2x.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/icon-small-50.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/icon-small.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/icon.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/Logo_iPad@2x.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/Logo_iPad.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/Logo_iPhone@2x.svg"
			replace "xxNAMAxx" "${array[1]}" -- "${array[0]}/Logo_iPhone.svg"
			
			
			#"default@2x.svg"
			#"default-portrait.svg"
			#"default.svg"
			#"icon@2x.svg"
			#"icon-57.svg"
			#"icon-72.svg"
			#"icon-small@2x.svg"
			#"icon-small-50.svg"
			#"icon-small.svg"
			#"icon.svg"
			#"Logo_iPad@2x.svg"
			#"Logo_iPad.svg"
			#"Logo_iPhone@2x.svg"
			#"Logo_iPhone.svg"
						
			inkscape --export-png="${array[0]}/default@2x.png" "${array[0]}/default@2x.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/default-portrait.png" "${array[0]}/default-portrait.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/default.png" "${array[0]}/default.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/icon@2x.png" "${array[0]}/icon@2x.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/icon-57.png" "${array[0]}/icon-57.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/icon-72.png" "${array[0]}/icon-72.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/icon-small@2x.png" "${array[0]}/icon-small@2x.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/icon-small-50.png" "${array[0]}/icon-small-50.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/icon-small.png" "${array[0]}/icon-small.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/icon.png" "${array[0]}/icon.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/Logo_iPad@2x.png" "${array[0]}/Logo_iPad@2x.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/Logo_iPad.png" "${array[0]}/Logo_iPad.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/Logo_iPhone@2x.png" "${array[0]}/Logo_iPhone@2x.svg" --export-dpi=90
			inkscape --export-png="${array[0]}/Logo_iPhone.png" "${array[0]}/Logo_iPhone.svg" --export-dpi=90

			rm -rf ${array[0]}/*.svg

  done

