.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$1;
    }
.end annotation


# static fields
.field static final BIGGEST_BINOMIALS:[I

.field static final BIGGEST_SIMPLE_BINOMIALS:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FACTORIALS:[J

.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final HALF_POWERS_OF_10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_LOG10_FOR_LEADING_ZEROS:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final POWERS_OF_10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x13

    .line 164
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->MAX_LOG10_FOR_LEADING_ZEROS:[B

    .line 171
    new-array v0, v1, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    .line 196
    new-array v0, v1, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->HALF_POWERS_OF_10:[J

    .line 590
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    .line 653
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    .line 662
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    return-void

    .line 164
    nop

    :array_0
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 171
    :array_1
    .array-data 8
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    .line 196
    :array_2
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    .line 590
    :array_3
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    .line 653
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    .line 662
    :array_5
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .locals 10
    .param p0, "n"    # I
    .param p1, "k"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 621
    const-string v4, "n"

    invoke-static {v4, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 622
    const-string v4, "k"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 623
    if-gt p1, p0, :cond_3

    move v4, v5

    :goto_0
    const-string v7, "k (%s) > n (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 624
    shr-int/lit8 v4, p0, 0x1

    if-le p1, v4, :cond_0

    .line 625
    sub-int p1, p0, p1

    .line 627
    :cond_0
    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    array-length v4, v4

    if-ge p1, v4, :cond_1

    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_BINOMIALS:[I

    aget v4, v4, p1

    if-le p0, v4, :cond_4

    .line 628
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    .line 646
    :cond_2
    return-wide v2

    :cond_3
    move v4, v6

    .line 623
    goto :goto_0

    .line 630
    :cond_4
    const-wide/16 v2, 0x1

    .line 631
    .local v2, "result":J
    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    array-length v4, v4

    if-ge p1, v4, :cond_5

    sget-object v4, Lcom/google/common/math/LongMath;->BIGGEST_SIMPLE_BINOMIALS:[I

    aget v4, v4, p1

    if-gt p0, v4, :cond_5

    .line 633
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 634
    sub-int v4, p0, v1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 635
    add-int/lit8 v4, v1, 0x1

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    if-gt v1, p1, :cond_2

    .line 641
    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->gcd(II)I

    move-result v0

    .line 642
    .local v0, "d":I
    div-int v4, v1, v0

    int-to-long v4, v4

    div-long/2addr v2, v4

    .line 643
    div-int v4, p0, v0

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 640
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_2
.end method

.method public static checkedAdd(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 482
    add-long v0, p0, p2

    .line 483
    .local v0, "result":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 484
    return-wide v0

    :cond_0
    move v4, v3

    .line 483
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static checkedMultiply(JJ)J
    .locals 12
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 507
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    xor-long v6, p0, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v1, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v1, v6

    xor-long v6, p2, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int v0, v1, v6

    .line 519
    .local v0, "leadingZeros":I
    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    .line 520
    mul-long v2, p0, p2

    .line 526
    :goto_0
    return-wide v2

    .line 522
    :cond_0
    const/16 v1, 0x40

    if-lt v0, v1, :cond_3

    move v1, v4

    :goto_1
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 523
    cmp-long v1, p0, v10

    if-ltz v1, :cond_4

    move v6, v4

    :goto_2
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, p2, v8

    if-eqz v1, :cond_5

    move v1, v4

    :goto_3
    or-int/2addr v1, v6

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 524
    mul-long v2, p0, p2

    .line 525
    .local v2, "result":J
    cmp-long v1, p0, v10

    if-eqz v1, :cond_1

    div-long v6, v2, p0

    cmp-long v1, v6, p2

    if-nez v1, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    invoke-static {v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    goto :goto_0

    .end local v2    # "result":J
    :cond_3
    move v1, v5

    .line 522
    goto :goto_1

    :cond_4
    move v6, v5

    .line 523
    goto :goto_2

    :cond_5
    move v1, v5

    goto :goto_3
.end method

.method public static checkedPow(JI)J
    .locals 12
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 537
    const-string v8, "exponent"

    invoke-static {v8, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 538
    const-wide/16 v8, -0x2

    cmp-long v8, p0, v8

    if-ltz v8, :cond_3

    move v9, v6

    :goto_0
    const-wide/16 v10, 0x2

    cmp-long v8, p0, v10

    if-gtz v8, :cond_4

    move v8, v6

    :goto_1
    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 539
    long-to-int v8, p0

    packed-switch v8, :pswitch_data_0

    .line 554
    :cond_0
    const-wide/16 v0, 0x1

    .line 556
    .local v0, "accum":J
    :cond_1
    :goto_2
    packed-switch p2, :pswitch_data_1

    .line 562
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 563
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    .line 565
    :cond_2
    shr-int/lit8 p2, p2, 0x1

    .line 566
    if-lez p2, :cond_1

    .line 567
    const-wide v2, 0xb504f333L

    cmp-long v2, p0, v2

    if-gtz v2, :cond_a

    move v2, v6

    :goto_3
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 568
    mul-long/2addr p0, p0

    goto :goto_2

    .end local v0    # "accum":J
    :cond_3
    move v9, v7

    .line 538
    goto :goto_0

    :cond_4
    move v8, v7

    goto :goto_1

    .line 541
    :pswitch_0
    if-nez p2, :cond_6

    .line 560
    :cond_5
    :goto_4
    :pswitch_1
    return-wide v2

    .line 541
    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_4

    .line 545
    :pswitch_2
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_5

    move-wide v2, v4

    goto :goto_4

    .line 547
    :pswitch_3
    const/16 v4, 0x3f

    if-ge p2, v4, :cond_7

    move v4, v6

    :goto_5
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 548
    shl-long/2addr v2, p2

    goto :goto_4

    :cond_7
    move v4, v7

    .line 547
    goto :goto_5

    .line 550
    :pswitch_4
    const/16 v8, 0x40

    if-ge p2, v8, :cond_8

    :goto_6
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 551
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_9

    shl-long/2addr v2, p2

    goto :goto_4

    :cond_8
    move v6, v7

    .line 550
    goto :goto_6

    .line 551
    :cond_9
    shl-long v2, v4, p2

    goto :goto_4

    .restart local v0    # "accum":J
    :pswitch_5
    move-wide v2, v0

    .line 558
    goto :goto_4

    .line 560
    :pswitch_6
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    goto :goto_4

    :cond_a
    move v2, v7

    .line 567
    goto :goto_3

    .line 539
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 556
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 494
    sub-long v0, p0, p2

    .line 495
    .local v0, "result":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 496
    return-wide v0

    :cond_0
    move v4, v3

    .line 495
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 20
    .param p0, "p"    # J
    .param p2, "q"    # J
    .param p4, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 324
    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    div-long v6, p0, p2

    .line 326
    .local v6, "div":J
    mul-long v12, p2, v6

    sub-long v10, p0, v12

    .line 328
    .local v10, "rem":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_1

    .line 373
    .end local v6    # "div":J
    :cond_0
    :goto_0
    return-wide v6

    .line 339
    .restart local v6    # "div":J
    :cond_1
    xor-long v12, p0, p2

    const/16 v14, 0x3f

    shr-long/2addr v12, v14

    long-to-int v12, v12

    or-int/lit8 v9, v12, 0x1

    .line 341
    .local v9, "signum":I
    sget-object v12, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 371
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 343
    :pswitch_0
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 346
    :pswitch_1
    const/4 v8, 0x0

    .line 373
    .local v8, "increment":Z
    :goto_2
    if-eqz v8, :cond_0

    int-to-long v12, v9

    add-long/2addr v6, v12

    goto :goto_0

    .line 343
    .end local v8    # "increment":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 349
    :pswitch_2
    const/4 v8, 0x1

    .line 350
    .restart local v8    # "increment":Z
    goto :goto_2

    .line 352
    .end local v8    # "increment":Z
    :pswitch_3
    if-lez v9, :cond_3

    const/4 v8, 0x1

    .line 353
    .restart local v8    # "increment":Z
    :goto_3
    goto :goto_2

    .line 352
    .end local v8    # "increment":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 355
    :pswitch_4
    if-gez v9, :cond_4

    const/4 v8, 0x1

    .line 356
    .restart local v8    # "increment":Z
    :goto_4
    goto :goto_2

    .line 355
    .end local v8    # "increment":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 360
    :pswitch_5
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 361
    .local v2, "absRem":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long/2addr v12, v2

    sub-long v4, v2, v12

    .line 364
    .local v4, "cmpRemToHalfDivisor":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_8

    .line 365
    sget-object v12, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_5

    const/4 v12, 0x1

    :goto_5
    sget-object v13, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_6

    const/4 v13, 0x1

    move v14, v13

    :goto_6
    const-wide/16 v16, 0x1

    and-long v16, v16, v6

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    :goto_7
    and-int/2addr v13, v14

    or-int v8, v12, v13

    .restart local v8    # "increment":Z
    goto :goto_2

    .end local v8    # "increment":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    move v14, v13

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    goto :goto_7

    .line 367
    :cond_8
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_9

    const/4 v8, 0x1

    .line 369
    .restart local v8    # "increment":Z
    :goto_8
    goto :goto_2

    .line 367
    .end local v8    # "increment":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_8

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static factorial(I)J
    .locals 2
    .param p0, "n"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 586
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 587
    sget-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/LongMath;->FACTORIALS:[J

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static fitsInInt(J)Z
    .locals 2
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 671
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gcd(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 436
    const-string v6, "a"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 437
    const-string v6, "b"

    invoke-static {v6, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 438
    cmp-long v6, p0, v8

    if-nez v6, :cond_1

    move-wide p0, p2

    .line 472
    .end local p0    # "a":J
    :cond_0
    :goto_0
    return-wide p0

    .line 442
    .restart local p0    # "a":J
    :cond_1
    cmp-long v6, p2, v8

    if-eqz v6, :cond_0

    .line 449
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 450
    .local v0, "aTwos":I
    shr-long/2addr p0, v0

    .line 451
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 452
    .local v1, "bTwos":I
    shr-long/2addr p2, v1

    .line 453
    :goto_1
    cmp-long v6, p0, p2

    if-eqz v6, :cond_2

    .line 461
    sub-long v2, p0, p2

    .line 463
    .local v2, "delta":J
    const/16 v6, 0x3f

    shr-long v6, v2, v6

    and-long v4, v2, v6

    .line 466
    .local v4, "minDeltaOrZero":J
    sub-long v6, v2, v4

    sub-long p0, v6, v4

    .line 469
    add-long/2addr p2, v4

    .line 470
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    shr-long/2addr p0, v6

    .line 471
    goto :goto_1

    .line 472
    .end local v2    # "delta":J
    .end local v4    # "minDeltaOrZero":J
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    shl-long/2addr p0, v6

    goto :goto_0
.end method

.method public static isPowerOfTwo(J)Z
    .locals 8
    .param p0, "x"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    cmp-long v2, p0, v6

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    and-long/2addr v4, p0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 6
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 117
    const-string v3, "x"

    invoke-static {v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 118
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    long-to-int v3, p0

    invoke-static {v3, p2}, Lcom/google/common/math/IntMath;->log10(ILjava/math/RoundingMode;)I

    move-result v2

    .line 137
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 121
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v2

    .line 122
    .local v2, "logFloor":I
    sget-object v3, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    aget-wide v0, v3, v2

    .line 123
    .local v0, "floorPow":J
    sget-object v3, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 139
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 125
    :pswitch_1
    cmp-long v3, p0, v0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 132
    :pswitch_2
    cmp-long v3, p0, v0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :pswitch_3
    sget-object v3, Lcom/google/common/math/LongMath;->HALF_POWERS_OF_10:[J

    aget-wide v4, v3, v2

    cmp-long v3, p0, v4

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static log10Floor(J)I
    .locals 6
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 152
    sget-object v3, Lcom/google/common/math/LongMath;->MAX_LOG10_FOR_LEADING_ZEROS:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    aget-byte v2, v3, v4

    .line 155
    .local v2, "y":I
    sget-object v3, Lcom/google/common/math/LongMath;->POWERS_OF_10:[J

    aget-wide v4, v3, v2

    sub-long v4, p0, v4

    const/16 v3, 0x3f

    ushr-long v0, v4, v3

    .line 160
    .local v0, "sgn":J
    long-to-int v3, v0

    sub-int v3, v2, v3

    return v3
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 6
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 76
    const-string v4, "x"

    invoke-static {v4, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 77
    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 100
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "impossible"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 79
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 83
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x3f

    .line 97
    :cond_0
    :goto_0
    return v3

    .line 87
    :pswitch_2
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x40

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    .line 94
    .local v2, "leadingZeros":I
    const-wide v4, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long v0, v4, v2

    .line 96
    .local v0, "cmp":J
    rsub-int/lit8 v3, v2, 0x3f

    .line 97
    .local v3, "logFloor":I
    cmp-long v4, p0, v0

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static mod(JI)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "m"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 395
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "m"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 416
    cmp-long v2, p2, v4

    if-gtz v2, :cond_0

    .line 417
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Modulus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be > 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_0
    rem-long v0, p0, p2

    .line 420
    .local v0, "result":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .restart local v0    # "result":J
    :cond_1
    add-long/2addr v0, p2

    goto :goto_0
.end method

.method public static pow(JI)J
    .locals 10
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/16 v8, 0x40

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x1

    .line 227
    const-string v6, "exponent"

    invoke-static {v6, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 228
    const-wide/16 v6, -0x2

    cmp-long v6, v6, p0

    if-gtz v6, :cond_0

    const-wide/16 v6, 0x2

    cmp-long v6, p0, v6

    if-gtz v6, :cond_0

    .line 229
    long-to-int v6, p0

    packed-switch v6, :pswitch_data_0

    .line 246
    :cond_0
    const-wide/16 v0, 0x1

    .line 247
    .local v0, "accum":J
    :goto_0
    packed-switch p2, :pswitch_data_1

    .line 253
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_6

    move-wide v4, v2

    :goto_1
    mul-long/2addr v0, v4

    .line 254
    mul-long/2addr p0, p0

    .line 246
    shr-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "accum":J
    :pswitch_0
    if-nez p2, :cond_2

    .line 251
    :cond_1
    :goto_2
    :pswitch_1
    return-wide v2

    :cond_2
    move-wide v2, v4

    .line 231
    goto :goto_2

    .line 235
    :pswitch_2
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    const-wide/16 v2, -0x1

    goto :goto_2

    .line 237
    :pswitch_3
    if-ge p2, v8, :cond_3

    shl-long v4, v2, p2

    :cond_3
    move-wide v2, v4

    goto :goto_2

    .line 239
    :pswitch_4
    if-ge p2, v8, :cond_5

    .line 240
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_4

    shl-long/2addr v2, p2

    goto :goto_2

    :cond_4
    shl-long/2addr v2, p2

    neg-long v2, v2

    goto :goto_2

    :cond_5
    move-wide v2, v4

    .line 242
    goto :goto_2

    .restart local v0    # "accum":J
    :pswitch_5
    move-wide v2, v0

    .line 249
    goto :goto_2

    .line 251
    :pswitch_6
    mul-long v2, v0, p0

    goto :goto_2

    :cond_6
    move-wide v4, p0

    .line 253
    goto :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 247
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 12
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 269
    const-string v6, "x"

    invoke-static {v6, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 270
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    long-to-int v4, p0

    invoke-static {v4, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v4

    int-to-long v2, v4

    .line 292
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v2

    .line 273
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->sqrtFloor(J)J

    move-result-wide v2

    .line 274
    .local v2, "sqrtFloor":J
    sget-object v6, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 294
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 276
    :pswitch_1
    mul-long v6, v2, v2

    cmp-long v6, v6, p0

    if-nez v6, :cond_2

    :goto_1
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 282
    :pswitch_2
    mul-long v4, v2, v2

    cmp-long v4, v4, p0

    if-eqz v4, :cond_0

    add-long/2addr v2, v10

    goto :goto_0

    .line 286
    :pswitch_3
    mul-long v6, v2, v2

    add-long v0, v6, v2

    .line 292
    .local v0, "halfSquare":J
    cmp-long v6, v0, p0

    if-ltz v6, :cond_3

    move v6, v4

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_4

    :goto_3
    or-int/2addr v4, v6

    if-nez v4, :cond_0

    add-long/2addr v2, v10

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static sqrtFloor(J)J
    .locals 10
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 301
    long-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-long v0, v6

    .line 303
    .local v0, "sqrt0":J
    div-long v6, p0, v0

    add-long/2addr v6, v0

    shr-long v4, v6, v8

    .line 304
    .local v4, "sqrt1":J
    cmp-long v6, v4, v0

    if-nez v6, :cond_0

    move-wide v2, v0

    .line 311
    .end local v0    # "sqrt0":J
    .local v2, "sqrt0":J
    :goto_0
    return-wide v2

    .line 308
    .end local v2    # "sqrt0":J
    .restart local v0    # "sqrt0":J
    :cond_0
    move-wide v0, v4

    .line 309
    div-long v6, p0, v0

    add-long/2addr v6, v0

    shr-long v4, v6, v8

    .line 310
    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    move-wide v2, v0

    .line 311
    .end local v0    # "sqrt0":J
    .restart local v2    # "sqrt0":J
    goto :goto_0
.end method
