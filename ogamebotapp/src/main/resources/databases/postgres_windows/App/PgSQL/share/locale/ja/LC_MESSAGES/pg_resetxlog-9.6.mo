Þ    l      |     Ü      0	     1	  9   K	  -   	  :   ³	  -   î	  4   
  9   Q
  O   
  1   Û
  +     O   9  ;     I   Å        +   0  "   \  +        «  >   Ç  !     ,   (  +   U  '     )   ©  6   Ó  #   
  <   .  &   k  -     !   À  1   â  ?     &   T  !   {  =     "   Û  (   þ     '  S   <  #     \   ´  +     0   =      n  2     @   Â  D     4   H  G   }  &   Å  -   ì       )   *  )   T  )   ~     ¨  )   Å  )   ï  )     )   C  )   m  )     )   Á     ë  V     )   _  )     )   ³  ,   Ý  )   
  )   4  )   ^  )     )   ²  )   Ü  )     )   0  )   Z  )     )   ®  )   Ø  )     )   ,  )   V  )     )   ª  )   Ô  )   þ  )   (  )   R  )   |  	   ¦  )   °      Ú     {  &     !   ¹  )   Û  -        3     @     I  )   `       )        ¸  )   »    å       p     J     Y   W  J   ±  \   ü  D   Y  ¤     Q   C   7      l   Í   ^   :!  a   !  .   û!  E   *"  8   p"  M   ©"  1   ÷"  a   )#  &   #  G   ²#  @   ú#  H   ;$  @   $  V   Å$  :   %  e   W%  F   ½%  R   &  @   W&  \   &  F   õ&  R   <'  :   '  `   Ê'  :   +(  @   f(     §(  s   ¿(  0   3)  ±   d)  Q   *  S   h*  >   ¼*  ]   û*  ]   Y+  o   ·+  D   ',  X   l,  H   Å,  U   -     d-  A   v-  @   ¸-  8   ù-     2.  E   O.  :   .  :   Ð.  7   /  <   C/  .   /  .   ¯/     Þ/  }   ø/  7   v0  6   ®0  8   å0  C   1  ;   b1  5   1  6   Ô1  5   2  6   A2  6   x2  6   ¯2  5   æ2  4   3  :   Q3  7   3  4   Ä3  5   ù3  1   /4  )   a4  )   4  /   µ4  )   å4  )   5  0   95  )   j5  +   5     À5  @   Ò5  (  6  :   <7  3   w7  (   «7  =   Ô7  O   8     b8  	   o8     y8  3   8     À8  3   Ç8     û8  4   9     7           N      (      ?       I   ^   X   L   ,              @      "   >   W   a   T      S   5         f   R       &                  _         +          O       [      =   e   /       i   ;      !   b   0   Q   	   K          2       `   \             j          c      U                     h            G   '           #   B   
       D   .       4   -   k   F   P   d   6   ]               3   E   Z       8       %      g   Y   l   H      *                  9                      $       A       <   M               C       V   J       1   :   )       

Values to be changed:

 
If these values seem acceptable, use -f to force reset.
 
Report bugs to <pgsql-bugs@postgresql.org>.
                    (zero in either value means no change)
   -?, --help       show this help, then exit
   -O OFFSET        set next multitransaction offset
   -V, --version    output version information, then exit
   -c XID,XID       set oldest and newest transactions bearing commit timestamp
   -e XIDEPOCH      set next transaction ID epoch
   -f               force update to be done
   -l XLOGFILE      force minimum WAL starting location for new transaction log
   -m MXID,MXID     set next and oldest multitransaction ID
   -n               no update, just show what would be done (for testing)
   -o OID           set next OID
   -x XID           set next transaction ID
  [-D] DATADIR      data directory
 %s resets the PostgreSQL transaction log.

 %s: OID (-o) must not be 0
 %s: WARNING: cannot create restricted tokens on this platform
 %s: cannot be executed by "root"
 %s: could not allocate SIDs: error code %lu
 %s: could not change directory to "%s": %s
 %s: could not close directory "%s": %s
 %s: could not create pg_control file: %s
 %s: could not create restricted token: error code %lu
 %s: could not delete file "%s": %s
 %s: could not get exit code from subprocess: error code %lu
 %s: could not open directory "%s": %s
 %s: could not open file "%s" for reading: %s
 %s: could not open file "%s": %s
 %s: could not open process token: error code %lu
 %s: could not re-execute with restricted token: error code %lu
 %s: could not read directory "%s": %s
 %s: could not read file "%s": %s
 %s: could not start process for command "%s": error code %lu
 %s: could not write file "%s": %s
 %s: could not write pg_control file: %s
 %s: fsync error: %s
 %s: internal error -- sizeof(ControlFileData) is too large ... fix PG_CONTROL_SIZE
 %s: invalid argument for option %s
 %s: lock file "%s" exists
Is a server running?  If not, delete the lock file and try again.
 %s: multitransaction ID (-m) must not be 0
 %s: multitransaction offset (-O) must not be -1
 %s: no data directory specified
 %s: oldest multitransaction ID (-m) must not be 0
 %s: pg_control exists but has invalid CRC; proceed with caution
 %s: pg_control exists but is broken or unknown version; ignoring it
 %s: too many command-line arguments (first is "%s")
 %s: transaction ID (-c) must be either 0 or greater than or equal to 2
 %s: transaction ID (-x) must not be 0
 %s: transaction ID epoch (-e) must not be -1
 64-bit integers Blocks per segment of large relation: %u
 Bytes per WAL segment:                %u
 Catalog version number:               %u
 Current pg_control values:

 Data page checksum version:           %u
 Database block size:                  %u
 Database system identifier:           %s
 Date/time type storage:               %s
 First log segment after reset:        %s
 Float4 argument passing:              %s
 Float8 argument passing:              %s
 Guessed pg_control values:

 If you are sure the data directory path is correct, execute
  touch %s
and try again.
 Latest checkpoint's NextMultiOffset:  %u
 Latest checkpoint's NextMultiXactId:  %u
 Latest checkpoint's NextOID:          %u
 Latest checkpoint's NextXID:          %u:%u
 Latest checkpoint's TimeLineID:       %u
 Latest checkpoint's full_page_writes: %s
 Latest checkpoint's newestCommitTsXid:%u
 Latest checkpoint's oldestActiveXID:  %u
 Latest checkpoint's oldestCommitTsXid:%u
 Latest checkpoint's oldestMulti's DB: %u
 Latest checkpoint's oldestMultiXid:   %u
 Latest checkpoint's oldestXID's DB:   %u
 Latest checkpoint's oldestXID:        %u
 Maximum columns in an index:          %u
 Maximum data alignment:               %u
 Maximum length of identifiers:        %u
 Maximum size of a TOAST chunk:        %u
 NextMultiOffset:                      %u
 NextMultiXactId:                      %u
 NextOID:                              %u
 NextXID epoch:                        %u
 NextXID:                              %u
 OldestMulti's DB:                     %u
 OldestMultiXid:                       %u
 OldestXID's DB:                       %u
 OldestXID:                            %u
 Options:
 Size of a large-object chunk:         %u
 The database server was not shut down cleanly.
Resetting the transaction log might cause data to be lost.
If you want to proceed anyway, use -f to force reset.
 Transaction log reset
 Try "%s --help" for more information.
 Usage:
  %s [OPTION]... DATADIR

 WAL block size:                       %u
 You must run %s as the PostgreSQL superuser.
 by reference by value floating-point numbers newestCommitTsXid:                    %u
 off oldestCommitTsXid:                    %u
 on pg_control version number:            %u
 Project-Id-Version: PostgreSQL 9.6
Report-Msgid-Bugs-To: pgsql-bugs@postgresql.org
POT-Creation-Date: 2016-09-20 16:55+0900
PO-Revision-Date: 2013-08-18 12:10+0900
Last-Translator: Okano Naoki <okano.naoki@jp.fujitsu.com>
Language-Team: jpug-doc <jpug-doc@ml.postgresql.jp>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
 

å¤æ´ãããå¤:

 
ãã®å¤ãé©åã ã¨æãããã®ã§ããã°ã-fãä½¿ç¨ãã¦å¼·å¶ãªã»ãããã¦ãã ããã
 
ä¸å·åã¯<pgsql-bugs@postgresql.org>ã¾ã§å ±åãã¦ãã ããã
                    (ããããã®å¤ã§ã®0ã¯å¤æ´ããªããã¨ãæå³ãã¾ã)
   -?, --help                ãã®ãã«ããè¡¨ç¤ºããçµäºãã¾ã
   -O OFFSET        æ¬¡ã®ãã«ããã©ã³ã¶ã¯ã·ã§ã³ãªãã»ãããè¨­å®ãã¾ã
   -V, --version    ãã¼ã¸ã§ã³æå ±ãåºåãçµäºãã¾ã
   -c XID,XID       ã³ãããã¿ã¤ã ã¹ã¿ã³ããä½æããæãå¤ããã©ã³ã¶ã¯ã·ã§ã³ã¨æãæ°ãããã©ã³ã¶ã¯ã·ã§ã³ãè¨­å®ãã¾ã
   -e XIDEPOCH     æ¬¡ã®ãã©ã³ã¶ã¯ã·ã§ã³IDã¨ããã¯ãè¨­å®ãã¾ã
   -f              å¼·å¶çã«æ´æ°ãå®æ½ãã¾ã
   -l XLOGFILE      æ°ãããã©ã³ã¶ã¯ã·ã§ã³ã­ã°ã®æå°WALéå§ãã¤ã³ããå¼·å¶ãã¾ã

   -m MXID,MXID     æ¬¡ããã³æå¤ã®ãã«ããã©ã³ã¶ã¯ã·ã§ã³IDãè¨­å®ãã¾ã
   -n               æ´æ°ããããä½ãè¡ãªãããããåã«è¡¨ç¤ºãã¾ã(è©¦é¨ç¨)
   -o OID          æ¬¡ã®OIDãè¨­å®ãã¾ã
   -x XID          æ¬¡ã®ãã©ã³ã¶ã¯ã·ã§ã³IDãè¨­å®ãã¾ã
  [-D] DATADIR      ãã¼ã¿ãã¼ã¹ãã£ã¬ã¯ããª
 %sã¯PostgreSQLã®ãã©ã³ã¶ã¯ã·ã§ã³ã­ã°ããªã»ãããã¾ãã

 %s: OID(-o)ã¯é0ã§ãªããã°ãªãã¾ãã
 %s: è­¦å: ãã®ãã©ãããã©ã¼ã ã§ã¯å¶éä»ããã¼ã¯ã³ãä½æã§ãã¾ãã
 %s: "root"ã§ã¯å®è¡ã§ãã¾ãã
 %s: SIDãå²ãå½ã¦ããã¾ããã§ãã: ã¨ã©ã¼ã³ã¼ã %lu
 %s: ãã£ã¬ã¯ããª"%s"ã«ç§»åã§ãã¾ããã§ãã: %s
 %s: ãã£ã¬ã¯ããª "%s" ãã¯ã­ã¼ãºã§ãã¾ããã§ãã: %s
 %s: pg_controlãã¡ã¤ã«ãä½æã§ãã¾ããã§ãã: %s
 %s: å¶éä»ããã¼ã¯ã³ãä½æã§ãã¾ããã§ãã: ã¨ã©ã¼ã³ã¼ã %lu
 %s: ãã¡ã¤ã«"%s"ãåé¤ã§ãã¾ããã§ãã: %s
 %s: ãµããã­ã»ã¹ã®çµäºã³ã¼ããå¥æã§ãã¾ããã§ããã: ã¨ã©ã¼ã³ã¼ã %lu
 %s: ãã£ã¬ã¯ããª"%s"ããªã¼ãã³ã§ãã¾ããã§ãã: %s
 %s: èª­ã¿åãç¨ã®ãã¡ã¤ã«"%s"ããªã¼ãã³ã§ãã¾ããã§ãã: %s
 %s: ãã¡ã¤ã«"%s"ããªã¼ãã³ã§ãã¾ããã§ãã: %s
 %s: ãã­ã»ã¹ãã¼ã¯ã³ããªã¼ãã³ã§ãã¾ããã§ãã: ã¨ã©ã¼ã³ã¼ã %lu
 %s: å¶éä»ããã¼ã¯ã³ã§åå®è¡ã§ãã¾ããã§ãã: %lu
 %s: ãã£ã¬ã¯ããª"%s"ãèª­ã¿åããã¨ãã§ãã¾ããã§ããã: %s
 %s: ãã¡ã¤ã«"%s"ãèª­ã¿è¾¼ãã¾ããã§ãã: %s
 %s: "%s"ã³ãã³ãç¨ã®ãã­ã»ã¹ãèµ·åã§ãã¾ããã§ãã: ã¨ã©ã¼ã³ã¼ã %lu
 %s: ãã¡ã¤ã«"%s"ãæ¸ãè¾¼ãã¾ããã§ãã: %s
 %s: pg_controlãã¡ã¤ã«ãæ¸ãè¾¼ãã¾ããã§ãã: %s
 %s: fsyncã¨ã©ã¼: %s
 %s: åé¨ã¨ã©ã¼ -- sizeof(ControlFileData)ãå¤§ãããã¾ã ... PG_CONTROL_SIZEãä¿®æ­£ãã¦ãã ãã
 %s: ãªãã·ã§ã³ %s ã®å¼æ°ãç¡å¹ã§ã
 %s: ã­ãã¯ãã¡ã¤ã«"%s"ãããã¾ã
ãµã¼ããç¨¼åãã¦ãã¾ããã? ç¨¼åãã¦ããªããã°ã­ãã¯ãã¡ã¤ã«ãåé¤ãåå®è¡ãã¦ãã ããã
 %s: ãã«ããã©ã³ã¶ã¯ã·ã§ã³ID(-m)ã¯é0ã§ãªããã°ãªãã¾ãã
 %s: ãã«ããã©ã³ã¶ã¯ã·ã§ã³ãªãã»ãã(-O)ã¯-1ã§ã¯ããã¾ãã
 %s: ãã¼ã¿ãã£ã¬ã¯ããªãæå®ããã¦ãã¾ãã
 %s: æãå¤ããã«ããã©ã³ã¶ã¯ã·ã§ã³ID(-m)ã¯é0ã§ãªããã°ãªãã¾ãã
 %s: pg_controlãããã¾ããããCRCãç¡å¹ã§ãããè­¦åä»ãã§ç¶è¡ãã¾ã
 %s: pg_controlãããã¾ããããç ´æãããã¯æªç¥ã®ãã¼ã¸ã§ã³ã§ããã®ã§ç¡è¦ãã¾ã
 %s: ã³ãã³ãã©ã¤ã³å¼æ°ãå¤ããã¾ãã(å§ãã¯"%s")
 %s: ãã©ã³ã¶ã¯ã·ã§ã³ID(-c)ã¯0ãããã¯2ä»¥ä¸ã§ãªããã°ãªãã¾ãã
 %s: ãã©ã³ã¶ã¯ã·ã§ã³ID(-x)ã¯é0ã§ãªããã°ãªãã¾ãã
 %s: ãã©ã³ã¶ã¯ã·ã§ã³ID ã¨ããã¯(-e)ã¯ -1 ã§ãã£ã¦ã¯ãªãã¾ãã
 64ãããæ´æ° ã©ã¼ã¸ãªã¬ã¼ã·ã§ã³ã»ã°ã¡ã³ãã®ãã­ãã¯æ°: %u
 WALã»ã°ã¡ã³ãå½ããã®ãã¤ãæ°:                  %u
 ã«ã¿ã­ã°ãã¼ã¸ã§ã³çªå·:                   %u
 ç¾å¨ã®pg_controlã®å¤:

 ãã¼ã¿ãã¼ã¸ãã§ãã¯ãµã ã®ãã¼ã¸ã§ã³:           %u
 ãã¼ã¿ãã¼ã¹ãã­ãã¯ãµã¤ãº:               %u
 ãã¼ã¿ãã¼ã¹ã·ã¹ãã è­å¥å­:               %s
 æ¥ä»/æå»åã®æ ¼ç´æ¹å¼                     %s
 ãªã»ããå¾ãæåã®ã­ã°ã»ã°ã¡ã³ã:        %s
 Float4 å¼æ°ã®æ¸¡ãæ¹:                 %s
 Float8  å¼æ°ã®æ¸¡ãæ¹:                %s
 pg_controlã®æ¨æ¸¬å¤:

 ç¢ºå®ã«ãã¼ã¿ãã£ã¬ã¯ããªã®ãã¹ãæ­£ãããã°ã
  touch %s
ãå®è¡ããåå®è¡ãã¦ãã ããã

 æçµãã§ãã¯ãã¤ã³ãã®NextMultiOffset:   %u
 æçµãã§ãã¯ãã¤ã³ãã®NextMultiXactId:  %u
 æçµãã§ãã¯ãã¤ã³ãã®NextOID:            %u
 æçµãã§ãã¯ãã¤ã³ãã®NextXID:                    %u:%u
 æçµãã§ãã¯ãã¤ã³ãã®æç³»åID:           %u
 æçµãã§ãã¯ãã¤ã³ãã®full_page_writes %s
 æçµãã§ãã¯ãã¤ã³ãã®newestCommitTsXid:%u
 æçµãã§ãã¯ãã¤ã³ãã®oldestActiveXID: %u
 æçµãã§ãã¯ãã¤ã³ãã®oldestCommitTsXid:%u
 æçµãã§ãã¯ãã¤ã³ãã®oldestMultiã®DB: %u
 æçµãã§ãã¯ãã¤ã³ãã®oldestMultiXid:   %u
 æçµãã§ãã¯ãã¤ã³ãã®oldestXIDã®DB:  %u
 æçµãã§ãã¯ãã¤ã³ãã®oldestXID:      %u
 ã¤ã³ããã¯ã¹åã®æå¤§åæ°:                  %u
 æå¤§ã®ãã¼ã¿ã¢ã©ã¤ã¡ã³ã:               %u
 è­å¥å­ã®æå¤§é·:                           %u
 TOAST ãã£ã³ã¯ä¸åã®æå¤§ãµã¤ãº:       %u
 NextMultiOffset:                              %u
 NextMultiXactId:                      %u
 NextOID:                              %u
 NextXIDã¨ããã¯:                        %u
 NextXID:                              %u
 OldestMultiã®DB:                     %u
 OldestMultiXid:                              %u
 OldestXIDã®DB:                       %u
 OldestXID:                              %u
 ãªãã·ã§ã³:
 ã©ã¼ã¸ãªãã¸ã§ã¯ããã£ã³ã¯ã®ãµã¤ãº:         %u
 ãã¼ã¿ãã¼ã¹ãµã¼ããæ­£ããã·ã£ãããã¦ã³ããã¦ãã¾ããã§ããã
ãã©ã³ã¶ã¯ã·ã§ã³ã­ã°ã®ãªã»ããã«ã¯ãã¼ã¿æå¤±ã®æããããã¾ãã
ã¨ã«ããå¦çãããã®ã§ããã°ã-fãä½¿ç¨ãã¦å¼·å¶çã«ãªã»ãããã¦ãã ããã
 ãã©ã³ã¶ã¯ã·ã§ã³ã­ã°ããªã»ãããã¾ãã
 è©³ç´°ã¯"%s --help"ãå®è¡ãã¦ãã ããã
 ä½¿ç¨æ¹æ³:
  %s [OPTION]... DATADIR

 WALãã­ãã¯ã®ãµã¤ãº:                              %u
 PostgreSQLã®ã¹ã¼ãã¼ã¦ã¼ã¶ã§%sãå®è¡ããªããã°ãªãã¾ãã
 åç§æ¸¡ã å¤æ¸¡ã æµ®åå°æ°ç¹æ° newestCommitTsXid:                              %u
 ãªã oldestCommitTsXid:                              %u
 ãªã³ pg_controlãã¼ã¸ã§ã³çªå·:                 %u
 