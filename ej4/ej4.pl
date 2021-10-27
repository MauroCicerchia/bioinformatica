use warnings;
use Bio::SeqIO;
use Bio::SearchIO;
use Bio::DB::GenPept;

$blastFile = Bio::SearchIO->new(-file => 'blast.report', -format => 'blast');
$pattern = $ARGV[0] || die "Usage: $0 <pattern>\n";
$gp = Bio::DB::GenPept->new(-format => 'fasta');
$outputFile = Bio::SeqIO->new(-file => '>results.fas', -format => 'fasta');

while($currentResult = $blastFile->next_result) {
    while($hit = $currentResult->next_hit) {
        if($hit->description =~ /$pattern/gi) {
            $seq = $gp->get_Seq_by_acc($hit->accession);
            $outputFile->write_seq($seq);
        }
    }
}