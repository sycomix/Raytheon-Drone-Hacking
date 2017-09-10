.class Lorg/mortbay/util/StringMap$Node;
.super Ljava/lang/Object;
.source "StringMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field _char:[C

.field _children:[Lorg/mortbay/util/StringMap$Node;

.field _key:Ljava/lang/String;

.field _next:Lorg/mortbay/util/StringMap$Node;

.field _ochar:[C

.field _value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;I)V
    .locals 5
    .param p1, "ignoreCase"    # Z
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "offset"    # I

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, v4, p3

    .line 557
    .local v2, "l":I
    new-array v4, v2, [C

    iput-object v4, p0, Lorg/mortbay/util/StringMap$Node;->_char:[C

    .line 558
    new-array v4, v2, [C

    iput-object v4, p0, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    .line 559
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 561
    add-int v4, p3, v1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 562
    .local v0, "c":C
    iget-object v4, p0, Lorg/mortbay/util/StringMap$Node;->_char:[C

    aput-char v0, v4, v1

    .line 563
    if-eqz p1, :cond_1

    .line 565
    move v3, v0

    .line 566
    .local v3, "o":C
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 567
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 570
    :cond_0
    :goto_1
    iget-object v4, p0, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    aput-char v3, v4, v1

    .line 559
    .end local v3    # "o":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    .restart local v3    # "o":C
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 569
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    goto :goto_1

    .line 573
    .end local v0    # "c":C
    .end local v3    # "o":C
    :cond_3
    return-void
.end method

.method private toString(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 626
    const-string v1, "{["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_char:[C

    if-nez v1, :cond_1

    .line 628
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 632
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 633
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 635
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 636
    const/16 v1, 0x5d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 637
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    if-eqz v1, :cond_3

    .line 639
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 641
    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 642
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 643
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    aget-object v1, v1, v0

    invoke-direct {v1, p1}, Lorg/mortbay/util/StringMap$Node;->toString(Ljava/lang/StringBuffer;)V

    .line 639
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_char:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 631
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_char:[C

    aget-char v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 645
    :cond_2
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 648
    .end local v0    # "i":I
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 649
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    if-eqz v1, :cond_4

    .line 651
    const-string v1, ",\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    iget-object v1, p0, Lorg/mortbay/util/StringMap$Node;->_next:Lorg/mortbay/util/StringMap$Node;

    invoke-direct {v1, p1}, Lorg/mortbay/util/StringMap$Node;->toString(Ljava/lang/StringBuffer;)V

    .line 654
    :cond_4
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 613
    iget-object v0, p0, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    .local v0, "old":Ljava/lang/Object;
    iput-object p1, p0, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method split(Lorg/mortbay/util/StringMap;I)Lorg/mortbay/util/StringMap$Node;
    .locals 7
    .param p1, "map"    # Lorg/mortbay/util/StringMap;
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 577
    new-instance v1, Lorg/mortbay/util/StringMap$Node;

    invoke-direct {v1}, Lorg/mortbay/util/StringMap$Node;-><init>()V

    .line 578
    .local v1, "split":Lorg/mortbay/util/StringMap$Node;
    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_char:[C

    array-length v3, v3

    sub-int v0, v3, p2

    .line 580
    .local v0, "sl":I
    iget-object v2, p0, Lorg/mortbay/util/StringMap$Node;->_char:[C

    .line 581
    .local v2, "tmp":[C
    new-array v3, p2, [C

    iput-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_char:[C

    .line 582
    new-array v3, v0, [C

    iput-object v3, v1, Lorg/mortbay/util/StringMap$Node;->_char:[C

    .line 583
    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_char:[C

    invoke-static {v2, v6, v3, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iget-object v3, v1, Lorg/mortbay/util/StringMap$Node;->_char:[C

    invoke-static {v2, p2, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 586
    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    if-eqz v3, :cond_0

    .line 588
    iget-object v2, p0, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    .line 589
    new-array v3, p2, [C

    iput-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    .line 590
    new-array v3, v0, [C

    iput-object v3, v1, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    .line 591
    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    invoke-static {v2, v6, v3, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 592
    iget-object v3, v1, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    invoke-static {v2, p2, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    :cond_0
    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    iput-object v3, v1, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    .line 596
    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    iput-object v3, v1, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 597
    iput-object v4, p0, Lorg/mortbay/util/StringMap$Node;->_key:Ljava/lang/String;

    .line 598
    iput-object v4, p0, Lorg/mortbay/util/StringMap$Node;->_value:Ljava/lang/Object;

    .line 599
    iget-object v3, p1, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    iget-object v3, p1, Lorg/mortbay/util/StringMap;->_entrySet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_1
    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iput-object v3, v1, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    .line 603
    iget v3, p1, Lorg/mortbay/util/StringMap;->_width:I

    new-array v3, v3, [Lorg/mortbay/util/StringMap$Node;

    iput-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    .line 604
    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iget-object v4, v1, Lorg/mortbay/util/StringMap$Node;->_char:[C

    aget-char v4, v4, v6

    iget v5, p1, Lorg/mortbay/util/StringMap;->_width:I

    rem-int/2addr v4, v5

    aput-object v1, v3, v4

    .line 605
    iget-object v3, v1, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iget-object v4, v1, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    aget-char v4, v4, v6

    iget v5, p1, Lorg/mortbay/util/StringMap;->_width:I

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    if-eq v3, v1, :cond_2

    .line 606
    iget-object v3, p0, Lorg/mortbay/util/StringMap$Node;->_children:[Lorg/mortbay/util/StringMap$Node;

    iget-object v4, v1, Lorg/mortbay/util/StringMap$Node;->_ochar:[C

    aget-char v4, v4, v6

    iget v5, p1, Lorg/mortbay/util/StringMap;->_width:I

    rem-int/2addr v4, v5

    aput-object v1, v3, v4

    .line 608
    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 617
    .local v0, "buf":Ljava/lang/StringBuffer;
    monitor-enter v0

    .line 619
    :try_start_0
    invoke-direct {p0, v0}, Lorg/mortbay/util/StringMap$Node;->toString(Ljava/lang/StringBuffer;)V

    .line 620
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 620
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
