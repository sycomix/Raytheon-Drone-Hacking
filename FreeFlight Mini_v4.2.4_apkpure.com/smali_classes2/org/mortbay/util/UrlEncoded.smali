.class public Lorg/mortbay/util/UrlEncoded;
.super Lorg/mortbay/util/MultiMap;
.source "UrlEncoded.java"


# static fields
.field public static final ENCODING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "org.mortbay.util.UrlEncoding.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    .line 63
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->decode(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/util/UrlEncoded;)V
    .locals 0
    .param p1, "url"    # Lorg/mortbay/util/UrlEncoded;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/mortbay/util/MultiMap;-><init>(Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method public static decode88591To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/mortbay/util/MultiMap;
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    monitor-enter p1

    .line 330
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 332
    .local v4, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 337
    .local v6, "value":Ljava/lang/String;
    const/4 v5, 0x0

    .line 338
    .local v5, "totalLength":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    if-ltz v0, :cond_6

    .line 340
    int-to-char v7, v0

    sparse-switch v7, :sswitch_data_0

    .line 379
    int-to-char v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 382
    :cond_1
    :goto_0
    if-ltz p2, :cond_0

    add-int/lit8 v5, v5, 0x1

    if-le v5, p2, :cond_0

    .line 383
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Form too large"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 396
    .end local v0    # "b":I
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "totalLength":I
    .end local v6    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 343
    .restart local v0    # "b":I
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "totalLength":I
    .restart local v6    # "value":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_3

    const-string v6, ""

    .line 344
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 345
    if-eqz v4, :cond_4

    .line 347
    invoke-virtual {p1, v4, v6}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    :cond_2
    :goto_2
    const/4 v4, 0x0

    .line 354
    const/4 v6, 0x0

    .line 355
    goto :goto_0

    .line 343
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 349
    :cond_4
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 351
    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 358
    :sswitch_1
    if-eqz v4, :cond_5

    .line 360
    int-to-char v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 363
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 368
    :sswitch_2
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 372
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 373
    .local v2, "dh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 374
    .local v3, "dl":I
    if-ltz v2, :cond_1

    if-ltz v3, :cond_1

    .line 376
    int-to-byte v7, v2

    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    int-to-byte v8, v3

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    add-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 386
    .end local v2    # "dh":I
    .end local v3    # "dl":I
    :cond_6
    if-eqz v4, :cond_9

    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_8

    const-string v6, ""

    .line 389
    :goto_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 390
    invoke-virtual {p1, v4, v6}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 396
    :cond_7
    :goto_4
    monitor-exit p1

    .line 397
    return-void

    .line 388
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 392
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 610
    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 612
    :cond_0
    const/4 v3, 0x0

    .line 614
    .local v3, "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v7, v0, :cond_c

    .line 616
    add-int v12, p1, v7

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 617
    .local v5, "c":C
    if-ltz v5, :cond_1

    const/16 v12, 0xff

    if-le v5, v12, :cond_4

    .line 619
    :cond_1
    if-nez v3, :cond_3

    .line 621
    new-instance v3, Lorg/mortbay/util/Utf8StringBuffer;

    .end local v3    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    move/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    .line 622
    .restart local v3    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    invoke-virtual {v3}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    add-int v13, p1, v7

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p1

    invoke-virtual {p0, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 625
    :cond_3
    invoke-virtual {v3}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 627
    :cond_4
    const/16 v12, 0x2b

    if-ne v5, v12, :cond_6

    .line 629
    if-nez v3, :cond_5

    .line 631
    new-instance v3, Lorg/mortbay/util/Utf8StringBuffer;

    .end local v3    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    move/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    .line 632
    .restart local v3    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    invoke-virtual {v3}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    add-int v13, p1, v7

    move/from16 v0, p1

    invoke-virtual {p0, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    :cond_5
    invoke-virtual {v3}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 637
    :cond_6
    const/16 v12, 0x25

    if-ne v5, v12, :cond_b

    add-int/lit8 v12, v7, 0x2

    move/from16 v0, p2

    if-ge v12, v0, :cond_b

    .line 639
    if-nez v3, :cond_7

    .line 641
    new-instance v3, Lorg/mortbay/util/Utf8StringBuffer;

    .end local v3    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    move/from16 v0, p2

    invoke-direct {v3, v0}, Lorg/mortbay/util/Utf8StringBuffer;-><init>(I)V

    .line 642
    .restart local v3    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    invoke-virtual {v3}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    add-int v13, p1, v7

    move/from16 v0, p1

    invoke-virtual {p0, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    :cond_7
    :goto_2
    const/16 v12, 0x25

    if-ne v5, v12, :cond_a

    add-int/lit8 v12, v7, 0x2

    move/from16 v0, p2

    if-ge v12, v0, :cond_a

    .line 649
    add-int v12, p1, v7

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x10

    :try_start_0
    invoke-static {p0, v12, v13, v14}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v12

    int-to-byte v1, v12

    .line 650
    .local v1, "b":B
    invoke-virtual {v3, v1}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    add-int/lit8 v7, v7, 0x3

    .line 660
    .end local v1    # "b":B
    :cond_8
    move/from16 v0, p2

    if-ge v7, v0, :cond_7

    .line 661
    add-int v12, p1, v7

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    .line 653
    :catch_0
    move-exception v11

    .line 655
    .local v11, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x25

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 656
    :goto_3
    add-int/lit8 v7, v7, 0x1

    add-int v12, v7, p1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .local v10, "next":C
    const/16 v12, 0x25

    if-eq v10, v12, :cond_8

    .line 657
    invoke-virtual {v3}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x2b

    if-ne v10, v13, :cond_9

    const/16 v10, 0x20

    .end local v10    # "next":C
    :cond_9
    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 663
    .end local v11    # "nfe":Ljava/lang/NumberFormatException;
    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 665
    :cond_b
    if-eqz v3, :cond_2

    .line 666
    invoke-virtual {v3}, Lorg/mortbay/util/Utf8StringBuffer;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 669
    .end local v5    # "c":C
    :cond_c
    if-nez v3, :cond_f

    .line 671
    if-nez p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_e

    .line 772
    .end local v3    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    .end local p0    # "encoded":Ljava/lang/String;
    :cond_d
    :goto_4
    return-object p0

    .line 673
    .restart local v3    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    .restart local p0    # "encoded":Ljava/lang/String;
    :cond_e
    add-int v12, p1, p2

    move/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 676
    :cond_f
    invoke-virtual {v3}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 680
    .end local v3    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    .end local v7    # "i":I
    :cond_10
    const/4 v3, 0x0

    .line 684
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    move-object v4, v3

    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .local v4, "buffer":Ljava/lang/StringBuffer;
    :goto_5
    move/from16 v0, p2

    if-ge v7, v0, :cond_1d

    .line 686
    add-int v12, p1, v7

    :try_start_1
    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 687
    .restart local v5    # "c":C
    if-ltz v5, :cond_11

    const/16 v12, 0xff

    if-le v5, v12, :cond_13

    .line 689
    :cond_11
    if-nez v4, :cond_12

    .line 691
    new-instance v3, Ljava/lang/StringBuffer;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    .line 692
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    add-int v12, p1, v7

    add-int/lit8 v12, v12, 0x1

    :try_start_2
    move/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 684
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object v4, v3

    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    goto :goto_5

    .line 695
    :cond_12
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto :goto_6

    .line 697
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_13
    const/16 v12, 0x2b

    if-ne v5, v12, :cond_14

    .line 699
    if-nez v4, :cond_22

    .line 701
    new-instance v3, Ljava/lang/StringBuffer;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 702
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    add-int v12, p1, v7

    :try_start_4
    move/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    :goto_7
    const/16 v12, 0x20

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 774
    :catch_1
    move-exception v6

    .line 776
    .end local v5    # "c":C
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :goto_8
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 707
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v5    # "c":C
    :cond_14
    const/16 v12, 0x25

    if-ne v5, v12, :cond_1b

    add-int/lit8 v12, v7, 0x2

    move/from16 v0, p2

    if-ge v12, v0, :cond_1b

    .line 709
    if-nez v4, :cond_21

    .line 711
    :try_start_5
    new-instance v3, Ljava/lang/StringBuffer;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    .line 712
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    add-int v12, p1, v7

    :try_start_6
    move/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 715
    :goto_9
    move/from16 v0, p2

    new-array v2, v0, [B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1

    .line 716
    .local v2, "ba":[B
    const/4 v8, 0x0

    .local v8, "n":I
    move v9, v8

    .line 717
    .end local v8    # "n":I
    .local v9, "n":I
    :goto_a
    if-ltz v5, :cond_20

    const/16 v12, 0xff

    if-gt v5, v12, :cond_20

    .line 719
    const/16 v12, 0x25

    if-ne v5, v12, :cond_18

    .line 721
    add-int/lit8 v12, v7, 0x2

    move/from16 v0, p2

    if-ge v12, v0, :cond_17

    .line 725
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    add-int v12, p1, v7

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x10

    :try_start_7
    invoke-static {p0, v12, v13, v14}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v2, v9
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    .line 726
    add-int/lit8 v7, v7, 0x3

    .line 752
    :goto_b
    move/from16 v0, p2

    if-lt v7, v0, :cond_1a

    .line 757
    :goto_c
    add-int/lit8 v7, v7, -0x1

    .line 758
    :try_start_8
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-direct {v12, v2, v13, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    .line 728
    :catch_2
    move-exception v11

    .line 730
    .restart local v11    # "nfe":Ljava/lang/NumberFormatException;
    add-int/lit8 v12, v8, -0x1

    const/16 v13, 0x25

    aput-byte v13, v2, v12

    move v9, v8

    .line 731
    .end local v8    # "n":I
    .restart local v9    # "n":I
    :goto_d
    add-int/lit8 v7, v7, 0x1

    add-int v12, v7, p1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .restart local v10    # "next":C
    const/16 v12, 0x25

    if-eq v10, v12, :cond_16

    .line 732
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    const/16 v12, 0x2b

    if-ne v10, v12, :cond_15

    const/16 v10, 0x20

    .end local v10    # "next":C
    :cond_15
    int-to-byte v12, v10

    aput-byte v12, v2, v9

    move v9, v8

    .end local v8    # "n":I
    .restart local v9    # "n":I
    goto :goto_d

    .restart local v10    # "next":C
    :cond_16
    move v8, v9

    .line 733
    .end local v9    # "n":I
    .restart local v8    # "n":I
    goto :goto_b

    .line 737
    .end local v8    # "n":I
    .end local v10    # "next":C
    .end local v11    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v9    # "n":I
    :cond_17
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    const/16 v12, 0x25

    aput-byte v12, v2, v9

    .line 738
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 741
    .end local v8    # "n":I
    .restart local v9    # "n":I
    :cond_18
    const/16 v12, 0x2b

    if-ne v5, v12, :cond_19

    .line 743
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    const/16 v12, 0x20

    aput-byte v12, v2, v9

    .line 744
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 748
    .end local v8    # "n":I
    .restart local v9    # "n":I
    :cond_19
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "n":I
    .restart local v8    # "n":I
    int-to-byte v12, v5

    aput-byte v12, v2, v9

    .line 749
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 754
    :cond_1a
    add-int v12, p1, v7

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v5

    move v9, v8

    .end local v8    # "n":I
    .restart local v9    # "n":I
    goto :goto_a

    .line 761
    .end local v2    # "ba":[B
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v9    # "n":I
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_1b
    if-eqz v4, :cond_1c

    .line 762
    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_6

    .line 765
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "c":C
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_1d
    if-nez v4, :cond_1f

    .line 767
    if-nez p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    move/from16 v0, p2

    if-eq v12, v0, :cond_d

    .line 769
    :cond_1e
    add-int v12, p1, p2

    move/from16 v0, p1

    invoke-virtual {p0, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    .line 772
    :cond_1f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object p0

    goto/16 :goto_4

    .line 774
    :catch_3
    move-exception v6

    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_8

    .restart local v2    # "ba":[B
    .restart local v5    # "c":C
    .restart local v9    # "n":I
    :cond_20
    move v8, v9

    .end local v9    # "n":I
    .restart local v8    # "n":I
    goto/16 :goto_c

    .end local v2    # "ba":[B
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v8    # "n":I
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_21
    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_9

    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    :cond_22
    move-object v3, v4

    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    goto/16 :goto_7
.end method

.method public static decodeTo(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;Ljava/lang/String;I)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/mortbay/util/MultiMap;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    if-eqz p2, :cond_0

    const-string v8, "UTF-8"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 504
    :cond_0
    invoke-static {p0, p1, p3}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V

    .line 601
    :goto_0
    return-void

    .line 508
    :cond_1
    sget-object v8, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 510
    invoke-static {p0, p1, p3}, Lorg/mortbay/util/UrlEncoded;->decode88591To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V

    goto :goto_0

    .line 514
    :cond_2
    const-string v8, "UTF-16"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 516
    invoke-static {p0, p1, p3}, Lorg/mortbay/util/UrlEncoded;->decodeUtf16To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V

    goto :goto_0

    .line 521
    :cond_3
    monitor-enter p1

    .line 523
    const/4 v3, 0x0

    .line 524
    .local v3, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 527
    .local v7, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 528
    .local v1, "digit":I
    const/4 v2, 0x0

    .line 530
    .local v2, "digits":I
    const/4 v6, 0x0

    .line 531
    .local v6, "totalLength":I
    :try_start_0
    new-instance v4, Lorg/mortbay/util/ByteArrayOutputStream2;

    invoke-direct {v4}, Lorg/mortbay/util/ByteArrayOutputStream2;-><init>()V

    .line 533
    .local v4, "output":Lorg/mortbay/util/ByteArrayOutputStream2;
    const/4 v5, 0x0

    .line 535
    .local v5, "size":I
    :cond_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-lez v0, :cond_c

    .line 537
    int-to-char v8, v0

    sparse-switch v8, :sswitch_data_0

    .line 571
    const/4 v8, 0x2

    if-ne v2, v8, :cond_a

    .line 573
    int-to-byte v8, v0

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v1

    .line 574
    const/4 v2, 0x1

    .line 586
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 587
    if-ltz p3, :cond_4

    if-le v6, p3, :cond_4

    .line 588
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Form too large"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 600
    .end local v0    # "c":I
    .end local v4    # "output":Lorg/mortbay/util/ByteArrayOutputStream2;
    .end local v5    # "size":I
    :catchall_0
    move-exception v8

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 540
    .restart local v0    # "c":I
    .restart local v4    # "output":Lorg/mortbay/util/ByteArrayOutputStream2;
    .restart local v5    # "size":I
    :sswitch_0
    :try_start_1
    invoke-virtual {v4}, Lorg/mortbay/util/ByteArrayOutputStream2;->size()I

    move-result v5

    .line 541
    if-nez v5, :cond_6

    const-string v7, ""

    .line 542
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    .line 543
    if-eqz v3, :cond_7

    .line 545
    invoke-virtual {p1, v3, v7}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 551
    :cond_5
    :goto_3
    const/4 v3, 0x0

    .line 552
    const/4 v7, 0x0

    .line 553
    goto :goto_1

    .line 541
    :cond_6
    invoke-virtual {v4, p2}, Lorg/mortbay/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 547
    :cond_7
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 549
    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 555
    :sswitch_1
    if-eqz v3, :cond_8

    .line 557
    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_1

    .line 560
    :cond_8
    invoke-virtual {v4}, Lorg/mortbay/util/ByteArrayOutputStream2;->size()I

    move-result v5

    .line 561
    if-nez v5, :cond_9

    const-string v3, ""

    .line 562
    :goto_4
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    goto :goto_1

    .line 561
    :cond_9
    invoke-virtual {v4, p2}, Lorg/mortbay/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 565
    :sswitch_2
    const/16 v8, 0x20

    invoke-virtual {v4, v8}, Lorg/mortbay/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_1

    .line 568
    :sswitch_3
    const/4 v2, 0x2

    .line 569
    goto :goto_1

    .line 576
    :cond_a
    const/4 v8, 0x1

    if-ne v2, v8, :cond_b

    .line 578
    shl-int/lit8 v8, v1, 0x4

    int-to-byte v9, v0

    invoke-static {v9}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v8}, Lorg/mortbay/util/ByteArrayOutputStream2;->write(I)V

    .line 579
    const/4 v2, 0x0

    goto :goto_1

    .line 582
    :cond_b
    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayOutputStream2;->write(I)V

    goto :goto_1

    .line 591
    :cond_c
    invoke-virtual {v4}, Lorg/mortbay/util/ByteArrayOutputStream2;->size()I

    move-result v5

    .line 592
    if-eqz v3, :cond_f

    .line 594
    if-nez v5, :cond_e

    const-string v7, ""

    .line 595
    :goto_5
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lorg/mortbay/util/ByteArrayOutputStream2;->setCount(I)V

    .line 596
    invoke-virtual {p1, v3, v7}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 600
    :cond_d
    :goto_6
    monitor-exit p1

    goto/16 :goto_0

    .line 594
    :cond_e
    invoke-virtual {v4, p2}, Lorg/mortbay/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 598
    :cond_f
    if-lez v5, :cond_d

    .line 599
    invoke-virtual {v4, p2}, Lorg/mortbay/util/ByteArrayOutputStream2;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "map"    # Lorg/mortbay/util/MultiMap;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    sget-object p2, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 180
    :cond_0
    monitor-enter p1

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 184
    .local v6, "value":Ljava/lang/String;
    const/4 v5, -0x1

    .line 185
    .local v5, "mark":I
    const/4 v1, 0x0

    .line 186
    .local v1, "encoded":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 188
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 186
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :sswitch_0
    sub-int v7, v2, v5

    add-int/lit8 v4, v7, -0x1

    .line 193
    .local v4, "l":I
    if-nez v4, :cond_3

    const-string v6, ""

    .line 195
    :goto_2
    move v5, v2

    .line 196
    const/4 v1, 0x0

    .line 197
    if-eqz v3, :cond_5

    .line 199
    invoke-virtual {p1, v3, v6}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    :cond_2
    :goto_3
    const/4 v3, 0x0

    .line 206
    const/4 v6, 0x0

    .line 207
    goto :goto_1

    .line 193
    :cond_3
    if-eqz v1, :cond_4

    add-int/lit8 v7, v5, 0x1

    invoke-static {p0, v7, v4, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 201
    :cond_5
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 203
    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 237
    .end local v0    # "c":C
    .end local v4    # "l":I
    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 209
    .restart local v0    # "c":C
    :sswitch_1
    if-nez v3, :cond_1

    .line 211
    if-eqz v1, :cond_6

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v2, v5

    add-int/lit8 v8, v8, -0x1

    :try_start_1
    invoke-static {p0, v7, v8, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    :goto_4
    move v5, v2

    .line 213
    const/4 v1, 0x0

    .line 214
    goto :goto_1

    .line 211
    :cond_6
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 216
    :sswitch_2
    const/4 v1, 0x1

    .line 217
    goto :goto_1

    .line 219
    :sswitch_3
    const/4 v1, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "c":C
    :cond_7
    if-eqz v3, :cond_b

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    add-int/lit8 v4, v7, -0x1

    .line 227
    .restart local v4    # "l":I
    if-nez v4, :cond_9

    const-string v6, ""

    .line 228
    :goto_5
    invoke-virtual {p1, v3, v6}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .end local v4    # "l":I
    :cond_8
    :goto_6
    monitor-exit p1

    .line 238
    return-void

    .line 227
    .restart local v4    # "l":I
    :cond_9
    if-eqz v1, :cond_a

    add-int/lit8 v7, v5, 0x1

    invoke-static {p0, v7, v4, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 230
    .end local v4    # "l":I
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 232
    if-eqz v1, :cond_c

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {p0, v7, v8, p2}, Lorg/mortbay/util/UrlEncoded;->decodeString(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    :goto_7
    const-string v7, ""

    invoke-virtual {p1, v3, v7}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 232
    :cond_c
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_7

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf16To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/mortbay/util/MultiMap;
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v5, "UTF-16"

    invoke-direct {v2, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 483
    .local v2, "input":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 486
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 487
    .local v3, "length":I
    if-gez p2, :cond_0

    .line 488
    const p2, 0x7fffffff

    .line 489
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .local v1, "c":I
    if-lez v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "length":I
    .local v4, "length":I
    if-ge v3, p2, :cond_1

    .line 490
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    .end local v4    # "length":I
    .restart local v3    # "length":I
    goto :goto_0

    .end local v3    # "length":I
    .restart local v4    # "length":I
    :cond_1
    move v3, v4

    .line 491
    .end local v4    # "length":I
    .restart local v3    # "length":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {v5, p1, v6}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public static decodeUtf8To(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;I)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "map"    # Lorg/mortbay/util/MultiMap;
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    monitor-enter p1

    .line 410
    :try_start_0
    new-instance v1, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v1}, Lorg/mortbay/util/Utf8StringBuffer;-><init>()V

    .line 411
    .local v1, "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    const/4 v4, 0x0

    .line 412
    .local v4, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 417
    .local v6, "value":Ljava/lang/String;
    const/4 v5, 0x0

    .line 418
    .local v5, "totalLength":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "b":I
    if-ltz v0, :cond_6

    .line 420
    int-to-char v7, v0

    sparse-switch v7, :sswitch_data_0

    .line 459
    int-to-byte v7, v0

    invoke-virtual {v1, v7}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    .line 462
    :cond_1
    :goto_0
    if-ltz p2, :cond_0

    add-int/lit8 v5, v5, 0x1

    if-le v5, p2, :cond_0

    .line 463
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Form too large"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 476
    .end local v0    # "b":I
    .end local v1    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "totalLength":I
    .end local v6    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 423
    .restart local v0    # "b":I
    .restart local v1    # "buffer":Lorg/mortbay/util/Utf8StringBuffer;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "totalLength":I
    .restart local v6    # "value":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_3

    const-string v6, ""

    .line 424
    :goto_1
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 425
    if-eqz v4, :cond_4

    .line 427
    invoke-virtual {p1, v4, v6}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    :cond_2
    :goto_2
    const/4 v4, 0x0

    .line 434
    const/4 v6, 0x0

    .line 435
    goto :goto_0

    .line 423
    :cond_3
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 429
    :cond_4
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 431
    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 438
    :sswitch_1
    if-eqz v4, :cond_5

    .line 440
    int-to-byte v7, v0

    invoke-virtual {v1, v7}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_0

    .line 443
    :cond_5
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    goto :goto_0

    .line 448
    :sswitch_2
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_0

    .line 452
    :sswitch_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 453
    .local v2, "dh":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 454
    .local v3, "dl":I
    if-ltz v2, :cond_1

    if-ltz v3, :cond_1

    .line 456
    int-to-byte v7, v2

    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    int-to-byte v8, v3

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-virtual {v1, v7}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_0

    .line 466
    .end local v2    # "dh":I
    .end local v3    # "dl":I
    :cond_6
    if-eqz v4, :cond_9

    .line 468
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_8

    const-string v6, ""

    .line 469
    :goto_3
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 470
    invoke-virtual {p1, v4, v6}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 476
    :cond_7
    :goto_4
    monitor-exit p1

    .line 477
    return-void

    .line 468
    :cond_8
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 472
    :cond_9
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 474
    invoke-virtual {v1}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeUtf8To([BIILorg/mortbay/util/MultiMap;)V
    .locals 1
    .param p0, "raw"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "map"    # Lorg/mortbay/util/MultiMap;

    .prologue
    .line 246
    new-instance v0, Lorg/mortbay/util/Utf8StringBuffer;

    invoke-direct {v0}, Lorg/mortbay/util/Utf8StringBuffer;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mortbay/util/UrlEncoded;->decodeUtf8To([BIILorg/mortbay/util/MultiMap;Lorg/mortbay/util/Utf8StringBuffer;)V

    .line 247
    return-void
.end method

.method public static decodeUtf8To([BIILorg/mortbay/util/MultiMap;Lorg/mortbay/util/Utf8StringBuffer;)V
    .locals 7
    .param p0, "raw"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "map"    # Lorg/mortbay/util/MultiMap;
    .param p4, "buffer"    # Lorg/mortbay/util/Utf8StringBuffer;

    .prologue
    .line 255
    monitor-enter p3

    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 261
    .local v4, "value":Ljava/lang/String;
    add-int v1, p1, p2

    .line 262
    .local v1, "end":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 264
    :try_start_0
    aget-byte v0, p0, v2

    .line 265
    .local v0, "b":B
    and-int/lit16 v5, v0, 0xff

    int-to-char v5, v5

    sparse-switch v5, :sswitch_data_0

    .line 301
    invoke-virtual {p4, v0}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    .line 262
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :sswitch_0
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_2

    const-string v4, ""

    .line 269
    :goto_2
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 270
    if-eqz v3, :cond_3

    .line 272
    invoke-virtual {p3, v3, v4}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    :cond_1
    :goto_3
    const/4 v3, 0x0

    .line 279
    const/4 v4, 0x0

    .line 280
    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 274
    :cond_3
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 276
    const-string v5, ""

    invoke-virtual {p3, v4, v5}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 316
    .end local v0    # "b":B
    :catchall_0
    move-exception v5

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 283
    .restart local v0    # "b":B
    :sswitch_1
    if-eqz v3, :cond_4

    .line 285
    :try_start_1
    invoke-virtual {p4, v0}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_1

    .line 288
    :cond_4
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    goto :goto_1

    .line 293
    :sswitch_2
    const/16 v5, 0x20

    invoke-virtual {p4, v5}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_1

    .line 297
    :sswitch_3
    add-int/lit8 v5, v2, 0x2

    if-ge v5, v1, :cond_0

    .line 298
    add-int/lit8 v2, v2, 0x1

    aget-byte v5, p0, v2

    invoke-static {v5}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-byte v6, p0, v2

    invoke-static {v6}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {p4, v5}, Lorg/mortbay/util/Utf8StringBuffer;->append(B)V

    goto :goto_1

    .line 306
    .end local v0    # "b":B
    :cond_5
    if-eqz v3, :cond_8

    .line 308
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_7

    const-string v4, ""

    .line 309
    :goto_4
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->reset()V

    .line 310
    invoke-virtual {p3, v3, v4}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    :cond_6
    :goto_5
    monitor-exit p3

    .line 317
    return-void

    .line 308
    :cond_7
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 312
    :cond_8
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 314
    invoke-virtual {p4}, Lorg/mortbay/util/Utf8StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p3, v5, v6}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x26 -> :sswitch_0
        0x2b -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static encode(Lorg/mortbay/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "map"    # Lorg/mortbay/util/MultiMap;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "equalsForNullValue"    # Z

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    sget-object p1, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 121
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v9, 0x80

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 122
    .local v5, "result":Ljava/lang/StringBuffer;
    monitor-enter v5

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 125
    .local v2, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 127
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 131
    .local v4, "list":Ljava/lang/Object;
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v6

    .line 133
    .local v6, "s":I
    if-nez v6, :cond_3

    .line 135
    invoke-static {v3, p1}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    if-eqz p2, :cond_2

    .line 137
    const/16 v9, 0x3d

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 164
    const/16 v9, 0x26

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 167
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/lang/Object;
    .end local v6    # "s":I
    :catchall_0
    move-exception v9

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 141
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    .restart local v2    # "iter":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "list":Ljava/lang/Object;
    .restart local v6    # "s":I
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 143
    if-lez v1, :cond_4

    .line 144
    const/16 v9, 0x26

    :try_start_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    :cond_4
    invoke-static {v4, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 146
    .local v8, "val":Ljava/lang/Object;
    invoke-static {v3, p1}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    if-eqz v8, :cond_7

    .line 150
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 153
    const/16 v9, 0x3d

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    invoke-static {v7, p1}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    .restart local v7    # "str":Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_5

    .line 157
    const/16 v9, 0x3d

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 159
    .end local v7    # "str":Ljava/lang/String;
    :cond_7
    if-eqz p2, :cond_5

    .line 160
    const/16 v9, 0x3d

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 166
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "list":Ljava/lang/Object;
    .end local v6    # "s":I
    .end local v8    # "val":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v9
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 789
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/mortbay/util/UrlEncoded;->encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x0

    .line 799
    if-nez p1, :cond_0

    .line 800
    sget-object p1, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    .line 801
    :cond_0
    const/4 v1, 0x0

    .line 804
    .local v1, "bytes":[B
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 812
    :goto_0
    array-length v5, v1

    .line 813
    .local v5, "len":I
    array-length v10, v1

    mul-int/lit8 v10, v10, 0x3

    new-array v3, v10, [B

    .line 814
    .local v3, "encoded":[B
    const/4 v6, 0x0

    .line 815
    .local v6, "n":I
    const/4 v9, 0x1

    .line 817
    .local v9, "noEncode":Z
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "n":I
    .local v7, "n":I
    :goto_1
    if-ge v4, v5, :cond_8

    .line 819
    aget-byte v0, v1, v4

    .line 821
    .local v0, "b":B
    const/16 v10, 0x20

    if-ne v0, v10, :cond_1

    .line 823
    const/4 v9, 0x0

    .line 824
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    const/16 v10, 0x2b

    aput-byte v10, v3, v7

    .line 817
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "n":I
    .restart local v7    # "n":I
    goto :goto_1

    .line 806
    .end local v0    # "b":B
    .end local v3    # "encoded":[B
    .end local v4    # "i":I
    .end local v5    # "len":I
    .end local v7    # "n":I
    .end local v9    # "noEncode":Z
    :catch_0
    move-exception v2

    .line 809
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 826
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "b":B
    .restart local v3    # "encoded":[B
    .restart local v4    # "i":I
    .restart local v5    # "len":I
    .restart local v7    # "n":I
    .restart local v9    # "noEncode":Z
    :cond_1
    const/16 v10, 0x61

    if-lt v0, v10, :cond_2

    const/16 v10, 0x7a

    if-le v0, v10, :cond_4

    :cond_2
    const/16 v10, 0x41

    if-lt v0, v10, :cond_3

    const/16 v10, 0x5a

    if-le v0, v10, :cond_4

    :cond_3
    const/16 v10, 0x30

    if-lt v0, v10, :cond_5

    const/16 v10, 0x39

    if-gt v0, v10, :cond_5

    .line 830
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    aput-byte v0, v3, v7

    goto :goto_2

    .line 834
    .end local v6    # "n":I
    .restart local v7    # "n":I
    :cond_5
    const/4 v9, 0x0

    .line 835
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    const/16 v10, 0x25

    aput-byte v10, v3, v7

    .line 836
    and-int/lit16 v10, v0, 0xf0

    shr-int/lit8 v10, v10, 0x4

    int-to-byte v8, v10

    .line 837
    .local v8, "nibble":B
    if-lt v8, v12, :cond_6

    .line 838
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .restart local v7    # "n":I
    add-int/lit8 v10, v8, 0x41

    add-int/lit8 v10, v10, -0xa

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    .line 841
    :goto_3
    and-int/lit8 v10, v0, 0xf

    int-to-byte v8, v10

    .line 842
    if-lt v8, v12, :cond_7

    .line 843
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    add-int/lit8 v10, v8, 0x41

    add-int/lit8 v10, v10, -0xa

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    goto :goto_2

    .line 840
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "n":I
    .restart local v7    # "n":I
    add-int/lit8 v10, v8, 0x30

    int-to-byte v10, v10

    aput-byte v10, v3, v6

    goto :goto_3

    .line 845
    :cond_7
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "n":I
    .restart local v6    # "n":I
    add-int/lit8 v10, v8, 0x30

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    goto :goto_2

    .line 849
    .end local v0    # "b":B
    .end local v6    # "n":I
    .end local v8    # "nibble":B
    .restart local v7    # "n":I
    :cond_8
    if-eqz v9, :cond_9

    .line 859
    .end local p0    # "string":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 854
    .restart local p0    # "string":Ljava/lang/String;
    :cond_9
    :try_start_1
    new-instance p0, Ljava/lang/String;

    .end local p0    # "string":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-direct {p0, v3, v10, v7, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 856
    :catch_1
    move-exception v2

    .line 859
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v11, v7}, Ljava/lang/String;-><init>([BII)V

    goto :goto_4
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 869
    new-instance v0, Lorg/mortbay/util/UrlEncoded;

    invoke-direct {v0, p0}, Lorg/mortbay/util/UrlEncoded;-><init>(Lorg/mortbay/util/UrlEncoded;)V

    return-object v0
.end method

.method public decode(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1, p0, p2}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lorg/mortbay/util/UrlEncoded;->ENCODING:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/mortbay/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/util/UrlEncoded;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "equalsForNullValue"    # Z

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/mortbay/util/UrlEncoded;->encode(Lorg/mortbay/util/MultiMap;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
