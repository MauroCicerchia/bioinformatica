# a script to calculate the ORF and find the possible proteins sequence in a DNA sequence located in sequence.fas
use Bio::SeqIO;
use Bio::Factory::EMBOSS;

$genesFile = Bio::SeqIO->new(-file => 'sequence.fas', -format => 'fasta');

$embossFactory = Bio::Factory::EMBOSS->new();
$getorf = $embossFactory->program('getorf');
$patmatmotifs = $embossFactory->program('patmatmotifs');

while ($index = $genesFile->next_seq) {
    if($index->validate_seq($index->seq)) {
        $getorf->run({-sequence => $index, -outseq => 'proteins.fas', -minsize => 300});
        # $patmatmotifs->run({-sequence => $index, -outfile => 'proteins.motifs'}); TODO
    } else {
        die 'File is not valid';
    }
}
