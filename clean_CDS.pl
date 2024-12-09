#!/usr/bin/perl -w


open (IN1, "<Gmax_275_Wm82.a2.v1.transcript.fa");
open (OUT1,">glycinemax_transcriptPRONTO.fasta");

$/ = ">";
my ($id,$seq);

while (<IN1>)
{

   next unless (($id,$seq) = /(.*?)\n(.*)/s);

   $seq =~ s/[\d\s>]//g; #remove digitos, espacos, linhas de parada,...
   #$id =~ s/^\s*//g;
   #$id =~ s/\s*$//g;
   #$id =~ s/\s/_/g; #substitui espaco por (underline) "_"
   my @id2 = split(' ', $id);
   my $id2 = $id2[0];

   $id2 =~ s/\./_/g;

   print OUT1 ">$id2\n";
   print OUT1 "$seq\n";

   	
};

close (IN1);
close (OUT1);

print "fim";
