use v6.c;
use Unicode::Stringprep::Common;

#-------------------------------------------------------------------------------
unit package Unicode;

#-------------------------------------------------------------------------------
class Stringprep::Prohibited {

  has Array $.C11 = mk-set(q:to/ENDTABLE/);
     0020; SPACE
  ENDTABLE

  has Array $.C12 = mk-set(q:to/ENDTABLE/);
     00A0; NO-BREAK SPACE
     1680; OGHAM SPACE MARK
     2000; EN QUAD
     2001; EM QUAD
     2002; EN SPACE
     2003; EM SPACE
     2004; THREE-PER-EM SPACE
     2005; FOUR-PER-EM SPACE
     2006; SIX-PER-EM SPACE
     2007; FIGURE SPACE
     2008; PUNCTUATION SPACE
     2009; THIN SPACE
     200A; HAIR SPACE
     200B; ZERO WIDTH SPACE
     202F; NARROW NO-BREAK SPACE
     205F; MEDIUM MATHEMATICAL SPACE
     3000; IDEOGRAPHIC SPACE
  ENDTABLE

  has Array $.C21 = mk-set(q:to/ENDTABLE/);
     0000-001F; [CONTROL CHARACTERS]
     007F; DELETE
  ENDTABLE

  has Array $.C22 = mk-set(q:to/ENDTABLE/);
     0080-009F; [CONTROL CHARACTERS]
     06DD; ARABIC ENDTABLE OF AYAH
     070F; SYRIAC ABBREVIATION MARK
     180E; MONGOLIAN VOWEL SEPARATOR
     200C; ZERO WIDTH NON-JOINER
     200D; ZERO WIDTH JOINER
     2028; LINE SEPARATOR
     2029; PARAGRAPH SEPARATOR
     2060; WORD JOINER
     2061; FUNCTION APPLICATION
     2062; INVISIBLE TIMES
     2063; INVISIBLE SEPARATOR
     206A-206F; [CONTROL CHARACTERS]
     FEFF; ZERO WIDTH NO-BREAK SPACE
     FFF9-FFFC; [CONTROL CHARACTERS]
     1D173-1D17A; [MUSICAL CONTROL CHARACTERS]
  ENDTABLE

  has Array $.C3 = mk-set(q:to/ENDTABLE/);
     E000-F8FF; [PRIVATE USE, PLANE 0]
     F0000-FFFFD; [PRIVATE USE, PLANE 15]
     100000-10FFFD; [PRIVATE USE, PLANE 16]
  ENDTABLE

  has Array $.C4 = mk-set(q:to/ENDTABLE/);
     FDD0-FDEF; [NONCHARACTER CODE POINTS]
     FFFE-FFFF; [NONCHARACTER CODE POINTS]
     1FFFE-1FFFF; [NONCHARACTER CODE POINTS]
     2FFFE-2FFFF; [NONCHARACTER CODE POINTS]
     3FFFE-3FFFF; [NONCHARACTER CODE POINTS]
     4FFFE-4FFFF; [NONCHARACTER CODE POINTS]
     5FFFE-5FFFF; [NONCHARACTER CODE POINTS]
     6FFFE-6FFFF; [NONCHARACTER CODE POINTS]
     7FFFE-7FFFF; [NONCHARACTER CODE POINTS]
     8FFFE-8FFFF; [NONCHARACTER CODE POINTS]
     9FFFE-9FFFF; [NONCHARACTER CODE POINTS]
     AFFFE-AFFFF; [NONCHARACTER CODE POINTS]
     BFFFE-BFFFF; [NONCHARACTER CODE POINTS]
     CFFFE-CFFFF; [NONCHARACTER CODE POINTS]
     DFFFE-DFFFF; [NONCHARACTER CODE POINTS]
     EFFFE-EFFFF; [NONCHARACTER CODE POINTS]
     FFFFE-FFFFF; [NONCHARACTER CODE POINTS]
     10FFFE-10FFFF; [NONCHARACTER CODE POINTS]
  ENDTABLE

  has Array $.C5 = mk-set(q:to/ENDTABLE/);
     D800-DFFF; [SURROGATE CODES]
  ENDTABLE

  has Array $.C6 = mk-set(q:to/ENDTABLE/);
     FFF9; INTERLINEAR ANNOTATION ANCHOR
     FFFA; INTERLINEAR ANNOTATION SEPARATOR
     FFFB; INTERLINEAR ANNOTATION TERMINATOR
     FFFC; OBJECT REPLACEMENT CHARACTER
     FFFD; REPLACEMENT CHARACTER
  ENDTABLE

  has Array $.C7 = mk-set(q:to/ENDTABLE/);
     2FF0-2FFB; [IDEOGRAPHIC DESCRIPTION CHARACTERS]
  ENDTABLE

  has Array $.C8 = mk-set(q:to/ENDTABLE/);
     0340; COMBINING GRAVE TONE MARK
     0341; COMBINING ACUTE TONE MARK
     200E; LEFT-TO-RIGHT MARK
     200F; RIGHT-TO-LEFT MARK
     202A; LEFT-TO-RIGHT EMBEDDING
     202B; RIGHT-TO-LEFT EMBEDDING
     202C; POP DIRECTIONAL FORMATTING
     202D; LEFT-TO-RIGHT OVERRIDE
     202E; RIGHT-TO-LEFT OVERRIDE
     206A; INHIBIT SYMMETRIC SWAPPING
     206B; ACTIVATE SYMMETRIC SWAPPING
     206C; INHIBIT ARABIC FORM SHAPING
     206D; ACTIVATE ARABIC FORM SHAPING
     206E; NATIONAL DIGIT SHAPES
     206F; NOMINAL DIGIT SHAPES
  ENDTABLE

  has Array $.C9 = mk-set(q:to/ENDTABLE/);
     E0001; LANGUAGE TAG
     E0020-E007F; [TAGGING CHARACTERS]
  ENDTABLE
}


=finish
=head1 NAME

Unicode::Stringprep::Prohibited - Tables from S<RFC 3454>, S<AppENDTABLEix C>

=head1 SYNOPSIS

  @Unicode::Stringprep::Prohibited::C11	# AppENDTABLEix C.1.1
  @Unicode::Stringprep::Prohibited::C12	# AppENDTABLEix C.1.2
  @Unicode::Stringprep::Prohibited::C21	# AppENDTABLEix C.2.1
  @Unicode::Stringprep::Prohibited::C22	# AppENDTABLEix C.2.2
  @Unicode::Stringprep::Prohibited::C3	# AppENDTABLEix C.3
  @Unicode::Stringprep::Prohibited::C4	# AppENDTABLEix C.4
  @Unicode::Stringprep::Prohibited::C5	# AppENDTABLEix C.5
  @Unicode::Stringprep::Prohibited::C6	# AppENDTABLEix C.6
  @Unicode::Stringprep::Prohibited::C7	# AppENDTABLEix C.7
  @Unicode::Stringprep::Prohibited::C8	# AppENDTABLEix C.8
  @Unicode::Stringprep::Prohibited::C9	# AppENDTABLEix C.9

=head1 DESCRIPTION

The tables are provided as arrays, which contain pairs of Unicode
codepoints (as integers) defining the start and ENDTABLE of a Unicode
range.

This module exports nothing.

=head1 AUTHOR

Claus FE<auml>rber E<lt>CFAERBER@cpan.orgE<gt>

=head1 LICENSE

Copyright 2007-2009 Claus FE<auml>rber.

This library is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=head1 SEE ALSO

L<Unicode::Stringprep>, S<RFC 3454> (L<http://www.ietf.org/rfc/rfc3454.txt>)

=cut
