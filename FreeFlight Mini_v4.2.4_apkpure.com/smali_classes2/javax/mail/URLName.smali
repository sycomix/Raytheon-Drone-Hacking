.class public Ljavax/mail/URLName;
.super Ljava/lang/Object;
.source "URLName.java"


# static fields
.field static final caseDiff:I = 0x20

.field private static doEncode:Z

.field static dontNeedEncoding:Ljava/util/BitSet;


# instance fields
.field private file:Ljava/lang/String;

.field protected fullURL:Ljava/lang/String;

.field private hashCode:I

.field private host:Ljava/lang/String;

.field private hostAddress:Ljava/net/InetAddress;

.field private hostAddressKnown:Z

.field private password:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 110
    sput-boolean v1, Ljavax/mail/URLName;->doEncode:Z

    .line 114
    :try_start_0
    const-string v2, "mail.URLName.dontencode"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    sput-boolean v1, Ljavax/mail/URLName;->doEncode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_1
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    .line 512
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 513
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 515
    .restart local v0    # "i":I
    :cond_1
    const/16 v0, 0x41

    :goto_3
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 516
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 518
    :cond_2
    const/16 v0, 0x30

    :goto_4
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 519
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 522
    :cond_3
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 523
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 524
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 525
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 526
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 527
    return-void

    .line 115
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/URLName;->port:I

    .line 105
    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 162
    invoke-virtual {p0, p1}, Ljavax/mail/URLName;->parseString(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v2, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 90
    iput v3, p0, Ljavax/mail/URLName;->port:I

    .line 105
    iput v2, p0, Ljavax/mail/URLName;->hashCode:I

    .line 135
    iput-object p1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 137
    iput p3, p0, Ljavax/mail/URLName;->port:I

    .line 139
    if-eqz p4, :cond_2

    const/16 v1, 0x23

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "refStart":I
    if-eq v0, v3, :cond_2

    .line 140
    invoke-virtual {p4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 141
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 146
    .end local v0    # "refStart":I
    :goto_0
    sget-boolean v1, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v1, :cond_0

    invoke-static {p5}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .end local p5    # "username":Ljava/lang/String;
    :cond_0
    iput-object p5, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 147
    sget-boolean v1, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v1, :cond_1

    invoke-static {p6}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .end local p6    # "password":Ljava/lang/String;
    :cond_1
    iput-object p6, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    .line 148
    return-void

    .line 143
    .restart local p5    # "username":Ljava/lang/String;
    .restart local p6    # "password":Ljava/lang/String;
    :cond_2
    iput-object p4, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private static _encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x10

    .line 548
    const/16 v7, 0xa

    .line 549
    .local v7, "maxBytesPerChar":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 550
    .local v8, "out":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 551
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 553
    .local v9, "writer":Ljava/io/OutputStreamWriter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_5

    .line 554
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 555
    .local v2, "c":I
    sget-object v10, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v10, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 556
    const/16 v10, 0x20

    if-ne v2, v10, :cond_0

    .line 557
    const/16 v2, 0x2b

    .line 559
    :cond_0
    int-to-char v10, v2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 553
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 563
    :cond_1
    :try_start_0
    invoke-virtual {v9, v2}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 564
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 570
    .local v0, "ba":[B
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    array-length v10, v0

    if-ge v6, v10, :cond_4

    .line 571
    const/16 v10, 0x25

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 572
    aget-byte v10, v0, v6

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 575
    .local v3, "ch":C
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 576
    add-int/lit8 v10, v3, -0x20

    int-to-char v3, v10

    .line 578
    :cond_2
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 579
    aget-byte v10, v0, v6

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    .line 580
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 581
    add-int/lit8 v10, v3, -0x20

    int-to-char v3, v10

    .line 583
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 570
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 565
    .end local v0    # "ba":[B
    .end local v3    # "ch":C
    .end local v6    # "j":I
    :catch_0
    move-exception v4

    .line 566
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1

    .line 585
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "ba":[B
    .restart local v6    # "j":I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_1

    .line 589
    .end local v0    # "ba":[B
    .end local v2    # "c":I
    .end local v6    # "j":I
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 624
    if-nez p0, :cond_1

    .line 625
    const/4 p0, 0x0

    .line 658
    .end local p0    # "s":Ljava/lang/String;
    .local v2, "i":I
    .local v4, "result":Ljava/lang/String;
    .local v6, "sb":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object p0

    .line 626
    .end local v2    # "i":I
    .end local v4    # "result":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const-string v7, "+%"

    invoke-static {p0, v7}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 629
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 630
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 631
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 632
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 646
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 630
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 634
    :sswitch_0
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 638
    :sswitch_1
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v2, 0x3

    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    add-int/lit8 v2, v2, 0x2

    .line 644
    goto :goto_2

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 651
    .end local v0    # "c":C
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 653
    .restart local v4    # "result":Ljava/lang/String;
    :try_start_1
    const-string v7, "8859_1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 654
    .local v3, "inputBytes":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    move-object v4, v5

    .end local v3    # "inputBytes":[B
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :goto_3
    move-object p0, v4

    .line 658
    goto :goto_0

    .line 655
    :catch_1
    move-exception v7

    goto :goto_3

    .line 632
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 536
    if-nez p0, :cond_1

    .line 537
    const/4 p0, 0x0

    .line 544
    .end local p0    # "s":Ljava/lang/String;
    .local v1, "i":I
    :cond_0
    :goto_0
    return-object p0

    .line 539
    .end local v1    # "i":I
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 540
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 541
    .local v0, "c":I
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    sget-object v2, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 542
    :cond_2
    invoke-static {p0}, Ljavax/mail/URLName;->_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 539
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private declared-synchronized getHostAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 468
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    if-eqz v2, :cond_1

    .line 469
    iget-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 470
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 473
    :try_start_2
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    :goto_1
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 478
    iget-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 468
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .prologue
    .line 668
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 673
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 674
    .local v2, "len":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 675
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ltz v4, :cond_0

    .line 680
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    return v1

    .line 674
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 678
    goto :goto_1

    .line 679
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    move v1, v3

    .line 680
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 394
    instance-of v6, p1, Ljavax/mail/URLName;

    if-nez v6, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v4, p1

    .line 396
    check-cast v4, Ljavax/mail/URLName;

    .line 399
    .local v4, "u2":Ljavax/mail/URLName;
    iget-object v6, v4, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v4, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    iget-object v7, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 403
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "a1":Ljava/net/InetAddress;
    invoke-direct {v4}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 405
    .local v1, "a2":Ljava/net/InetAddress;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 406
    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    :cond_2
    iget-object v6, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v7, v4, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v7, v4, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 427
    :cond_3
    iget-object v6, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v6, :cond_6

    const-string v2, ""

    .line 428
    .local v2, "f1":Ljava/lang/String;
    :goto_1
    iget-object v6, v4, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v6, :cond_7

    const-string v3, ""

    .line 430
    .local v3, "f2":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    iget v6, p0, Ljavax/mail/URLName;->port:I

    iget v7, v4, Ljavax/mail/URLName;->port:I

    if-ne v6, v7, :cond_0

    .line 438
    const/4 v5, 0x1

    goto :goto_0

    .line 409
    .end local v2    # "f1":Ljava/lang/String;
    .end local v3    # "f2":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v4, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 410
    iget-object v6, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iget-object v7, v4, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 413
    :cond_5
    iget-object v6, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iget-object v7, v4, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eq v6, v7, :cond_2

    goto :goto_0

    .line 427
    :cond_6
    iget-object v2, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_1

    .line 428
    .restart local v2    # "f1":Ljava/lang/String;
    :cond_7
    iget-object v3, v4, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_2
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Ljavax/mail/URLName;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/mail/URLName;->getPort()I

    move-result v3

    invoke-virtual {p0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 445
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    if-eqz v1, :cond_0

    .line 446
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 459
    :goto_0
    return v1

    .line 447
    :cond_0
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 448
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v2, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 449
    :cond_1
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 450
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_5

    .line 451
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 454
    :cond_2
    :goto_1
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 455
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v2, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 456
    :cond_3
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 457
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v2, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 458
    :cond_4
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget v2, p0, Ljavax/mail/URLName;->port:I

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 459
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_0

    .line 452
    :cond_5
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 453
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget-object v2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_1
.end method

.method protected parseString(Ljava/lang/String;)V
    .locals 16
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 233
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Ljavax/mail/URLName;->port:I

    .line 235
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 240
    .local v5, "len":I
    const/16 v12, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 241
    .local v10, "protocolEnd":I
    const/4 v12, -0x1

    if-eq v10, v12, :cond_0

    .line 242
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 245
    :cond_0
    add-int/lit8 v12, v10, 0x1

    const-string v13, "//"

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, "fullhost":Ljava/lang/String;
    const/16 v12, 0x2f

    add-int/lit8 v13, v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 249
    .local v1, "fileStart":I
    const/4 v12, -0x1

    if-eq v1, v12, :cond_6

    .line 250
    add-int/lit8 v12, v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 251
    add-int/lit8 v12, v1, 0x1

    if-ge v12, v5, :cond_5

    .line 252
    add-int/lit8 v12, v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 259
    :goto_0
    const/16 v12, 0x40

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 260
    .local v4, "i":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_1

    .line 261
    const/4 v12, 0x0

    invoke-virtual {v2, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "fulluserpass":Ljava/lang/String;
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 266
    .local v7, "passindex":I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_7

    .line 267
    const/4 v12, 0x0

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 268
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    .line 276
    .end local v3    # "fulluserpass":Ljava/lang/String;
    .end local v7    # "passindex":I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5b

    if-ne v12, v13, :cond_8

    .line 278
    const/16 v12, 0x3a

    const/16 v13, 0x5d

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 282
    .local v8, "portindex":I
    :goto_2
    const/4 v12, -0x1

    if-eq v8, v12, :cond_9

    .line 283
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 284
    .local v9, "portstring":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 286
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Ljavax/mail/URLName;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_2
    :goto_3
    const/4 v12, 0x0

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 303
    .end local v1    # "fileStart":I
    .end local v2    # "fullhost":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v8    # "portindex":I
    .end local v9    # "portstring":Ljava/lang/String;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const/16 v13, 0x23

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .local v11, "refStart":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 307
    .end local v11    # "refStart":I
    :cond_4
    return-void

    .line 254
    .restart local v1    # "fileStart":I
    .restart local v2    # "fullhost":Ljava/lang/String;
    :cond_5
    const-string v12, ""

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto/16 :goto_0

    .line 256
    :cond_6
    add-int/lit8 v12, v10, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 270
    .restart local v3    # "fulluserpass":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v7    # "passindex":I
    :cond_7
    move-object/from16 v0, p0

    iput-object v3, v0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    goto :goto_1

    .line 280
    .end local v3    # "fulluserpass":Ljava/lang/String;
    .end local v7    # "passindex":I
    :cond_8
    const/16 v12, 0x3a

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .restart local v8    # "portindex":I
    goto :goto_2

    .line 287
    .restart local v9    # "portstring":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 288
    .local v6, "nfex":Ljava/lang/NumberFormatException;
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Ljavax/mail/URLName;->port:I

    goto :goto_3

    .line 294
    .end local v6    # "nfex":Ljava/lang/NumberFormatException;
    .end local v9    # "portstring":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iput-object v2, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    goto :goto_4

    .line 297
    .end local v1    # "fileStart":I
    .end local v2    # "fullhost":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v8    # "portindex":I
    :cond_a
    add-int/lit8 v12, v10, 0x1

    if-ge v12, v5, :cond_3

    .line 298
    add-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v0, "tempURL":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_0
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 179
    :cond_1
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 187
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    :cond_2
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_3
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_4
    iget v1, p0, Ljavax/mail/URLName;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 201
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    iget v1, p0, Ljavax/mail/URLName;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :cond_5
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 205
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :cond_6
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 210
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_7
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 215
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    .line 223
    .end local v0    # "tempURL":Ljava/lang/StringBuffer;
    :cond_9
    iget-object v1, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    return-object v1
.end method
