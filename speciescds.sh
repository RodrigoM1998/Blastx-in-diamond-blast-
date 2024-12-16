#!/bin/bash

input_dir="/backup/NCBIfasta/arrumados/"
output_dir="/backup/NCBIfasta/arrumados/blastados/"
database="/backup/NCBIfasta/banco/proteinplantdb.dmnd"
nome="_blastado.xml"

species_files="Ahypochondriacus_cdsPRONTO.fasta
AvenainsularisCDSPRONTO.fasta
AvenalongiglumisCDSPRONTO.fasta
AvenasativaCDSPRONTO.fasta
Barbuscula_cdsPRONTO.fasta
Bdistachyon_cdsPRONTO.fasta
carabica_cdsPRONTO.fasta
Claxum_cdsPRONTO.fasta
cquinoa_cdsPRONTO.fasta
Dcarota_cdsPRONTO.fasta
Eanacua_cdsPRONTO.fasta
Ecoracana_cdsPRONTO.fasta
Fxananassa_cdsPRONTO.fasta
Ghirsutum_cdsPRONTO.fasta
glycinemax_CDSPRONTO.fasta
Hannuus_cdsPRONTO.fasta
Hvulgare_cdsPRONTO.fasta
Lculinaris_cdsPRONTO.fasta
Lsativa_cdsPRONTO.fasta
Mdomestica_cdsPRONTO.fasta
Msinensis_cdsPRONTO.fasta
Oeuropaea_cdsPRONTO.fasta
oryzabarthiiCDSPRONTO.fasta
oryzabrachyanthaCDSPRONTO.fasta
oryzacdsPRONTO.fasta
oryzaglaberrimaCDSPRONTO.fasta
oryzaglumipatulaCDSPRONTO.fasta
oryzaindicaCDSRONTO.fasta
oryzajaponicaCDSPRONTO.fasta
oryzalongistaminataCDSPRONTO.fasta
oryzaMERIDIONALISCDSPRONTO.fasta
oryzanivaraCDSPRONTO.fasta
oryzapunctataCDSPRONTO.fasta
oryzarufipogonCDSPRONTO.fasta
Phallii_cdsPRONTO.fasta
Platifolius_cdsPRONTO.fasta
Ppersica_cdsPRONTO.fasta
Pvirgatum_cdsPRONTO.fasta
Pvulgaris_cdsPRONTO.fasta
SecalecerealeCDSPRONTO.fasta
Sitalica_cdsPRONTO.fasta
Slycopersicum_cdsPRONTO.fasta
Stuberosum_cdsPRONTO.fasta
Sviridis_cdsPRONTO.fasta
Tintermedium_cdsPRONTO.fasta
triticumadicoccoidesCDSPRONTO.fasta
triticumaestivumCDSPRONTO.fasta
triticumspeltaCDSPRONTO.fasta
triticumtimopheeviiCDSPRONTO.fasta
triticumturgidumCDSPRONTO.fasta
triticumurartuCDSPRONTO.fasta
Ufusca_cdsPRONTO.fasta
Vfaba_cdsPRONTO.fasta
Vunguiculata_cdsPRONTO.fasta
Vvinifera_cdsPRONTO.fasta
zeamaysCDSPRONTO.fasta"



for f in $species_files
do
    echo "inicio *********************************************************************************"
	echo "arquivo entrada:" $f
	echo "\n"

	output_file="${output_dir}${f}${nome}"

	echo "arquivo saida  : " $output_file
	echo "\n"



	/backup/tools/diamond blastx -d $database -q "$input_dir/$f" --evalue 1e-10 --max-target-seqs 1 --more-sensitive --outfmt 5 -o  $output_file

	echo "fim  **********************************************************************************"

done

