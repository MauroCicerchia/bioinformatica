use Bio::SeqIO;
use Bio::PrimarySeq;

$genesFile = 'sequence.gb';
$genesIOInstace = Bio::SeqIO->new(-file => $genesFile, -format => 'genbank');
$proteinsIOInstance = Bio::SeqIO->new(-file => '>proteins.fas', -format => 'fasta');

while ($index = $genesIOInstace->next_seq) {
    if($index->validate_seq($index->seq)) {
        @proteins = Bio::SeqUtils->translate_6frames($index);

        $proteinsIOInstance->write_seq(@proteins);
    } else {
        die 'Invalid sequence file!';
    }
}