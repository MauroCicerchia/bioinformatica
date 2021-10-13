use Bio::SeqIO;
use Bio::PrimarySeq;

$genesFile = Bio::SeqIO->new(-file => 'sequence.gb', -format => 'genbank');
$proteinsFile = Bio::SeqIO->new(-file => '>proteins.fas', -format => 'fasta');

while ($index = $genesFile->next_seq) {
    if($index->validate_seq($index->seq)) {
        @proteins = Bio::SeqUtils->translate_6frames($index);

        $proteinsFile->write_seq(@proteins);
    } else {
        die 'File is not valid';
    }
}