use v6.c;
use Test;
use Unicode::PRECIS;
use Unicode::PRECIS::Tables::GeneralCatagory;

#-------------------------------------------------------------------------------
subtest {
  ok 0x00C0 (elem) $Unicode::PRECIS::Tables::GeneralCatagory::set,
     '0x00C0 in GeneralCatagory set';

  for "abc\x[0398]\x[30c7]".NFC -> $codepoint {
    ok $codepoint (elem) $Unicode::PRECIS::Tables::GeneralCatagory::set,
      Uni.new($codepoint).Str() ~ " ($codepoint.fmt('0x%04x')) in general set";
  }
}, 'Test tables';

#-------------------------------------------------------------------------------
subtest {

  is $exceptions{0x00DF}, 'PVALID', 'exceptions check for PVALID';
  is $properties{$exceptions{0x00DF}}, $properties<PVALID>,
     "properties check for PVALID";

  is $exceptions{0x0660}, 'CONTEXTO', 'exceptions check for CONTEXTO';
  is $properties{$exceptions{0x0660}}, $properties<CONTEXTO>,
     "properties check for CONTEXTO";
}, 'Test exceptions';

#-------------------------------------------------------------------------------
done-testing;