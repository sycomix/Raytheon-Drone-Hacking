.class public Lorg/mortbay/util/QuotedStringTokenizer;
.super Ljava/util/StringTokenizer;
.source "QuotedStringTokenizer.java"


# static fields
.field private static final __delim:Ljava/lang/String; = "\t\n\r"


# instance fields
.field private _delim:Ljava/lang/String;

.field private _double:Z

.field private _hasToken:Z

.field private _i:I

.field private _lastStart:I

.field private _returnDelimiters:Z

.field private _returnQuotes:Z

.field private _single:Z

.field private _string:Ljava/lang/String;

.field private _token:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returnDelimiters"    # Z

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;
    .param p3, "returnDelimiters"    # Z
    .param p4, "returnQuotes"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v0, "\t\n\r"

    iput-object v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    .line 39
    iput-boolean v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnDelimiters:Z

    .line 41
    iput-boolean v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    .line 42
    iput v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_i:I

    .line 43
    iput v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_lastStart:I

    .line 44
    iput-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_double:Z

    .line 45
    iput-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_single:Z

    .line 54
    iput-object p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    .line 55
    if-eqz p2, :cond_0

    .line 56
    iput-object p2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    .line 57
    :cond_0
    iput-boolean p3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnDelimiters:Z

    .line 58
    iput-boolean p4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    .line 60
    iget-object v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t use quotes as delimiters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_3

    const/16 v0, 0x200

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    .line 65
    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 296
    if-nez p0, :cond_0

    .line 297
    const/4 v1, 0x0

    .line 303
    :goto_0
    return-object v1

    .line 298
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 299
    const-string v1, "\"\""

    goto :goto_0

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 302
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;

    .prologue
    .line 266
    if-nez p0, :cond_1

    .line 267
    const/4 p0, 0x0

    .line 283
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 268
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 269
    const-string p0, "\"\""

    goto :goto_0

    .line 272
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 274
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 275
    .local v1, "c":C
    const/16 v3, 0x5c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x22

    if-eq v1, v3, :cond_3

    const/16 v3, 0x27

    if-eq v1, v3, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    .line 277
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 278
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-static {v0, p0}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 272
    .end local v0    # "b":Ljava/lang/StringBuffer;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static quote(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 316
    monitor-enter p0

    .line 318
    const/16 v3, 0x22

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    const/4 v1, 0x0

    .line 320
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 322
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 324
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 325
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :sswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 329
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 330
    const-string v3, "\\\""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    .end local v0    # "c":C
    :cond_0
    :goto_1
    if-nez v1, :cond_2

    .line 368
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    :cond_1
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 407
    monitor-exit p0

    .line 408
    return-void

    .line 333
    .restart local v0    # "c":C
    :sswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 334
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 335
    const-string v3, "\\\\"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 407
    .end local v0    # "c":C
    .end local v1    # "chars":[C
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 338
    .restart local v0    # "c":C
    .restart local v1    # "chars":[C
    .restart local v2    # "i":I
    :sswitch_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 339
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 340
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 343
    :sswitch_3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 344
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 345
    const-string v3, "\\r"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 348
    :sswitch_4
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 349
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 350
    const-string v3, "\\t"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 353
    :sswitch_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 354
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 355
    const-string v3, "\\f"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 358
    :sswitch_6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 359
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 360
    const-string v3, "\\b"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 371
    .end local v0    # "c":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 372
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 374
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 375
    .restart local v0    # "c":C
    sparse-switch v0, :sswitch_data_1

    .line 400
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 372
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 378
    :sswitch_7
    const-string v3, "\\\""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 381
    :sswitch_8
    const-string v3, "\\\\"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 384
    :sswitch_9
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 387
    :sswitch_a
    const-string v3, "\\r"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 390
    :sswitch_b
    const-string v3, "\\t"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 393
    :sswitch_c
    const-string v3, "\\f"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 396
    :sswitch_d
    const-string v3, "\\b"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_4
        0xa -> :sswitch_2
        0xc -> :sswitch_5
        0xd -> :sswitch_3
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 375
    :sswitch_data_1
    .sparse-switch
        0x8 -> :sswitch_d
        0x9 -> :sswitch_b
        0xa -> :sswitch_9
        0xc -> :sswitch_c
        0xd -> :sswitch_a
        0x22 -> :sswitch_7
        0x5c -> :sswitch_8
    .end sparse-switch
.end method

.method public static quoteIfNeeded(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 422
    monitor-enter p0

    .line 424
    const/4 v1, -0x1

    .line 426
    .local v1, "e":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 428
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 429
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    :sswitch_0
    move v1, v2

    .line 444
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 446
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 447
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 446
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 455
    .end local v0    # "c":C
    .end local v3    # "j":I
    :cond_0
    if-gez v1, :cond_1

    .line 457
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    monitor-exit p0

    .line 495
    :goto_2
    return-void

    .line 461
    :cond_1
    move v2, v1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 463
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 464
    .restart local v0    # "c":C
    sparse-switch v0, :sswitch_data_1

    .line 489
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 461
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 467
    :sswitch_1
    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 494
    .end local v0    # "c":C
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 470
    .restart local v0    # "c":C
    :sswitch_2
    :try_start_1
    const-string v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 473
    :sswitch_3
    const-string v4, "\\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 476
    :sswitch_4
    const-string v4, "\\r"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 479
    :sswitch_5
    const-string v4, "\\t"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 482
    :sswitch_6
    const-string v4, "\\f"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 485
    :sswitch_7
    const-string v4, "\\b"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 493
    .end local v0    # "c":C
    :cond_2
    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 494
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 429
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2b -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch

    .line 464
    :sswitch_data_1
    .sparse-switch
        0x8 -> :sswitch_7
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xc -> :sswitch_6
        0xd -> :sswitch_4
        0x22 -> :sswitch_1
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 504
    if-nez p0, :cond_1

    .line 505
    const/4 p0, 0x0

    .line 564
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 506
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 509
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 510
    .local v3, "first":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 511
    .local v6, "last":C
    if-ne v3, v6, :cond_0

    const/16 v7, 0x22

    if-eq v3, v7, :cond_2

    const/16 v7, 0x27

    if-ne v3, v7, :cond_0

    .line 514
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 515
    .local v0, "b":Ljava/lang/StringBuffer;
    monitor-enter v0

    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, "escape":Z
    const/4 v4, 0x1

    .local v4, "i":I
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_5

    .line 520
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 522
    .local v1, "c":C
    if-eqz v2, :cond_3

    .line 524
    const/4 v2, 0x0

    .line 525
    sparse-switch v1, :sswitch_data_0

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    .line 518
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 528
    :sswitch_0
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    .line 529
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 531
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :sswitch_1
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    .line 532
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 534
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :sswitch_2
    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    .line 535
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 537
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :sswitch_3
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    .line 538
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 540
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :sswitch_4
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    .line 541
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 543
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :sswitch_5
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :try_start_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :try_start_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v8

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :try_start_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :try_start_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    invoke-static {v8}, Lorg/mortbay/util/TypeUtil;->convertHexDigit(B)B

    move-result v8

    add-int/2addr v7, v8

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    .line 550
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 555
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_3
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_4

    .line 557
    const/4 v2, 0x1

    move v4, v5

    .line 558
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 561
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 564
    .end local v1    # "c":C
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "s":Ljava/lang/String;
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 565
    :catchall_0
    move-exception v7

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    :catchall_1
    move-exception v7

    goto :goto_3

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_0
        0x72 -> :sswitch_1
        0x74 -> :sswitch_2
        0x75 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public countTokens()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, -0x1

    return v0
.end method

.method public getDouble()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_double:Z

    return v0
.end method

.method public getSingle()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_single:Z

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .locals 10

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x27

    const/16 v7, 0x22

    const/4 v3, 0x1

    .line 92
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    if-eqz v4, :cond_0

    .line 208
    :goto_0
    return v3

    .line 95
    :cond_0
    iget v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_i:I

    iput v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_lastStart:I

    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, "state":I
    const/4 v1, 0x0

    .line 99
    .local v1, "escape":Z
    :cond_1
    :goto_1
    iget v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_i:I

    iget-object v5, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 101
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_string:Ljava/lang/String;

    iget v5, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 103
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 106
    :pswitch_0
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 108
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnDelimiters:Z

    if-eqz v4, :cond_1

    .line 110
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    iput-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    goto :goto_0

    .line 114
    :cond_2
    if-ne v0, v8, :cond_4

    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_single:Z

    if-eqz v4, :cond_4

    .line 116
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_3

    .line 117
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 120
    :cond_4
    if-ne v0, v7, :cond_6

    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_double:Z

    if-eqz v4, :cond_6

    .line 122
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_5

    .line 123
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    .line 128
    :cond_6
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    iput-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    .line 130
    const/4 v2, 0x1

    .line 132
    goto :goto_1

    .line 135
    :pswitch_1
    iput-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    .line 136
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_8

    .line 138
    iget-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnDelimiters:Z

    if-eqz v3, :cond_7

    .line 139
    iget v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_i:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_i:I

    .line 140
    :cond_7
    iget-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    goto :goto_0

    .line 142
    :cond_8
    if-ne v0, v8, :cond_a

    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_single:Z

    if-eqz v4, :cond_a

    .line 144
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_9

    .line 145
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    :cond_9
    const/4 v2, 0x2

    goto :goto_1

    .line 148
    :cond_a
    if-ne v0, v7, :cond_c

    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_double:Z

    if-eqz v4, :cond_c

    .line 150
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_b

    .line 151
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    :cond_b
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 155
    :cond_c
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 160
    :pswitch_2
    iput-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    .line 161
    if-eqz v1, :cond_d

    .line 163
    const/4 v1, 0x0

    .line 164
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 166
    :cond_d
    if-ne v0, v8, :cond_f

    .line 168
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_e

    .line 169
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    :cond_e
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 172
    :cond_f
    if-ne v0, v9, :cond_11

    .line 174
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_10

    .line 175
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 179
    :cond_11
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 184
    :pswitch_3
    iput-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    .line 185
    if-eqz v1, :cond_12

    .line 187
    const/4 v1, 0x0

    .line 188
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 190
    :cond_12
    if-ne v0, v7, :cond_14

    .line 192
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_13

    .line 193
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 196
    :cond_14
    if-ne v0, v9, :cond_16

    .line 198
    iget-boolean v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_returnQuotes:Z

    if-eqz v4, :cond_15

    .line 199
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 200
    :cond_15
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 203
    :cond_16
    iget-object v4, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 208
    .end local v0    # "c":C
    :cond_17
    iget-boolean v3, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    if-nez v1, :cond_1

    .line 216
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 217
    :cond_1
    iget-object v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 219
    iput-boolean v2, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    .line 220
    return-object v0
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 227
    iput-object p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_delim:Ljava/lang/String;

    .line 228
    iget v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_lastStart:I

    iput v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_i:I

    .line 229
    iget-object v0, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_token:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 230
    iput-boolean v1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_hasToken:Z

    .line 231
    invoke-virtual {p0}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDouble(Z)V
    .locals 0
    .param p1, "d"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_double:Z

    .line 584
    return-void
.end method

.method public setSingle(Z)V
    .locals 0
    .param p1, "single"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lorg/mortbay/util/QuotedStringTokenizer;->_single:Z

    .line 602
    return-void
.end method
