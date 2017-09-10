.class public Lorg/mortbay/util/URIUtil;
.super Ljava/lang/Object;
.source "URIUtil.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_COLON:Ljava/lang/String; = "https:"

.field public static final HTTP_COLON:Ljava/lang/String; = "http:"

.field public static final SLASH:Ljava/lang/String; = "/"

.field public static final __CHARSET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "org.mortbay.util.URI.charset"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "p1"    # Ljava/lang/String;
    .param p1, "p2"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2f

    .line 314
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 316
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    .line 355
    .end local p0    # "p1":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "p1":Ljava/lang/String;
    :cond_2
    move-object p0, p1

    .line 318
    goto :goto_0

    .line 320
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 324
    .local v1, "split":I
    if-gez v1, :cond_4

    .line 325
    const/16 v2, 0x3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 326
    :cond_4
    if-nez v1, :cond_5

    .line 327
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 328
    :cond_5
    if-gez v1, :cond_6

    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 331
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 332
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_8

    .line 336
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 338
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 339
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 342
    :cond_7
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 346
    :cond_8
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 347
    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 350
    :cond_9
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 351
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static canonicalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/16 v10, 0x2f

    const/16 v9, 0x2e

    .line 395
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 518
    .end local p0    # "path":Ljava/lang/String;
    .local v0, "buf":Ljava/lang/StringBuffer;
    .local v1, "delEnd":I
    .local v2, "delStart":I
    .local v3, "end":I
    .local v4, "skip":I
    .local v6, "start":I
    :cond_0
    :goto_0
    return-object p0

    .line 398
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "delEnd":I
    .end local v2    # "delStart":I
    .end local v3    # "end":I
    .end local v4    # "skip":I
    .end local v6    # "start":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 399
    .restart local v3    # "end":I
    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 402
    .local v5, "start":I
    :goto_1
    if-lez v3, :cond_3

    .line 404
    sub-int v8, v3, v5

    packed-switch v8, :pswitch_data_0

    .line 416
    :cond_2
    :goto_2
    move v3, v5

    .line 417
    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    goto :goto_1

    .line 407
    :pswitch_0
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    .line 421
    :cond_3
    if-ge v5, v3, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 425
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 426
    .restart local v2    # "delStart":I
    const/4 v1, -0x1

    .line 427
    .restart local v1    # "delEnd":I
    const/4 v4, 0x0

    .restart local v4    # "skip":I
    move v6, v5

    .line 429
    .end local v5    # "start":I
    .restart local v6    # "start":I
    :goto_3
    if-lez v3, :cond_12

    .line 431
    sub-int v8, v3, v6

    packed-switch v8, :pswitch_data_1

    .line 488
    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 490
    if-ltz v6, :cond_11

    move v2, v6

    .line 491
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 492
    add-int/lit8 v2, v2, 0x1

    .line 497
    :cond_4
    :goto_5
    if-gtz v4, :cond_5

    if-ltz v2, :cond_5

    if-lt v1, v2, :cond_5

    .line 499
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 500
    const/4 v1, -0x1

    move v2, v1

    .line 501
    if-lez v4, :cond_5

    .line 502
    move v1, v3

    .line 505
    :cond_5
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "start":I
    .restart local v5    # "start":I
    move v3, v6

    .line 506
    :goto_6
    if-ltz v5, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_15

    .line 507
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 411
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "delEnd":I
    .end local v2    # "delStart":I
    .end local v4    # "skip":I
    :pswitch_1
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_2

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_3

    goto :goto_2

    .line 434
    .end local v5    # "start":I
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v1    # "delEnd":I
    .restart local v2    # "delStart":I
    .restart local v4    # "skip":I
    .restart local v6    # "start":I
    :pswitch_2
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_7

    .line 436
    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 438
    if-ltz v6, :cond_6

    move v2, v6

    .line 439
    :goto_7
    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v2, v7

    .line 438
    goto :goto_7

    .line 445
    :cond_7
    if-gez v6, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-le v8, v11, :cond_8

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_4

    .line 448
    :cond_8
    if-gez v1, :cond_9

    .line 449
    move v1, v3

    .line 450
    :cond_9
    move v2, v6

    .line 451
    if-ltz v2, :cond_a

    if-nez v2, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_b

    .line 453
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 458
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ne v3, v8, :cond_c

    .line 459
    add-int/lit8 v2, v2, 0x1

    .line 461
    :cond_c
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "start":I
    .restart local v5    # "start":I
    move v3, v6

    .line 462
    :goto_8
    if-ltz v5, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_15

    .line 463
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 467
    .end local v5    # "start":I
    .restart local v6    # "start":I
    :pswitch_3
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_d

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_f

    .line 469
    :cond_d
    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_4

    .line 470
    if-ltz v6, :cond_e

    move v2, v6

    .line 471
    :goto_9
    if-lez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ne v1, v8, :cond_4

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_4

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_e
    move v2, v7

    .line 470
    goto :goto_9

    .line 477
    :cond_f
    move v2, v6

    .line 478
    if-gez v1, :cond_10

    .line 479
    move v1, v3

    .line 481
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 482
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "start":I
    .restart local v5    # "start":I
    move v3, v6

    .line 483
    :goto_a
    if-ltz v5, :cond_15

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-eq v8, v10, :cond_15

    .line 484
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .end local v5    # "start":I
    .restart local v6    # "start":I
    :cond_11
    move v2, v7

    .line 490
    goto/16 :goto_4

    .line 511
    :cond_12
    if-lez v4, :cond_13

    .line 512
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 515
    :cond_13
    if-ltz v1, :cond_14

    .line 516
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 518
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .end local v6    # "start":I
    .restart local v5    # "start":I
    :cond_15
    move v6, v5

    .end local v5    # "start":I
    .restart local v6    # "start":I
    goto/16 :goto_3

    .line 404
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 431
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static compactPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    .line 529
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 582
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    :sswitch_0
    return-object p0

    .line 532
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    .line 533
    .local v5, "state":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 534
    .local v3, "end":I
    const/4 v4, 0x0

    .line 537
    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 539
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 540
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 550
    const/4 v5, 0x0

    .line 552
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 553
    goto :goto_1

    .line 545
    :sswitch_1
    add-int/lit8 v5, v5, 0x1

    .line 546
    if-ne v5, v8, :cond_2

    .line 555
    .end local v1    # "c":C
    :cond_3
    if-lt v5, v8, :cond_0

    .line 558
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 559
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 560
    .local v2, "chars":[C
    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move v6, v5

    .line 563
    .end local v5    # "state":I
    .local v6, "state":I
    :goto_2
    if-ge v4, v3, :cond_5

    .line 565
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 566
    .restart local v1    # "c":C
    sparse-switch v1, :sswitch_data_1

    .line 576
    const/4 v5, 0x0

    .line 577
    .end local v6    # "state":I
    .restart local v5    # "state":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 579
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .line 580
    .end local v5    # "state":I
    .restart local v6    # "state":I
    goto :goto_2

    .line 569
    :sswitch_2
    sub-int v7, v3, v4

    invoke-virtual {v0, v2, v4, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 582
    .end local v1    # "c":C
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 572
    .restart local v1    # "c":C
    :sswitch_3
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "state":I
    .restart local v5    # "state":I
    if-nez v6, :cond_4

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x2f -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 566
    :sswitch_data_1
    .sparse-switch
        0x2f -> :sswitch_3
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method public static decodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x0

    .line 192
    if-nez p0, :cond_1

    .line 193
    const/4 p0, 0x0

    .line 260
    .end local p0    # "path":Ljava/lang/String;
    .local v1, "b":I
    .local v2, "bytes":[B
    .local v4, "chars":[C
    .local v6, "i":I
    .local v7, "len":I
    .local v8, "n":I
    :cond_0
    :goto_0
    return-object p0

    .line 194
    .end local v1    # "b":I
    .end local v2    # "bytes":[B
    .end local v4    # "chars":[C
    .end local v6    # "i":I
    .end local v7    # "len":I
    .end local v8    # "n":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 195
    .restart local v4    # "chars":[C
    const/4 v8, 0x0

    .line 196
    .restart local v8    # "n":I
    const/4 v2, 0x0

    .line 197
    .restart local v2    # "bytes":[B
    const/4 v0, 0x0

    .line 199
    .local v0, "b":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 201
    .restart local v7    # "len":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v1, v0

    .end local v0    # "b":I
    .restart local v1    # "b":I
    :goto_1
    if-ge v6, v7, :cond_5

    .line 203
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 205
    .local v3, "c":C
    const/16 v11, 0x25

    if-ne v3, v11, :cond_3

    add-int/lit8 v11, v6, 0x2

    if-ge v11, v7, :cond_3

    .line 207
    if-nez v4, :cond_2

    .line 209
    new-array v4, v7, [C

    .line 210
    new-array v2, v7, [B

    .line 211
    invoke-virtual {p0, v14, v6, v4, v14}, Ljava/lang/String;->getChars(II[CI)V

    .line 213
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    add-int/lit8 v11, v6, 0x1

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-static {p0, v11, v12, v13}, Lorg/mortbay/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v2, v1

    .line 214
    add-int/lit8 v6, v6, 0x2

    .line 201
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v1, v0

    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_1

    .line 217
    :cond_3
    if-nez v2, :cond_4

    .line 219
    add-int/lit8 v8, v8, 0x1

    move v0, v1

    .line 220
    .end local v1    # "b":I
    .restart local v0    # "b":I
    goto :goto_2

    .line 223
    .end local v0    # "b":I
    .restart local v1    # "b":I
    :cond_4
    if-lez v1, :cond_7

    .line 228
    :try_start_0
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v10, v2, v11, v1, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v10, "s":Ljava/lang/String;
    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v14, v11, v4, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 235
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 236
    const/4 v0, 0x0

    .line 239
    .end local v1    # "b":I
    .end local v10    # "s":Ljava/lang/String;
    .restart local v0    # "b":I
    :goto_4
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "n":I
    .local v9, "n":I
    aput-char v3, v4, v8

    move v8, v9

    .end local v9    # "n":I
    .restart local v8    # "n":I
    goto :goto_2

    .line 230
    .end local v0    # "b":I
    .restart local v1    # "b":I
    :catch_0
    move-exception v5

    .line 232
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v10    # "s":Ljava/lang/String;
    goto :goto_3

    .line 242
    .end local v3    # "c":C
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_0

    .line 245
    if-lez v1, :cond_6

    .line 250
    :try_start_1
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v10, v2, v11, v1, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    .restart local v10    # "s":Ljava/lang/String;
    :goto_5
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v14, v11, v4, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 257
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 260
    .end local v10    # "s":Ljava/lang/String;
    :cond_6
    new-instance p0, Ljava/lang/String;

    .end local p0    # "path":Ljava/lang/String;
    invoke-direct {p0, v4, v14, v8}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 252
    .restart local p0    # "path":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 254
    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .restart local v10    # "s":Ljava/lang/String;
    goto :goto_5

    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "s":Ljava/lang/String;
    .restart local v3    # "c":C
    :cond_7
    move v0, v1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    goto :goto_4
.end method

.method public static decodePath([BII)Ljava/lang/String;
    .locals 9
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "bytes":[B
    const/4 v4, 0x0

    .line 273
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v5, v4

    .end local v4    # "n":I
    .local v5, "n":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 275
    add-int v6, v2, p1

    aget-byte v0, p0, v6

    .line 277
    .local v0, "b":B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_1

    add-int/lit8 v6, v2, 0x2

    if-ge v6, p2, :cond_1

    .line 279
    add-int v6, v2, p1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x10

    invoke-static {p0, v6, v7, v8}, Lorg/mortbay/util/TypeUtil;->parseInt([BIII)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v0, v6

    .line 280
    add-int/lit8 v2, v2, 0x2

    .line 288
    :cond_0
    if-nez v1, :cond_2

    .line 290
    new-array v1, p2, [B

    .line 291
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 292
    add-int v6, v3, p1

    aget-byte v6, p0, v6

    aput-byte v6, v1, v3

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 282
    .end local v3    # "j":I
    :cond_1
    if-nez v1, :cond_0

    .line 284
    add-int/lit8 v4, v5, 0x1

    .line 273
    .end local v5    # "n":I
    .restart local v4    # "n":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "n":I
    .restart local v5    # "n":I
    goto :goto_0

    .line 295
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "n":I
    .restart local v4    # "n":I
    aput-byte v0, v1, v5

    goto :goto_2

    .line 298
    .end local v0    # "b":B
    .end local v4    # "n":I
    .restart local v5    # "n":I
    :cond_3
    if-nez v1, :cond_4

    .line 299
    sget-object v6, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {p0, p1, p2, v6}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    :goto_3
    return-object v6

    :cond_4
    const/4 v6, 0x0

    sget-object v7, Lorg/mortbay/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-static {v1, v6, v5, v7}, Lorg/mortbay/util/StringUtil;->toString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 60
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 59
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lorg/mortbay/util/URIUtil;->encodePath(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 60
    .local v0, "buf":Ljava/lang/StringBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static encodePath(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p0, :cond_1

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :sswitch_0
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0    # "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    .end local v0    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    if-nez p0, :cond_1

    .line 93
    const/4 p0, 0x0

    .line 137
    .end local p0    # "buf":Ljava/lang/StringBuffer;
    :goto_1
    return-object p0

    .line 96
    .end local v1    # "i":I
    .restart local p0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    monitor-enter p0

    .line 98
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 101
    .restart local v0    # "c":C
    sparse-switch v0, :sswitch_data_1

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    :sswitch_1
    const-string v2, "%25"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 135
    .end local v0    # "c":C
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 107
    .restart local v0    # "c":C
    :sswitch_2
    :try_start_1
    const-string v2, "%3F"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 110
    :sswitch_3
    const-string v2, "%3B"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 113
    :sswitch_4
    const-string v2, "%23"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 116
    :sswitch_5
    const-string v2, "%22"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 119
    :sswitch_6
    const-string v2, "%27"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 122
    :sswitch_7
    const-string v2, "%3C"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 125
    :sswitch_8
    const-string v2, "%3E"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 128
    :sswitch_9
    const-string v2, "%20"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 135
    .end local v0    # "c":C
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 77
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 101
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_9
        0x22 -> :sswitch_5
        0x23 -> :sswitch_4
        0x25 -> :sswitch_1
        0x27 -> :sswitch_6
        0x3b -> :sswitch_3
        0x3c -> :sswitch_7
        0x3e -> :sswitch_8
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method public static encodeString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 5
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "encode"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x25

    .line 151
    if-nez p0, :cond_3

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 157
    .local v0, "c":C
    if-eq v0, v4, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0    # "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 163
    .end local v0    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    if-nez p0, :cond_3

    .line 164
    const/4 p0, 0x0

    .line 182
    .end local p0    # "buf":Ljava/lang/StringBuffer;
    :goto_1
    return-object p0

    .line 154
    .restart local v0    # "c":C
    .restart local p0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_3
    monitor-enter p0

    .line 169
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 171
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 172
    .restart local v0    # "c":C
    if-eq v0, v4, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    .line 174
    :cond_4
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x10

    invoke-static {p0, v2, v3}, Lorg/mortbay/util/StringUtil;->append(Ljava/lang/StringBuffer;BI)V

    .line 169
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 178
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 180
    .end local v0    # "c":C
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static hasScheme(Ljava/lang/String;)Z
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 592
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 594
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 595
    .local v0, "c":C
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_0

    .line 596
    const/4 v2, 0x1

    .line 606
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 597
    .restart local v0    # "c":C
    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7a

    if-le v0, v2, :cond_5

    :cond_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_5

    :cond_2
    if-lez v1, :cond_4

    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    const/16 v2, 0x39

    if-le v0, v2, :cond_5

    :cond_3
    const/16 v2, 0x2e

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_5

    .line 606
    .end local v0    # "c":C
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 592
    .restart local v0    # "c":C
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "p"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 364
    if-eqz p0, :cond_0

    const-string v2, "/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v1

    .line 366
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 367
    .local v0, "slash":I
    if-ltz v0, :cond_0

    .line 368
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static stripPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 378
    if-nez p0, :cond_1

    .line 379
    const/4 p0, 0x0

    .line 383
    .end local p0    # "path":Ljava/lang/String;
    .local v0, "semi":I
    :cond_0
    :goto_0
    return-object p0

    .line 380
    .end local v0    # "semi":I
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 381
    .restart local v0    # "semi":I
    if-ltz v0, :cond_0

    .line 383
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
